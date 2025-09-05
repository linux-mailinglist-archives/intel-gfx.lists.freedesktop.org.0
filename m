Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E359CB452D7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 11:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42E010EB53;
	Fri,  5 Sep 2025 09:17:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hWSPwEQ7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FD8010EB4E;
 Fri,  5 Sep 2025 09:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757063863; x=1788599863;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Vl8KTzFxdzsS8LQaVka/1jo5C0bYWpkIvGQrdYh/Gjo=;
 b=hWSPwEQ7l/osX1UgUdFy3aFfpA0kmVN4uI2NaJBsb9jxVRq2u+mVZSZO
 AHSeP952FXZsH2ri3dSOJOw7Lk+4ChsU+cDjssgdNgF0lzlhpVtw8Kffj
 3AO3Lbq+HQ78ucWkcGPWwmdy1QMTQDCKk6lpsK66V9XUfAq4aW1wdwMvb
 wpb5N8WcugmJT2YJ4fFqpZUTdM9QSSonjjQzG6LZBvrcXhDNLkmUWnVqk
 wPOJRvUMX6OVr5YP37KrDQY+VgS1m9pJzYadxOfaBWVT0u2CW+1GCdrSi
 cFb5Lc9i8pW5WnPwgCPvDE4LjkGC9sBNbdq8EpwlMjYr1jdbXCgycpSEo Q==;
X-CSE-ConnectionGUID: 9OXpZSDATZmxz5N5XJ/Imw==
X-CSE-MsgGUID: dRzdHYADRX2ajX+9OviZXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59480383"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59480383"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:17:43 -0700
X-CSE-ConnectionGUID: J5ZxlF4oQlC1dl0dWJcVmA==
X-CSE-MsgGUID: G6VlQa1oSXmZ7IDPBbykaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="176447103"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:17:41 -0700
Date: Fri, 5 Sep 2025 12:17:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 4/4] drm/i915/psr: Add poll for checking PSR is idle
 before starting update
Message-ID: <aLqqsljhhn0rCnO-@intel.com>
References: <20250905072708.2659411-1-jouni.hogander@intel.com>
 <20250905072708.2659411-5-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250905072708.2659411-5-jouni.hogander@intel.com>
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

On Fri, Sep 05, 2025 at 10:27:08AM +0300, Jouni Högander wrote:
> We are currently observing crc failures after we started using dsb for PSR
> updates as well. This seems to happen because PSR HW is still sending
> couple of updates using old framebuffers on wake-up.
> 
> Fix this by adding poll ensuring PSR is idle before starting update.
> 
> v2: pass new_crtc_state->dsb_commit to intel_psr_wait_for_idle_dsb
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c1a3a95c65f0..5dca7f96b425 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7271,6 +7271,9 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>  		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
>  						     state, crtc);
>  
> +		intel_psr_wait_for_idle_dsb(new_crtc_state->dsb_commit,
> +					    new_crtc_state);
> +
>  		if (new_crtc_state->use_dsb)
>  			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
>  
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
