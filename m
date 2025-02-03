Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E23F8A263AF
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 20:21:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E7010E151;
	Mon,  3 Feb 2025 19:21:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hcuQkpXO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE6A10E151
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 19:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738610510; x=1770146510;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Kn/thhXJ9cuWkEIMayhnxu5ynyDXMVO1uXMDyjEDEAo=;
 b=hcuQkpXOGf+mGtsbebq5n8mxjchp76toMrFmW7ty6uyDggXu11q6mrkB
 y59Nh0f9rNp+E03kqDRBkQ/dAk9+nG8KYl32HX5IkKi+/ryLI/O64FSIk
 idG72NnkDncPrujj22JMTuKj2q0PjPDlXxCnSSJtiusKHp4K5FgwoArdP
 lUX2fb8pcrVm8jpX1GGG2aXXqiWZVkD0wx7tw+WF21D89rq+Pi+rIKkK9
 gCpwVOJPBX3g4Kf8lvFe0ir/XT4SodYzw1hnb7LHaCqkI9ZTkqglLEzUP
 Yli1p2JUocOgQ2d2HPBuCjU8ArHu1Bt0q4GMzV4TVa9MPx3JrLZxuu/5z w==;
X-CSE-ConnectionGUID: PD94qgY+Q4i0Lfpqv3HsWg==
X-CSE-MsgGUID: CkIg8UYaQyO52/xoAejB0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="26721300"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="26721300"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 11:21:49 -0800
X-CSE-ConnectionGUID: iLKopaY9SgOQ/CZ24PWsRA==
X-CSE-MsgGUID: Nxwja1MKS2SFViDOh21AGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="141255286"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 11:21:47 -0800
Date: Mon, 3 Feb 2025 21:22:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>,
 Mohammed Thasleem <mohammed.thasleem@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6EXhDOE3Mx9ueCF@ideak-desk.fi.intel.com>
References: <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <173859479977.77773.12623605896722676495@intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
 <Z6DktvZQ-NzLnab9@intel.com>
 <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com>
 <Z6Dq8iF96I-nBkPh@intel.com>
 <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com>
 <Z6Dx4ypYV3NJVuf1@intel.com>
 <Z6D0BdYxiq8rLYnx@ideak-desk.fi.intel.com>
 <Z6D5rl5bcI1v675e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6D5rl5bcI1v675e@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 03, 2025 at 12:15:26PM -0500, Rodrigo Vivi wrote:
> > > > [...]
> > > >
> > > > The driver enabling DC6 is not an enough condition for DC6 being allowed
> > > > from the display side. Some display clock gating etc. configuration by
> > > > the driver could be blocking it. According to the HW team, DC5 being
> > > > entered while DC6 is enabled is a guarantee that DC6 is allowed from the
> > > > display side - i.e. the driver has configured everything correctly for
> > > > that.
> > > 
> > > Fair enough. So IGT test case would check directly if DC5 counter is
> > > increasing and DC6 is allowed.
> > > 
> > > Something as simple as this in the kernel code would tell that
> > > DC6 is enabled:
> > > 
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -1294,6 +1294,10 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> > >                 seq_printf(m, "DC5 -> DC6 count: %d\n",
> > >                            intel_de_read(display, dc6_reg));
> > >  
> > > +       seq_printf(m, "DC6 allowed: %s\n", str_yes_no((intel_de_read(display,
> > > +                                                                   DC_STATE_EN)
> > > +                                                     & 0x3) == 2));
> > > +
> > > 
> > > and
> > > 
> > > $ cat i915_dmc_info
> > > [snip]
> > > DC3 -> DC5 count: 286
> > > DC5 -> DC6 count: 0
> > > DC6 allowed: yes
> > > [snip]
> > > 
> > > $ cat i915_dmc_info
> > > [snip]
> > > DC3 -> DC5 count: 292
> > > DC5 -> DC6 count: 0
> > > DC6 allowed: yes
> > > [snip]
> > > 
> > > Thoughts?
> > 
> > The DC5 increment could've happened while DC6 was disabled by the driver.
> 
> Yes, it could... in general the dc6 bit would be zero, but right, there's
> a possible race.
> 
> But should we complicate things when we know that on the test case itself
> we are in full control of the modeset?! From the test perspective I believe
> this would be more than enough without complicating things.

Imo having a counter which works based on the condition that guarantees the
display to allow DC6, would help later in debugging.

> But well, if you really believe that we need to go further in the driver
> to cover that it is fine by me.
> 
> But just to ensure that we are in the same page, could you please open
> up a bit more of your idea on when to increase the dc5 sw counters
> in a way that we would ensure that we don't have race and that we
> get the dc6 allowed counter correctly?

Something like the following:

1. Right after the driver sets DC6_EN, it stores the DC5 HW counter's
   current value:
   dc5_start = dc5_current
2. Right before the driver clears DC6_EN, it updates the DC6 allowed
   counter:
   dc6_allowed += dc5_current - dc5_start
   dc5_start = dc5_current
3. When userspace reads the counters via debugfs the driver first
   updates dc6_allowed the same way as 2. did if DC6_EN is set.

> Btw, while doing this experiment I noticed that the debugfs and test
> also doesn't call that residency anyway and it is just count. So
> perhaps with your idea we don't need to change the debugfs interface.
