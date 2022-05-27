Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 698AD5366FF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 20:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA2D10E1A0;
	Fri, 27 May 2022 18:42:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182C010E198;
 Fri, 27 May 2022 18:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653676930; x=1685212930;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=h9irHQSQDKa4ZZ/PvMKpfPKceflYbQuqSyljaWS1FR8=;
 b=cOA6zfA/UVq2ZlmumtVQ5bUhkHmmNoOR5uVmOwm+5i/ycxfAcI+MQhyK
 02SNkQPQP3Sf05p+2jteyy1JwJr75pkXMwJUtmhpW+4AHWB98lnjdPBol
 WLqwxPsmumMI3MdKiBnuG+G7ldCNdOGcMCLVpnoUnaVvH6X3PPUi0xKT+
 0HykPZmEmpFgbEJjFcS+HXNEur6J9hcYlFaJeFXMHOim5dnee8OC0JTRr
 4ry6w8q1D/DtFtI97oyjKwBy1uKhrFiVQxAfcirVLAbDdaO+DhUPD2080
 I/nny3kdHoLS+TsFiZ6tkL5bhitdK6FlcQwB7LaWltHTD5k9W5Gv0Jd8U w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="335202304"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="335202304"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 11:42:06 -0700
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="528248425"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 11:42:06 -0700
Date: Fri, 27 May 2022 11:42:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YpEbfVS5y+yYUddP@mdroper-desk1.amr.corp.intel.com>
References: <20220524094339.1692212-1-tvrtko.ursulin@linux.intel.com>
 <Yo0bBxHBH8cZcnN4@mdroper-desk1.amr.corp.intel.com>
 <f37468b3-1066-ee4b-fb5b-7664fd180fd6@linux.intel.com>
 <Yo5v7/pLw4eF8xxw@mdroper-desk1.amr.corp.intel.com>
 <53ebd108-c9db-0673-f2c8-5a237dbf354a@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <53ebd108-c9db-0673-f2c8-5a237dbf354a@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Catch and log more unexpected
 values in DG1_MSTR_TILE_INTR
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
Cc: Intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 26, 2022 at 11:18:17AM +0100, Tvrtko Ursulin wrote:
> 
> On 25/05/2022 19:05, Matt Roper wrote:
> > On Wed, May 25, 2022 at 05:03:13PM +0100, Tvrtko Ursulin wrote:
> > > 
> > > On 24/05/2022 18:51, Matt Roper wrote:
> > > > On Tue, May 24, 2022 at 10:43:39AM +0100, Tvrtko Ursulin wrote:
> > > > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > > > 
> > > > > Catch and log any garbage in the register, including no tiles marked, or
> > > > > multiple tiles marked.
> > > > > 
> > > > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > > ---
> > > > > We caught garbage in DG1_MSTR_TILE_INTR with DG2 (actual value 0xF9D2C008)
> > > > > during glmark and more badness. So I thought lets log all possible failure
> > > > > modes from here and also use per device logging.
> > > > > ---
> > > > >    drivers/gpu/drm/i915/i915_irq.c | 33 ++++++++++++++++++++++-----------
> > > > >    drivers/gpu/drm/i915/i915_reg.h |  1 +
> > > > >    2 files changed, 23 insertions(+), 11 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > > > > index 73cebc6aa650..79853d3fc1ed 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_irq.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > > > > @@ -2778,24 +2778,30 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
> > > > >    	u32 gu_misc_iir;
> > > > >    	if (!intel_irqs_enabled(i915))
> > > > > -		return IRQ_NONE;
> > > > > +		goto none;
> > > > >    	master_tile_ctl = dg1_master_intr_disable(regs);
> > > > > -	if (!master_tile_ctl) {
> > > > > -		dg1_master_intr_enable(regs);
> > > > > -		return IRQ_NONE;
> > > > > +	if (!master_tile_ctl)
> > > > > +		goto enable_none;
> > > > > +
> > > > > +	if (master_tile_ctl & ~(DG1_MSTR_IRQ | DG1_MSTR_TILE_MASK)) {
> > > > > +		drm_warn(&i915->drm, "Garbage in master_tile_ctl: 0x%08x!\n",
> > > > > +			 master_tile_ctl);
> > > > 
> > > > I know we have a bunch of them already, but shouldn't we be avoiding
> > > > printk-based stuff like this inside interrupt handlers?  Should we be
> > > > migrating all these error messages over to trace_printk or something
> > > > similar that's safer to use?
> > > 
> > > Not sure - I kind of think some really unexpected and worrying situations
> > > should be loud and on by default. Risk is then spam if not ratelimited.
> > > Maybe we should instead ratelimit most errors/warnings coming for irq
> > > handlers?
> > 
> > It's not the risk of spam that's the problem, but rather that
> > printk-based stuff eventually calls into the console code to flush its
> > buffers.  That's way more overhead than you want in an interrupt handler
> > so it's bad on its own, but if you're using something slow like a serial
> > console, it becomes even more of a problem.
> 
> Is it a problem for messages which we never expect to see?

Kind of.  While not as catastrophic, it's the same argument for why we
don't use BUG() anymore...when the impossible does manage to happen
there's unnecessary collateral damage on things outside of graphics.  If
we're adding huge delays inside an interrupt handler (while other
interrupts are disabled) that impacts the system-wide usability, not
just our own driver.

I'd also argue that these messages actually are semi-expected.  Random
bits being set shouldn't happen, but in the world of dgpu's, we do
occasionally see cases where the PCI link itself goes down for reasons
outside our control and then all registers read back as 0xFFFFFFFF,
which will probably trigger error messages here (as well as a bunch of
other places).

> 
> > While the unexpected bits in the master tile register are strange and
> > may point to a bigger problem somewhere else, they're also harmless on
> > their own since we should just ignore those bits and only process the
> > valid tiles.
> 
> Yes, I was expecting that a patch belonging to multi-tile enablement would
> be incoming soon, which would be changing:
> 
> +	if (REG_FIELD_GET(DG1_MSTR_TILE_MASK, master_tile_ctl) !=
> +	    DG1_MSTR_TILE(0)) {
> +		drm_warn(&i915->drm, "Unexpected irq from tile %u!\n",
> +			 ilog2(REG_FIELD_GET(DG1_MSTR_TILE_MASK,
> +					     master_tile_ctl)));
> +		goto enable_none;
>  	}
> 
> From this patch, into something completely different like walking bit by
> bit, handling the present tiles, and warning on unexpected ones. What should
> remain though is warning on no tiles signaled (which what we saw, together
> with garbage in reserved bits).

Yeah.  Although I still feel the interrupt handler should really just be
flagging the errors so that the actual prints themselves can happen
outside the interrupt.

> 
> > > In this particular case at least DRM_ERROR with no device info is the odd
> > > one out in the entire file so I'd suggest changing at least that, if the
> > > rest of my changes is of questionable benefit.
> > 
> > Changing DRM_ERROR -> drm_err would probably be fine in the short term
> > since it doesn't really make us any worse off.  Changing to drm_warn
> > might not be great since we're generating a lot more lines of output and
> 
> Sorry I don't follow - why does replacing drm_err with drm_warn generate (a
> lot) more lines of output?

Sorry, my mistake; I had it in my mind that we were talking about a
drm_WARN_ON rather than just drm_warn (i.e., including a big stacktrace
and such).  DRM_ERROR -> drm_warn alone shouldn't have any extra
negative impact.

> 
> But it can be drm_err for all I care, I don't think we really have
> consistent story between errors and warnings in this area.
> 
> > probably multiplying the already bad overhead that shouldn't be
> > happening in an interrupt handler.  But if we could update the interrupt
> > handler to just save away the details and do the actual drm_warn later,
> > outside the interrupt handler code, that would be okay.  We should
> > probably work toward something like that for all of our interrupt
> > handler warning/error messages.
> 
> Not sure I agree - for messages which we don't expect to see it doesn't
> really matter that there will be overhead when they are hit. Presumably bad
> things are already happening there so spending effort to optimise those path
> is questionable.

Something bad is happening to graphics is we hit one of these cases.
But if we start doing prints while interrupts are disabled, we start
having more of a negative impact on the rest of the system too.


Matt

> 
> Regards,
> 
> Tvrtko

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
