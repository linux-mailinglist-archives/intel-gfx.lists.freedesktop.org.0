Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A72A4E428
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFDD810E244;
	Tue,  4 Mar 2025 15:49:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eRRtM28o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0863010E617;
 Tue,  4 Mar 2025 15:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741103377; x=1772639377;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=q9vFWzEqxs4hI1X3FYg8RQX0hYkLVooYK7qEjKENq5g=;
 b=eRRtM28oEs6CZLUxe18Xk65jUhnjaVAzRTOWNPWtgvyWJ+2kw/Wq9i05
 ZmXW64MEv1Y6wPsFs5+muRiVQKtUKXqGfkBXncKpjyX0RoSX/0mzvuwdF
 0+OP+/8PbeyCPwAZFnDwiexhRY4h3A7YUy0AHAX7XYbYZd3Y54fzRwCyK
 hbe9mlgnV1Ghhm2J9hAor4fepNauNxZ8hGD5K+7IU4fNQnZQw1KMZ18xX
 pw5JL32SXoFk3ZBbt110AbSXa7IJC6V/P+2jhianNs1KtCxqPFSWga1wH
 TrbiB9BI5Mw+XZn98f9AcytkgQxDdxAtfbbOHfyaWVFEkpAO368w6tjla A==;
X-CSE-ConnectionGUID: n5xtt7TaQa6LLdeI9SuLgw==
X-CSE-MsgGUID: ZPbz/AyISSudNSgRjQDPOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42156983"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="42156983"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:49:36 -0800
X-CSE-ConnectionGUID: eR+FaZOjQ6+f6CD2btOmYA==
X-CSE-MsgGUID: gSIjADN8Qse+eL7bCwG+wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123614657"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 04 Mar 2025 07:49:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Mar 2025 17:49:32 +0200
Date: Tue, 4 Mar 2025 17:49:32 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Add MMIO path for double-buffered
 LUT registers
Message-ID: <Z8chDMmvGGivEI4M@intel.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
 <20250225180905.1588084-2-chaitanya.kumar.borah@intel.com>
 <Z8HS36_mC1kNCN93@intel.com>
 <SJ1PR11MB61292C5FE06F53D9D1E904E9B9C82@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <SJ1PR11MB61292C5FE06F53D9D1E904E9B9C82@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Tue, Mar 04, 2025 at 02:43:06PM +0000, Borah, Chaitanya Kumar wrote:
