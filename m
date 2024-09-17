Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD3E97B191
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 16:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A7A10E1C9;
	Tue, 17 Sep 2024 14:48:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DP22kXEf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0C710E1C9;
 Tue, 17 Sep 2024 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726584514; x=1758120514;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eHG5TwE1nj4X7HJQ+oqALhPubtSeIWW9MKHm3OL3QYg=;
 b=DP22kXEfjT32IPLCvCH6d3iLdJSLm4MGGy4gMAu3NWAlSwagaa6DQhWH
 fV1XX8TghANZgV+BNZbhp9SYXBTgelRBFfb+3QEymKCs5jUcfWOsgMZ9C
 OW6hbFxhWo1jd+n8O171DnShvG9Vbbi+wJjR9m7c1SHn4hrb/8iN/P5OK
 DmJCv5fBuB2ct/ka1IXvW0GgLRXw3rJKObQi2Aj6gVjGRX7J4/NcSbBd3
 1carPboIkrZ7ZmWrVYT0CD7jRn2046sFKC7nsTDSrT0hdE+Kd5v2qst1c
 ThOFXyHhW7gdFOHjHgTRFJmkvfk29sAgePU6sI6bqBl5ZcrFSR629uzAT A==;
X-CSE-ConnectionGUID: BE3/StvzS2+UWpMAy8zyJA==
X-CSE-MsgGUID: Rz0+o8kZT92HdCsjrPRGrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="36015405"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="36015405"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 07:48:33 -0700
X-CSE-ConnectionGUID: 24DMVO7pQrqtwaL3tlDXhg==
X-CSE-MsgGUID: HRaxeM83SlK4hTbfP4YKiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69311931"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Sep 2024 07:48:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Sep 2024 17:48:29 +0300
Date: Tue, 17 Sep 2024 17:48:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/display: remove small micro-optimizations
 in irq handling
Message-ID: <ZumWvdwTNqfIZuk6@intel.com>
References: <20240408125445.3227678-1-jani.nikula@intel.com>
 <lh5rutbeu54tjlp2o477nb4xuqyblgjh7nemgecizqrceidabc@hcuihs4fxh6n>
 <875xwfxapf.fsf@intel.com>
 <52605aa7-7067-4ba2-aed8-feeb7aa67032@ursulin.net>
 <877cbaczsk.fsf@intel.com> <ZumL60VMIs2Jf0w7@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZumL60VMIs2Jf0w7@intel.com>
