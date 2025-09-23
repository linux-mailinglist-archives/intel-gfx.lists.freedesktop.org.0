Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 015A4B9627F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:12:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912F010E621;
	Tue, 23 Sep 2025 14:12:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0G6O9UH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 363E710E621;
 Tue, 23 Sep 2025 14:12:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758636737; x=1790172737;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=q/MvxRT1OLPG+AvMBX8qXnmvelJzi9KCh+dC41cILNk=;
 b=K0G6O9UHl8EnFb4vkP4mEJxr4MKiC1B1gdvI0yFoOvoiKee3gizr49aO
 FizeItLyatp65zz3J2zWjEI6w8uRoTRzVtGkNv6RO5RLfI/90nhnWZyH+
 n47xIRzpL36672W/83sAzEMVUkMfVCSNsnFBMKVELzu+CEve4RbvK5/Sy
 aWQLPhlrtRLhlP1JgSVkxU9+eDYo0uSXQhD+1CVxGFlW2uyS+eGuS1k9P
 /WtXXph4+3U15ZcJtpH98s0xzFfNdiHNP4bhSL169Y+wHRAcz+gJtTF97
 dzZMY0qZx6R+ujOUhv+A+V2ypdlRvqvKEqoPfe3RM421RE3v25R938/pX A==;
X-CSE-ConnectionGUID: 8KkRS8ABQg6qlDzTrOMDcQ==
X-CSE-MsgGUID: 2r17QBNkTSGCWL88OCV9Iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60857615"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60857615"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:12:17 -0700
X-CSE-ConnectionGUID: b/iuo7C2Sb6Xio3mUFpvSg==
X-CSE-MsgGUID: 7BvJk3mAR4azBk5lupfqnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="182039453"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:12:15 -0700
Date: Tue, 23 Sep 2025 17:12:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/9] drm/i915/vrr: Use SCL for computing guardband
Message-ID: <aNKqvLIGGWSLWGLC@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
 <20250923131043.2628282-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250923131043.2628282-5-ankit.k.nautiyal@intel.com>
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

On Tue, Sep 23, 2025 at 06:40:38PM +0530, Ankit Nautiyal wrote:
> For now guardband is equal to the vblank length so ideally it should be
> computed as difference between the vmin vtotal and vactive. However
> since we are having few lines as SCL, we need to account for this while
> computing the guardband.
> 
> Since the vblank start is moved by SCL lines from the vactive, the delta
> between the vmin vtotal and new vblank start was used to account for this.
> Now that SCL is explicitly tracked using the `set_context_latency` member,
> use it directly in the guardband calculation.
> 
> In the future, when the guardband is shortened or optimized, we may need
> to factor in both the change in the vblank start and SCL lines. For now,
> explicitly accounting for SCL is sufficient.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 698b33b5b326..1b90eaa6a776 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -418,7 +418,9 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>  		return;
>  
>  	crtc_state->vrr.guardband =
> -		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> +		crtc_state->vrr.vmin -
> +		adjusted_mode->vdisplay -

Should be adjusted_mode->crtc_vdisplay
                         ^^^^^

With that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>


> +		crtc_state->set_context_latency -
>  		intel_vrr_extra_vblank_delay(display);
>  
>  	if (DISPLAY_VER(display) < 13) {
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
