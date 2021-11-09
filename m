Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4216444B916
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 23:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6435D6E44D;
	Tue,  9 Nov 2021 22:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C13A36E44D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 22:56:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="293392604"
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="293392604"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 14:56:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="642333190"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 09 Nov 2021 14:56:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Nov 2021 00:56:30 +0200
Date: Wed, 10 Nov 2021 00:56:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <YYr8npnRqA3yE+5u@intel.com>
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
 <20211020223339.669-5-ville.syrjala@linux.intel.com>
 <5d23af2820e2494aaa1648e0b64469db@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5d23af2820e2494aaa1648e0b64469db@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Use unlocked register
 accesses for LUT loads
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 08, 2021 at 08:59:31PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
> > Sent: Thursday, October 21, 2021 4:04 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Use unlocked register accesses for LUT
> > loads
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > We have to bash in a lot of registers to load the higher precision LUT modes. The
> > locking overhead is significant, especially as we have to get this done as quickly as
> > possible during vblank.
> > So let's switch to unlocked accesses for these. Fortunately the LUT registers are
> > mostly spread around such that two pipes do not have any registers on the same
> > cacheline. So as long as commits on the same pipe are serialized (which they are) we
> > should get away with this without angering the hardware.
> > 
> > The only exceptions are the PREC_PIPEGCMAX registers on ilk/snb which we don't
> > use atm as they are only used in the 12bit gamma mode. If/when we add support for
> > that we may need to remember to still serialize those registers, though I'm not sure
> > ilk/snb are actually affected by the same cacheline issue. I think ivb/hsw at least
> > were, but they use a different set of registers for the precision LUT.
> > 
> > I have a test case which is updating the LUTs on two pipes from a single atomic
> > commit. Running that in a loop for a minute I get the following worst case with the
> > locks in place:
> >  intel_crtc_vblank_work_start: pipe B, frame=10037, scanline=1081
> >  intel_crtc_vblank_work_start: pipe A, frame=12274, scanline=769
> >  intel_crtc_vblank_work_end: pipe A, frame=12274, scanline=58
> >  intel_crtc_vblank_work_end: pipe B, frame=10037, scanline=74
> > 
> > And here's the worst case with the locks removed:
> >  intel_crtc_vblank_work_start: pipe B, frame=5869, scanline=1081
> >  intel_crtc_vblank_work_start: pipe A, frame=7616, scanline=769
> >  intel_crtc_vblank_work_end: pipe B, frame=5869, scanline=1096
> >  intel_crtc_vblank_work_end: pipe A, frame=7616, scanline=777
> > 
> > The test was done on a snb using the 10bit 1024 entry LUT mode.
> > The vtotals for the two displays are 793 and 1125. So we can see that with the locks
> > ripped out the LUT updates are pretty nicely confined within the vblank, whereas
> > with the locks in place we're routinely blasting past the vblank end which causes
> > visual artifacts near the top of the screen.
> 
> Unprotected writes should be ok to use in lut updates. Looks good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> One side query though, what happens when we go for higher refresh rates like 300+,
> Some cases where vblank period is shrunk to as low as 8us (480Hz RR panels).

If the vblank is short enough then we're pretty much screwed and will
have to accept tearing. Maybe there's a little of bit of micro 
optimization left we could do to the .load_lut(). But I wouldn't expect
miracles from that since we still have to do the actual mmio, and that
we can't speed up.

Long ago I did have some numbers on how long each mmio access will
take on specific platforms but I don't recall the details anymore.
I guess it might be interesting to measure it again just to have
some idea on the lower bound, and then compare that to what we
currently achieve in .load_lut(). Would at least tell us if there's
any juice left in the tank.

And of course DSB might save us on new platforms since it should
be faster than mmio, but I've not done any measurements on it.
Should be interesting to find out how it performs.

-- 
Ville Syrjälä
Intel
