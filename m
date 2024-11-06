Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 631BC9BF33B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F344E10E72C;
	Wed,  6 Nov 2024 16:29:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jmjy3/2A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD4D10E729;
 Wed,  6 Nov 2024 16:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730910575; x=1762446575;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=eluK9uvq6ECpTZRgWnxX4VZ7a97ZdByfP8dYpcSc/6Q=;
 b=Jmjy3/2Ak8UvB4D73bq+ONty51wduGrvCp0aiBbBlt5DgLrFGhAkTuky
 AX4q2N16UBFxGoT3GY6THYYS30GE6e1c87gjs9fo+e2Ikogd4UGTGC0rf
 4NR62KzqlYIM3OiCgQ50HHAvXDpl9/wOvWRHeNl8jL9AObcMfYGvSqCxV
 IdjLPSVOMqIAOJEG/LOvYHI4pbrzS/NtMMY61B0AaggEy4tXrqc/foA+D
 L5kLE3q2GFHBo9RcfeMMUy8lL5xHfjOoW79iV96YF/yVHpxSplSK550U4
 kysBIEqhJrGzblxjTUgaY2IhB+PR8RRBHdeKn+ahgoQXRhxv7UeFrbkp5 Q==;
X-CSE-ConnectionGUID: QW1RZ6V9RBqQTFo+S8jjDg==
X-CSE-MsgGUID: P4HaeC7aSpqdTsBw9xsyyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30876742"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30876742"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:29:34 -0800
X-CSE-ConnectionGUID: s9p1+RL0RKy0ZOB4kV7s8Q==
X-CSE-MsgGUID: xvc6/3k1SnOlP3QjkspP/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84162261"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.143])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:29:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
In-Reply-To: <20241106125100.852609-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106125100.852609-1-suraj.kandpal@intel.com>
Date: Wed, 06 Nov 2024 18:29:29 +0200
Message-ID: <87ses4fhqu.fsf@intel.com>
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

On Wed, 06 Nov 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> TRANS_DDI_FUNC_CTL asks us to disable hdcp line rekeying when not in
> hdcp 2.2 and we are not using an hdmi transcoder and it need to be
> enabled when we are using an HDMI transcoder to enable HDCP 1.4.
> We use intel_de_rmw cycles to update TRANS_DDI_FUNC_CTL register so
> we cannot depend on the value being 0 by default everytime which calls
> for seprate handling of HDCP 1.4 case.
>
> --v2
> -Use the exising function and modify it based on a bool rather than
> have a different function [Matt]
>
> --v3
> -No need for kzalloc [Jani]

The code still needs to make sense! You can't just remove allocation and
use whatever stack garbage rekey_reg happens to point at. Look at all
the other code that uses i915_reg_t. You can't possibly assume I
would've needed to say "it shouldn't be a pointer at all"?

BR,
Jani.

>
> Bspec: 69964, 50493, 50054
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 36 +++++++++++++----------
>  1 file changed, 21 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4e937fbba4d2..6ad5efc9711c 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -32,27 +32,31 @@
>  #define HDCP2_LC_RETRY_CNT			3
>  
>  static void
> -intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> -				      struct intel_hdcp *hdcp)
> +intel_hdcp_adjust_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				     struct intel_hdcp *hdcp,
> +				     bool enable)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> +	i915_reg_t *rekey_reg;
> +	u32 rekey_bit;
>  
>  	/* Here we assume HDMI is in TMDS mode of operation */
>  	if (encoder->type != INTEL_OUTPUT_HDMI)
>  		return;
>  
> -	if (DISPLAY_VER(display) >= 30)
> -		intel_de_rmw(display,
> -			     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> -			     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> -	else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
> -		 IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER))
> -		intel_de_rmw(display,
> -			     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> -			     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> -	else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER))
> -		intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> -			     0, HDCP_LINE_REKEY_DISABLE);
> +	if (DISPLAY_VER(display) >= 30) {
> +		*rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
> +		rekey_bit = XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
> +	} else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0, STEP_FOREVER) ||
> +		   IS_DISPLAY_VERx100_STEP(display, 2000, STEP_B0, STEP_FOREVER)) {
> +		*rekey_reg = TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder);
> +		rekey_bit = TRANS_DDI_HDCP_LINE_REKEY_DISABLE;
> +	} else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0, STEP_FOREVER)) {
> +		*rekey_reg = MTL_CHICKEN_TRANS(hdcp->cpu_transcoder);
> +		rekey_bit = HDCP_LINE_REKEY_DISABLE;
> +	}
> +
> +	intel_de_rmw(display, *rekey_reg, rekey_bit, enable ? 0 : rekey_bit);
>  }
>  
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
> @@ -1049,6 +1053,8 @@ static int intel_hdcp1_enable(struct intel_connector *connector)
>  		return ret;
>  	}
>  
> +	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp, true);
> +
>  	/* Incase of authentication failures, HDCP spec expects reauth. */
>  	for (i = 0; i < tries; i++) {
>  		ret = intel_hdcp_auth(connector);
> @@ -2062,7 +2068,7 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
>  		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>  
> -	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> +	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp, false);
>  
>  	ret = hdcp2_authenticate_and_encrypt(state, connector);
>  	if (ret) {

-- 
Jani Nikula, Intel
