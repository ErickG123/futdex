using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using futdex.Models;
using futdex.Data;

namespace futdex.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;
    private readonly AppDbContext _context;

    public HomeController(ILogger<HomeController> logger, AppDbContext context)
    {
        _logger = logger;
        _context = context;
    }

    public async Task<IActionResult> Index()
    {
        var times = await _context.Times
            .Include(t => t.Campeonato)
            .OrderBy(t => t.Nome)
            .ToListAsync();

        return View(times);
    }

    public async Task<IActionResult> Details(uint id)
    {
        var time = await _context.Times
            .Include(t => t.Campeonato)
            .FirstOrDefaultAsync(t => t.Numero == id);

        if (time == null)
            return NotFound();

        return View(time);
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
