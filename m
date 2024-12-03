Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E2C9E2353
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 16:35:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC82810EA59;
	Tue,  3 Dec 2024 15:35:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A9w410pB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B15110EA59
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 15:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733240121; x=1764776121;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FCqOADz4JWIglHFJAv7H0CfDcI8oft+1XNzNjQgNbCo=;
 b=A9w410pBs+LmAAt3RekuGC0RppguzVrxwMoM3jvVVlcJiWbu8jTVhWKb
 f+ERgVUrXoDxjo0soWsySCOrGxQk3afvyz9WQLas9fHRw+xm5xQi+5fFo
 syXiAQadylpRecuZUE0Xmnu5xRpelj8vnf8abcrOgXB3X8rsR3acBVkSF
 mhB2NhYENXMuNXhHfgIDUuqdmUZwMufNhWSl/UrVoc9BSJXlCX+5moaIU
 Rx5cE3q71tls1l9jX0Ubca6Bo/K2NXDk4R+LcUy8ZZ20i0dwO43RgVnwT
 F8PyU7wgXp91Si5cZcLmS0JO3FfNOyKX3hKCJZWwRScl9+ScBzaFsqNby w==;
X-CSE-ConnectionGUID: K2edihd/TCiy8HI42trkaw==
X-CSE-MsgGUID: yzSHQ0JUSli/9VeAuVfvXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="21042896"
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="21042896"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 07:35:19 -0800
X-CSE-ConnectionGUID: BZfdepOOTB6JiGBe3jXwmg==
X-CSE-MsgGUID: bTeda1OPQ+GWtj3tHXeX1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,205,1728975600"; d="scan'208";a="116718157"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 07:35:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2
 on HDMI
In-Reply-To: <20240416033918.567386-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240416033918.567386-2-suraj.kandpal@intel.com>
Date: Tue, 03 Dec 2024 17:35:13 +0200
Message-ID: <871pyo4w5q.fsf@intel.com>
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
> on HDMI TMDS operation for DISPLAY_VEY >= 14.
> WA: 16022217614
> Bspec: 49273
> Bspec: 69964
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h           |  1 +
>  2 files changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index d5ed4c7dfbc0..15af6e184ef8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,6 +30,20 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>  
> +static void
> +intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> +				      struct intel_hdcp *hdcp)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +
> +	if (encoder->type != INTEL_OUTPUT_HDMI)
> +		return;

Reading code, I came across this line, originating from commit
6a3691ca4799 ("drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
HDMI") i.e. this patch here. The function has been expanded since, but
this remains at the top of the function.

encoder->type == INTEL_OUTPUT_HDMI is only true for pre-DDI platforms,
but they don't have HDCP.

The entire function is a big NOP, and always has been.


BR,
Jani.


> +
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
> +			     TRANS_DDI_HDCP_LINE_REKEY_DISABLE, 1);
> +}
> +
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>  			      struct intel_connector *connector)
>  {
> @@ -2005,6 +2019,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
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
