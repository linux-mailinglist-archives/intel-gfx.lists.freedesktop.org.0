Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEC9BA8706
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Sep 2025 10:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF39A10E3CE;
	Mon, 29 Sep 2025 08:45:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kPmg+gNk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC2010E3CD;
 Mon, 29 Sep 2025 08:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759135524; x=1790671524;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RfaAZD3U5AQ2XgbIM5joozB1dlqGOLeRGk0qsgukQuY=;
 b=kPmg+gNk8wArUc7Zs7daduILbwRyGL73e+Pvo2aALVtJtGLsOlgSCosk
 rMxSPuOxKO/4VpCD2et3nBsPI7kkkkzajjfiF+Dk3sgETCQHuahhNZUIF
 C0ivKWteeyuEvgv5Zg/Y4GdUvArhAmjvwRAr3CVAWlG7TuNo6+d5q3JHd
 jtRfYlaHe8hUG2BAfcIjllCTjAg5Nyu2R/rR5EuCK3RcQ7bmFQeq0C429
 8ShY76+4e7dWd9FKBzU72vmbGv/LvtZIG8Rl5LiURgQ80VdFb5X7ngfDa
 TD8v0b1LPLaLiX0XFbg3O83FPnvllLd0LhJ0dpN49/Lz8GQ3XwGd38axd Q==;
X-CSE-ConnectionGUID: PUSliSMYTPy1P4hZ9I1VDQ==
X-CSE-MsgGUID: 4w/CuwxTSmKw4bYm6HA6Nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11567"; a="61262136"
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="61262136"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 01:45:23 -0700
X-CSE-ConnectionGUID: 6u6Dz56qQQuYK/oRu/U3Sw==
X-CSE-MsgGUID: A2FNLSHqR2Gbcprt6NkR0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,301,1751266800"; d="scan'208";a="182171209"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.198])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 01:45:23 -0700
Date: Mon, 29 Sep 2025 11:45:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
Message-ID: <aNpHHxXXFOEKDUmP@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
> +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct drm_display_mode *adjusted_mode =
> +		&crtc_state->hw.adjusted_mode;
> +	int vblank_delay = 0;
> +
> +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
> +
> +	adjusted_mode->crtc_vblank_start += vblank_delay;

The situation with crtc_vblank_start is already kinda broken,
and I think we need to fix that first somehow.

Currently crtc_vblank_start is assumed to be the vblank_start
for the fixed refresh rate case. That value can be different
from the variable refresh rate case whenever
always_use_vrr_tg()==false. On icl/tgl it's always different
due to the extra vblank delay, and also on adl+ it could be
different if we were to use an optimized guardband.

I think there are a few options how we might solve this:
1. keep crtc_vblank_start as is, and make sure every user of it
   gets adjusted to also deal with the vrr case correctly
2. enable always_use_vrr_tg() whenever there might be switch
   between vrr and fixed refresh rate, which I think would mean
   crtc_state->vrr.in_range==true.

I kinda like option 2 because then we'll be doing the vrr vs.
fixed refresh rate always the same way. However we haven't really
tested that mode of operation on the older platforms, so I'd
rather not bet all your work on that working. If we later run
into problems with that then we'd have to revert everything.

So I think we should start with option 1, adjust all the
crtc_vblank_start users approriately (I don't think there are
too many of them), and adjust crtc_vblank_start to match
the guardband only when always_use_vrr_tg()==true.

After that I think we might still have some potential issues/race
conditions around the actual vrr <-> fixed refresh rate switch.
Those might require more work later, or if we decide at that point
to try option 2 maybe we could sidestep some/all of them.

-- 
Ville Syrjälä
Intel
