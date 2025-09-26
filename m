Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CB0BA2EE8
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 10:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B28110E9F6;
	Fri, 26 Sep 2025 08:24:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VY9phcuB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FF4D10E9F6;
 Fri, 26 Sep 2025 08:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758875053; x=1790411053;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GjxIBpDdrgv0CjXXGhWJZf7NhCEKUJOUVcW8EbJQeBg=;
 b=VY9phcuBzRt+Qi+TBUHgdOJCzqnNJGFHBvI4YYOhJMnhMckvrrMnUqKe
 gGSbZnx/MoAYsccU2OgLAHD9fFPdwVbEFoZHH0lplj1SL/xKNDimL2i1B
 ohralOVOk1Tkb2H0X6ZLGsFebSt/tcr6qTTne6tlpLsEaDEthmErAT0aC
 fEQvA4+DD12m5/Rh2SNwUWNrZPaLCESr4/OXtmNGuivuL5ygFlQacQKCr
 r6sZ/y5JI+GtlxSov6XLhqViSUeCKmKhRqarkT6WvgSZ+HbZqvHLcwOpL
 cVCT+2TKfzCHFLqeGCdUVjJsdALSKGZi6u9YOStY4rozhJXiSFhibmOit g==;
X-CSE-ConnectionGUID: CsiXnQjDSUm3bjX3R9gcrg==
X-CSE-MsgGUID: WVbpTaLcRWSjUBVzLpstKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11564"; a="71894217"
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="71894217"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 01:24:13 -0700
X-CSE-ConnectionGUID: do3zDz+uRcqrEFcdRMYbdg==
X-CSE-MsgGUID: /WzLeV9/TVaeglIVllwmMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="178316321"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2025 01:24:10 -0700
Date: Fri, 26 Sep 2025 11:24:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display: Extend i915_display_info with Type-C
 port details
Message-ID: <aNZNqOni0az7GUqK@intel.com>
References: <20250925235153.2091404-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250925235153.2091404-1-khaled.almahallawy@intel.com>
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

On Thu, Sep 25, 2025 at 04:51:53PM -0700, Khaled Almahallawy wrote:
> Expose key Type-C port data in i915_display_info to make it easier to
> understand the port configuration and active mode, especially whether
> the link is in DP-Alt or TBT-Alt, without having to scan kernel logs.
> 
> Tested in DP-Alt, TBT-Alt, SST, and MST.
> 
> Expected output:
> 
> [CONNECTOR:290:DP-2]: status: connected
> 	TC Port: E/TC#2 mode: tbt-alt pin assignment: - max lanes: 4
> 	physical dimensions: 600x340mm
> ...
> [CONNECTOR:263:DP-5]: status: connected
> 	TC Port: G/TC#4 mode: dp-alt pin assignment: C max lanes: 4
> 	physical dimensions: 610x350mm
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  4 ++++
>  drivers/gpu/drm/i915/display/intel_tc.c              | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_tc.h              |  3 +++
>  3 files changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 10dddec3796f..6687fc18e1f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -47,6 +47,7 @@
>  #include "intel_psr_regs.h"
>  #include "intel_vdsc.h"
>  #include "intel_wm.h"
> +#include "intel_tc.h"
>  
>  static struct intel_display *node_to_intel_display(struct drm_info_node *node)
>  {
> @@ -254,6 +255,9 @@ static void intel_connector_info(struct seq_file *m,
>  	if (connector->status == connector_status_disconnected)
>  		return;
>  
> +	if (intel_encoder_is_tc(intel_attached_encoder(intel_connector)))
> +		intel_tc_info(m, intel_attached_dig_port(intel_connector));
> +
>  	seq_printf(m, "\tphysical dimensions: %dx%dmm\n",
>  		   connector->display_info.width_mm,
>  		   connector->display_info.height_mm);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index c4a5601c5107..4cd7ccac28b7 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1703,6 +1703,16 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
>  	mutex_unlock(&tc->lock);
>  }
>  
> +void intel_tc_info(struct seq_file *m,  struct intel_digital_port *dig_port)

Please use drm_printer instead of seq_file so this can be reused
elsewhere.

> +{
> +	struct intel_tc_port *tc = to_tc_port(dig_port);
> +
> +	seq_printf(m, "\tTC Port: %s mode: %s pin assignment: %c max lanes: %d\n", tc->port_name,
> +		   tc_port_mode_name(tc->mode),
> +		   pin_assignment_name(tc->pin_assignment),
> +		   tc->max_lane_count);
> +}
> +
>  /*
>   * The type-C ports are different because even when they are connected, they may
>   * not be available/usable by the graphics driver: see the comment on
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
> index fff8b96e4972..3e983d1cc0b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc.h
> @@ -7,6 +7,7 @@
>  #define __INTEL_TC_H__
>  
>  #include <linux/types.h>
> +#include <linux/seq_file.h>
>  
>  struct intel_crtc_state;
>  struct intel_digital_port;
> @@ -113,4 +114,6 @@ void intel_tc_port_cleanup(struct intel_digital_port *dig_port);
>  
>  bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port);
>  
> +void intel_tc_info(struct seq_file *m,  struct intel_digital_port *dig_port);
> +
>  #endif /* __INTEL_TC_H__ */
> -- 
> 2.43.0

-- 
Ville Syrjälä
Intel
