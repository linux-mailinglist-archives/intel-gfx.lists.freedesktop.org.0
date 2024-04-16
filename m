Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF6A8A668F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 10:58:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB0610EF2D;
	Tue, 16 Apr 2024 08:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UVO6KmG6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4008E10EF2D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 08:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713257879; x=1744793879;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Eb8Sf5WeikMMrBR0rfvWuKohWO4XZ1yl+RhxQmo5GjA=;
 b=UVO6KmG6XTuvHPP68WkZIiZmfJzHBILBmtElhddFx+JY4sDmkciTfNPK
 KLbyty1hcsA8iRE4WQ6hTaue+rw45wNVOBz6x+p04AXtm+VIUymb9iUl/
 MA1x/TOfLv/yjNI+SUV0P9Fo7YExoPy8BbgCpwBJbzOVorYjdDWwebgGQ
 3g0ZMnl0S2AhnV39xDIapuhtXRyB59Ezy0GJ3sLFUAwH9yZLWifUMBLeE
 COIj4TfILdtCcXfjSAcmvjNrVKsELHq6sMgXxNKshdmz4VgO5X6r0yUTO
 xkpnnqBKOADSK0ljsNWJ725g2sNW1pRxzahVLQjekqN634Bl1ew5kwhcW w==;
X-CSE-ConnectionGUID: hGDwhb/nR6Cb44i1SvENew==
X-CSE-MsgGUID: vlHmKN8FQMi9vI7T4uhmqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="12460081"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="12460081"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 01:57:58 -0700
X-CSE-ConnectionGUID: 4P679y9LTB+mEby1iD3UGA==
X-CSE-MsgGUID: YdDSWbW+SdyHgBd5KXh3XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="26609211"
Received: from martakit-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.100])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 01:57:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2
 on HDMI
In-Reply-To: <20240416080917.625155-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240416033918.567386-2-suraj.kandpal@intel.com>
 <20240416080917.625155-2-suraj.kandpal@intel.com>
Date: Tue, 16 Apr 2024 11:57:54 +0300
Message-ID: <87plupznu5.fsf@intel.com>
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

On Tue, 16 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Disable HDCP Line Rekeying when HDCP ver > 1.4 and when we are
> on HDMI TMDS operation for DISPLAY_VER >= 14.
>
> --v2
> -Wa to be mentioned in comments not in commit message [Jani]
> -Remove blankline [Jani]
>
> Bspec: 49273
> Bspec: 69964
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 22 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h           |  1 +
>  2 files changed, 23 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index d5ed4c7dfbc0..4b1833742245 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,6 +30,26 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>  
> +/*
> + * WA: 16022217614
> + * Disable HDCP Line Rekeying when HDCP ver > 1.4
> + * and when we are on HDMI TMDS operation
> + * for DISPLAY_VEY >= 14.

Sorry to be nitpicking here, but we really don't want to duplicate in
comments what the code is already saying.

BR,
Jani.

> + */
> +static void
> +intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				      struct intel_hdcp *hdcp)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +
> +	if (encoder->type != INTEL_OUTPUT_HDMI)
> +		return;
> +
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
> +			     TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 1);
> +}
> +
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>  			      struct intel_connector *connector)
>  {
> @@ -2005,6 +2025,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
>  		    connector->base.base.id, connector->base.name,
>  		    hdcp->content_type);
>  
> +	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> +
>  	ret = hdcp2_authenticate_and_encrypt(state, connector);
>  	if (ret) {
>  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed. (%d)\n",
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3f34efcd7d6c..fbf4623cd536 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5630,6 +5630,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)

-- 
Jani Nikula, Intel
