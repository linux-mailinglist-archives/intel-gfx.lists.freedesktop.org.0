Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE61C875164
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 15:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC74910F375;
	Thu,  7 Mar 2024 14:08:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JGT76lyk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3654610EC80
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 14:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709820534; x=1741356534;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=C12GveLfP3S5KvALIozJTMCm1+ljyO2JJbN8x+zRs8Q=;
 b=JGT76lykRP3XiQisfleqUBhvWzpvAqJ+fBRLwzoB8htIMetNaiXOE5Z2
 UsTxytNwgKuubzVI0dLfgzsN0eHVjAG/PdzZ1uu/ek59qfXsmTjD5xafW
 ndE9dTw9smQsEx27HNlRO2wUzARbm/KJCWlmxBDkmn70WvFfUOdHvtQDg
 XuZtHhEojhhDgWAVpQFqKHn5EevgzsUqAZDYJS2iKVzbghq2sH55SeA3d
 hLPEd+vnVa6qmgyXsPPoomYXUVFQ/0aWHK4YUtUwegjK8gNbkbh3szLir
 RkErqz5hheU8o8Gc1lu8Cfw/kHUK2nFAltR2g+WS44KJ7876LuyLLviBS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="4417548"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; 
   d="scan'208";a="4417548"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 06:08:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="10541428"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 06:08:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Mitul
 Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [V2 1/2] drm/i915/drrs: Refactor CPU transcoder DRRS check
In-Reply-To: <20240228055502.2857819-1-bhanuprakash.modem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240227123833.2799647-1-bhanuprakash.modem@intel.com>
 <20240228055502.2857819-1-bhanuprakash.modem@intel.com>
Date: Thu, 07 Mar 2024 16:08:48 +0200
Message-ID: <87h6hiw2vj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 28 Feb 2024, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
> Rename cpu_transcoder_has_drrs() to intel_cpu_transcoder_has_drrs()
> and make it as non-static, therefore it can be re-used.
>
> V2:
>  - Move helpers to intel_drrs.[ch] (Jani)
>  - Fix commit message (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>

Pushed to drm-intel-next with some checkpatch fixes.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 12 ++----------
>  drivers/gpu/drm/i915/display/intel_drrs.c |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_drrs.h |  3 +++
>  3 files changed, 14 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6ece2c563c7a..0f3cd072a8fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -67,6 +67,7 @@
>  #include "intel_dp_tunnel.h"
>  #include "intel_dpio_phy.h"
>  #include "intel_dpll.h"
> +#include "intel_drrs.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdmi.h"
> @@ -2683,15 +2684,6 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
>  		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
>  }
>  
> -static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
> -				    enum transcoder cpu_transcoder)
> -{
> -	if (HAS_DOUBLE_BUFFERED_M_N(i915))
> -		return true;
> -
> -	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
> -}
> -
>  static bool can_enable_drrs(struct intel_connector *connector,
>  			    const struct intel_crtc_state *pipe_config,
>  			    const struct drm_display_mode *downclock_mode)
> @@ -2714,7 +2706,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
>  	if (pipe_config->has_pch_encoder)
>  		return false;
>  
> -	if (!cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
> +	if (!intel_cpu_transcoder_has_drrs(i915, pipe_config->cpu_transcoder))
>  		return false;
>  
>  	return downclock_mode &&
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 169ef38ff188..4743495ad41f 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -63,6 +63,15 @@ const char *intel_drrs_type_str(enum drrs_type drrs_type)
>  	return str[drrs_type];
>  }
>  
> +bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
> +				   enum transcoder cpu_transcoder)
> +{
> +	if (HAS_DOUBLE_BUFFERED_M_N(i915))
> +		return true;
> +
> +	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
> +}
> +
>  static void
>  intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
>  				     enum drrs_refresh_rate refresh_rate)
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
> index 8ef5f93a80ff..d0af091ed4c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.h
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.h
> @@ -9,12 +9,15 @@
>  #include <linux/types.h>
>  
>  enum drrs_type;
> +enum transcoder;
>  struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_connector;
>  
> +bool intel_cpu_transcoder_has_drrs(struct drm_i915_private *i915,
> +			   enum transcoder cpu_transcoder);
>  const char *intel_drrs_type_str(enum drrs_type drrs_type);
>  bool intel_drrs_is_active(struct intel_crtc *crtc);
>  void intel_drrs_activate(const struct intel_crtc_state *crtc_state);

-- 
Jani Nikula, Intel
