Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DB270DA0D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 12:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D864E10E430;
	Tue, 23 May 2023 10:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7042910E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 10:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684836764; x=1716372764;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OxDPqLUTlAb+ZbHYR3M1swn0MAcKXCXhZVo+yKMjJUU=;
 b=K6xmQdCnzvdyJssQaHWPOGcxdIAmx/khb3VuJgJ9WRtFEp2wfpl82FV3
 tWwyCnQnDWM7G1OdIQQwYayCpiiG0JKS5MdmR1lE+63TUic+qe6BhHMqS
 74lCZqNsu/dE6zavRi1y73L3zjX62iThhNI2StFOEn90XqZ245+LgepNg
 VssY5I1Xi2snN4f6/oaWe9v9f9LTxQ7xbTdd1QnietOvuQHWCPrA97L3n
 +dV/7sxHCMUGFU+pQ94QXDvfotRXGoj0hn5Hz6xq4IjtgnrzVJAfQBikv
 oQdLrqWBqbXeZ2qZ0nKeHjFk1sN3PeV6RX9pYsXnQAiYVulgTHAouFHdw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="352042052"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="352042052"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:12:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="654321341"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="654321341"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 03:12:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230518094916.1142812-3-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230518094916.1142812-1-arun.r.murthy@intel.com>
 <20230518094916.1142812-3-arun.r.murthy@intel.com>
Date: Tue, 23 May 2023 13:12:39 +0300
Message-ID: <87y1lfl5k8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/display: global histogram
 restrictions
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

On Thu, 18 May 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> For global histogram the panel should be edp and should have pwm based
> backlight controller. Flags are updated accordingly.
>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index cd21b0ddbabb..975d6bdb59f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -17,12 +17,14 @@
>  #include "intel_crtc_state_dump.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
> +#include "intel_dp.h"
>  #include "intel_display.h"
>  #include "intel_display_power.h"
>  #include "intel_display_types.h"
>  #include "intel_modeset_setup.h"
>  #include "intel_pch_display.h"
>  #include "intel_pm.h"
> +#include "intel_global_hist.h"
>  
>  static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  					struct drm_modeset_acquire_ctx *ctx)
> @@ -309,6 +311,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
>  	struct intel_crtc *crtc = to_intel_crtc(encoder->base.crtc);
>  	struct intel_crtc_state *crtc_state = crtc ?
>  		to_intel_crtc_state(crtc->base.state) : NULL;
> +	struct intel_panel *panel;
>  
>  	/*
>  	 * We need to check both for a crtc link (meaning that the encoder is
> @@ -376,6 +379,15 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
>  
>  	if (HAS_DDI(i915))
>  		intel_ddi_sanitize_encoder_pll_mapping(encoder);
> +
> +	/* validate the global hist struct elements */
> +	if (intel_dp_is_port_edp(i915, encoder->port)) {
> +		crtc->global_hist->has_edp = true;
> +		panel = &connector->panel;
> +		if (panel->backlight.present == true)
> +			crtc->global_hist->has_pwm = true;
> +	}

Again, the dependency on eDP and backlight is unnecessary policy.

Side note, backlight being present doesn't mean "has pwm". It could be
some other kind of backlight as well.

BR,
Jani.

> +
>  }
>  
>  /* FIXME read out full plane state for all planes */

-- 
Jani Nikula, Intel Open Source Graphics Center