X-Patchwork-Hint: comment
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 17, 2024 at 10:02:19AM -0400, Rodrigo Vivi wrote:
> On Tue, Sep 17, 2024 at 01:58:19PM +0300, Jani Nikula wrote:
> > On Thu, 18 Apr 2024, Tvrtko Ursulin <tursulin@ursulin.net> wrote:
> > > On 18/04/2024 10:49, Jani Nikula wrote:
> > >> On Wed, 17 Apr 2024, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > >>> On Mon, Apr 08, 2024 at 03:54:44PM GMT, Jani Nikula wrote:
> > >>>> The raw register reads/writes are there as micro-optimizations to avoid
> > >>>> multiple pointer indirections on uncore->regs. Presumably this is useful
> > >>>> when there are plenty of register reads/writes in the same
> > >>>> function. However, the display irq handling only has a few raw
> > >>>> reads/writes. Remove them for simplification.
> > >>>
> > >>> I think that comment didn't age well. Not to say there's something wrong
> > >>> with this commit, but just to make sure we are aware of the additional
> > >>> stuff going on and we if we are ok with that.
> > >>>
> > >>> using intel_de_read() in place of raw_reg_read() will do (for newer
> > >>> platforms):
> > >>>
> > >>> 	1) Read FPGA_DBG to detect unclaimed access before the actual read
> > >>> 	2) Find the relevant forcewake for that register, acquire and wait for ack
> > >>> 	3) readl(reg)
> > >>> 	4) Read FPGA_DBG to detect unclaimed access after the actual read
> > >>> 	5) Trace reg rw
> > >>>
> > >>> That's much more than a pointer indirection. Are we ok with that in the
> > >>> irq?  Also, I don't know why but we have variants to skip tracing (step
> > >>> 5 above), but on my books a disabled tracepoint is order of magnitudes
> > >>> less overhead than 1, 2 and 4.
> > >> 
> > >> Honestly, I don't really know.
> > >> 
> > >> The thing is, we have these ad hoc optimizations all over the place. Why
> > >> do we have the raw access in two places, but not everywhere in irq
> > >> handling? The pointer indirection thing really only makes sense if you
> > >> have a lot of access in a function, but that's not the case. You do have
> > >> a point about everything else.
> > >
> > > The "why only two" places is I think simply an artefact of refactoring 
> > > and code evolution. Initially all IRQ handling was in one function, then 
> > > later gen11 and display parts got split out as more platforms were 
> > > added. For example a3265d851e28 ("drm/i915/irq: Refactor gen11 display 
> > > interrupt handling").
> > >
> > > As for the original rationale, it was described in commits like:
> > >
> > > 2e4a5b25886c ("drm/i915: Prune gen8_gt_irq_handler")
> 
> Looking at this one it looks that the raw usage came in place to fix
> a macro issue, that we don't have anymore anyway.
> 
> > > c48a798a7447 ("drm/i915: Trim the ironlake+ irq handler")
> 
> Then, looking at this one, it sounds a good optimization.
> 
> > >
> > > Obviosuly, once a portion of a handler was/is extracted, pointer caching 
> > > to avoid uncore->regs reloads may not make full sense any more due 
> > > function calls potentially overshadowing that cost.
> > >
> > > As for unclaimed debug, I would say it is probably okay to not burden 
> > > the irq handlers with it, but if the display folks think a little bit of 
> > > extra cost in this sub-handlers is fine that would sound plausible to me 
> > > given the frequency of display related interrupts is low. 
> 
> Well, looking at the optimization above I always had the initial thought
> on the low frequency of display interrupts, because I thought about hotplugs.
> But perhaps an optimization in vblank ones would be desireable?
> 
> > > So for me 
> > > patch is fine if it makes the display decoupling easier.
> > >
> > >> What would the interface be like if display were its own module? We
> > >> couldn't just wrap it all in a bunch of macros and static inlines. Is
> > >> the end result that display irq handling needs to call functions via
> > >> pointers in another module? Or do we need to move the register level irq
> > >> handling to xe and i915 cores, and handle the display parts at a higher
> > >> abstraction level?
> > >
> > > AFAIR no trace variants were not for performance but to avoid log spam 
> > > when debugging stuff. From things like busy/polling loops.
> > 
> > Bumping a forgotten topic.
> > 
> > Ville, Rodrigo, are we okay with the changes here?
> 
> I am in favor of this patch. Let's unify things. But perhaps study if
> we need as a follow-up some optimization in vblank or any other display
> irq and get that done inside intel_de_ mmio helpers?!

There are probaly a lot of things to think about wrt. 
the register accessors:
- FPGA_DBG only detects display registers IIRC, so
  could perhaps avoid that stuff at build time for GT regs
- forcewake only affects GT so could avoid that 
  completely at build time for display regs
- the gsi_offset stuff could again be bypassed at build
  time for display regs. it generates rather ugly assembly
  with an extra branch for every mmio access. It should really
  be part of the register offset macros, but I guess no one wanted
  to update all of them?
- tracepoints generate a lot of extra junk so all the display
  functions that write a lot of registers look pretty horrendous
  on asm level, and often the compiler just emits a non-inline
  version of intel_de_write_fw() anyway, so you end up with a
  copy in pretty much every compilation unit, in which case it
  would be better to just not have it as a static inline.
- the "access to same cacheline hangs the machine" hw
  issues on hsw era hw needs the spinlock to serialize,
  but I'm not sure if this even affects all the registers
  or just some subset of them

But yeah, if we want to optimize things I think it'd be nice
if we could achieve most of it without so many diffrent ways
of doing this stuff, especially as we've not take any kind of
consistent approach of when to use which mechanism.

I have occasionally thought that maybe all irq handlers should
stick to unlocked accesses as an optimization, but again, not
100% sure if that's safe wrt. the hsw hang issue. It'd also
mean not detecting unclaimed register accesses directly from
irq handlers. I suppose one option would be to the checks
just once around the irq handler?

Anyways, IMO plow ahead for now.
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