> Thank you Ville for the review.
> 
> > -----Original Message-----
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Sent: Friday, February 28, 2025 8:45 PM
> > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Shankar,
> > Uma <uma.shankar@intel.com>
> > Subject: Re: [PATCH 1/2] drm/i915/display: Add MMIO path for double-
> > buffered LUT registers
> > 
> > On Tue, Feb 25, 2025 at 11:39:04PM +0530, Chaitanya Kumar Borah wrote:
> > > >From PTL, LUT registers are made double buffered. This helps us
> > > to program them in the active region without any concern of tearing.
> > > This particulary helps in case of displays with high refresh rates
> > > where vblank periods are shorter.
> > >
> > > This patch makes the following changes
> > >
> > > 	- Adds the macro HAS_DOUBLE_BUFFERED_LUT() to distinguish
> > > 	  platforms that have double buffered LUT registers.
> > >
> > > 	- Program LUT values in active region through
> > > 	  intel_pre_update_crtc()
> > >
> > > 	- Disable updating of LUT values during vblank.
> > >
> > > 	- Disable pre-loading of LUT values as they are no longer
> > > 	  single buffered.
> > >
> > > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_color.c          | 4 ++++
> > >  drivers/gpu/drm/i915/display/intel_crtc.c           | 4 +++-
> > >  drivers/gpu/drm/i915/display/intel_display.c        | 6 +++++-
> > >  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
> > >  4 files changed, 13 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > > b/drivers/gpu/drm/i915/display/intel_color.c
> > > index cfe14162231d..c3ee34b96c15 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > > @@ -2022,6 +2022,10 @@ static bool intel_can_preload_luts(struct
> > > intel_atomic_state *state,  {
> > >  	const struct intel_crtc_state *old_crtc_state =
> > >  		intel_atomic_get_old_crtc_state(state, crtc);
> > > +	struct intel_display *display = to_intel_display(crtc);
> > > +
> > > +	if (HAS_DOUBLE_BUFFERED_LUT(display))
> > > +		return false;
> > >
> > >  	return !old_crtc_state->post_csc_lut &&
> > >  		!old_crtc_state->pre_csc_lut;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > index 5b2603ef2ff7..927f9acf61c4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > @@ -432,10 +432,12 @@ static void intel_crtc_vblank_work(struct
> > kthread_work *base)
> > >  	struct intel_crtc_state *crtc_state =
> > >  		container_of(work, typeof(*crtc_state), vblank_work);
> > >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > +	struct intel_display *display = to_intel_display(crtc_state);
> > >
> > >  	trace_intel_crtc_vblank_work_start(crtc);
> > >
> > > -	intel_color_load_luts(crtc_state);
> > > +	if (!HAS_DOUBLE_BUFFERED_LUT(display))
> > 
> > Wrong place. You don't even want to schedule the vblank worker for this.
> > 
> 
> Ack.
> 
> > > +		intel_color_load_luts(crtc_state);
> > >
> > >  	if (crtc_state->uapi.event) {
> > >  		spin_lock_irq(&crtc->base.dev->event_lock);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 065fdf6dbb88..919e236a9650 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -6879,9 +6879,13 @@ static void intel_pre_update_crtc(struct
> > > intel_atomic_state *state,
> > >
> > >  	if (!modeset &&
> > >  	    intel_crtc_needs_color_update(new_crtc_state) &&
> > > -	    !new_crtc_state->use_dsb)
> > > +	    !new_crtc_state->use_dsb) {
> > >  		intel_color_commit_noarm(NULL, new_crtc_state);
> > >
> > > +		if (HAS_DOUBLE_BUFFERED_LUT(display))
> > > +			intel_color_load_luts(new_crtc_state);
> > 
> > Explanation missing on the double buffering behaviour of the LUT.
> > This now assumes that it's not self-arming, and therefore some other register
> > must be the arming register. Which register is it?
> > 
> 
> You are correct (took some brain workout😐). The assumption here that the LUT registers are not self-arming is wrong.
> They are self-arming and will latch on to HW at double buffer update point. I will add this to the commit message in the next version.
> 
> Now to ensure atomicity, that leaves us with two possibilities.
> 
> 	1. Write the LUT registers during vblank evasion critical section. While I have to profile it, this might not be possible because
> 	    of the number of registers that needs to be written.

Looking at some numbers I grabbed at some point (on tgl/adl/dg2)
the current (randomly chosen) 20usec vblank evasion should be
ok for ~1500-2000 registers, even with low cdclk/memory clock.

>  	2. Use double buffer stalling. This approach might carry the risk of stalling updates of other registers.

... but I think this is probably what we want to do. I think to
start we could enable the DB stall only for the LUT registers.
I presume we still have those "allow DB stall" bits strewn
about in various control registers? And I presume PTL now
has usable DB stall control (ie. some kind of per-pipe bits
rather than a single global bit)?

Bspec also seems to say that the double buffer swap isn't
immediate for the LUT, so we might need yet another scanline
evasion to make this 100% safe. I think I saw something
about ~500 cdclk cycles, and with a low cdclk of ~170 MHz
that would come out to about 3 usecs, which to me sounds
long enough to potentially be a problem.

Also once we have the basics of DB stall enabled, we could
start extending it to cover other hw resources to make
the critical section even leaner.

-- 
Ville Syrjälä
Intel
