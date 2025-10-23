Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C204C02C78
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 19:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E909610E002;
	Thu, 23 Oct 2025 17:44:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UB4vfb2g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3328E10E002;
 Thu, 23 Oct 2025 17:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761241476; x=1792777476;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=s0WQKw48Q8iL+0nvUH2n7yO9tPMNkQIyZ3LJ5FSHbi4=;
 b=UB4vfb2gwdco8fyEuJG8uTJPliJ7/7/KmWX3peYSXKYGChU9vbFnjwuE
 euJ0MJqf1mXybhW3K5mEvaF0A41+Lk2C3K4fen8uUrMPVdRpaer/vr1++
 kn5J69XZiWDyuR1bzL10EyMWW10E+x6/4B+4nrxMdxIANP7DBzz6vIM4h
 wmDSl6WwX7T9yeQTj5h1qKGMTxb7EkrqsLrvFiX86nzq24HjPn60XiKAm
 gTOJ4aDmx2NMhCk6Fdxj6lYYwtByIFE/M4CBpE8NUEdHNKL39MXlWG8ZF
 JbhAWiZkYWH24FTsVvjh9Z9TtrLcrnyHsr20b+fmpgHcQz4UY+DS3kzMY g==;
X-CSE-ConnectionGUID: SILhhioDRB2scj/gUwxIbQ==
X-CSE-MsgGUID: SjETX9JOQ4Sqaho+r+aZwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="86048998"
X-IronPort-AV: E=Sophos;i="6.19,250,1754982000"; d="scan'208";a="86048998"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 10:44:36 -0700
X-CSE-ConnectionGUID: 1carbm+uRqq7kY+VqCn5YA==
X-CSE-MsgGUID: YQQnVDqdQz+qBR+PZI6VNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,250,1754982000"; d="scan'208";a="221412836"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.153])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 10:44:34 -0700
Date: Thu, 23 Oct 2025 20:44:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/9] drm/i915: Introduce a new intel_atomic_check_crtcs()
Message-ID: <aPppf5FvsyR4dsHz@intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
 <20251017161417.4399-5-ville.syrjala@linux.intel.com>
 <de9354b383461b5eae6ab301cf5f7fe833200310.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <de9354b383461b5eae6ab301cf5f7fe833200310.camel@coelho.fi>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Oct 23, 2025 at 03:21:49PM +0300, Luca Coelho wrote:
> On Fri, 2025-10-17 at 19:14 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add a new intel_atomic_check_crtcs() that gets called fairly
> > early during intel_atomic_check() and start collecting stuff
> > into it from elsewhere. For now we can suck in the
> > intel_crtc_min_cdclk() stiff.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 17 +++++++++++++++--
> >  1 file changed, 15 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 89f63c3b1ecd..211761c5b72a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5746,6 +5746,18 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
> >  		new_crtc_state->update_pipe = true;
> >  }
> >  
> > +static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
> 
> Minor nitpick: this doesn't seem to be _checking_ crtcs, but assigning
> min_cdclk, so the function name is a bit misleading? Or are you
> planning to add more actual checks here?

The whole foo_check() naming pretty much comes from the fact
that it all gets called from the .atomic_check() hook
(intel_atomic_check() for us).

We'be been more or less moving towards just calling various
intel_foo_atomic_check() functions from there, and having those
do whatever they need to do. So perhaps I should have called
these intel_crtc_atomic_check*() as well, but that name was
already taken by the single crtc variant (what is now
becoming intel_crtc_atomic_check_late()).

Yeah, naming is hard.

> 
> Of course it aligns with the _check_crtcs_late() that you just added,
> so regardless of whether you decide to change this:
> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.
> 
> 
> > +{
> > +	struct intel_crtc_state *new_crtc_state;
> > +	struct intel_crtc *crtc;
> > +	int i;
> > +
> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> > +		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
> > +
> > +	return 0;
> > +}
> > +
> >  static int intel_atomic_check_crtcs_late(struct intel_atomic_state *state)
> >  {
> >  	struct intel_display *display = to_intel_display(state);
> > @@ -6449,8 +6461,9 @@ int intel_atomic_check(struct drm_device *dev,
> >  	if (ret)
> >  		goto fail;
> >  
> > -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> > -		new_crtc_state->min_cdclk = intel_crtc_min_cdclk(new_crtc_state);
> > +	ret = intel_atomic_check_crtcs(state);
> > +	if (ret)
> > +		goto fail;
> >  
> >  	ret = intel_compute_global_watermarks(state);
> >  	if (ret)

-- 
Ville Syrjälä
Intel
