Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 582259BE36D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 11:03:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDAB510E6A4;
	Wed,  6 Nov 2024 10:03:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AUuv3xI1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F7610E00B;
 Wed,  6 Nov 2024 10:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730887420; x=1762423420;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rORZ7DdPh1vCl4Z7tzyaSSHNvDeN/vsaiN+3v1f07Ec=;
 b=AUuv3xI1HMeFs39z3lWeDwYpyhZARglLYZueQjYJTG4cK8Fm1FqzrenA
 6rePz4kUN7YibmOE8hKbOcXHVJhgi2ZR1G7OzkUbAyHd2HgEiSGZK1Br3
 TG3YcbGImkn3zGtsgaH6bmXKfzO526PfsE1kZVh8u9wqGJ4Ngy100sui3
 7Bguq60uG5rNoG/0blc+NfRWuf1hufj6DwyDoL+fPADzQw2qlRCjhroyq
 O248EaVuefG0HKXuNqmiEQdmut5MdeN8ePor25ExNGLbRbygRX4R9b3/o
 KWr2HVS/S7MRTjDLybkPdS2jzUJ2bw3PlxQvhnWZCFMyy2Fc/ZKGYxN5B A==;
X-CSE-ConnectionGUID: a5Gd9vVvQFKgiVKxzy8zWA==
X-CSE-MsgGUID: qr8bnTnxToeePt6K96swIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="34603583"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="34603583"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 02:03:40 -0800
X-CSE-ConnectionGUID: FIxKBy/jRdiwe2RLJ0GFPg==
X-CSE-MsgGUID: Vn4bODQsRxGyvIT05QMhBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="88405050"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.143])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 02:03:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Handle HDCP Line Rekeying for HDCP 1.4
In-Reply-To: <20241106093840.847932-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106093840.847932-1-suraj.kandpal@intel.com>
Date: Wed, 06 Nov 2024 12:03:34 +0200
Message-ID: <87zfmcfzm1.fsf@intel.com>
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
> Bspec: 69964, 50493, 50054
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 41 ++++++++++++++---------
>  1 file changed, 26 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 4e937fbba4d2..0530cf855463 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -32,27 +32,36 @@
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
> +	rekey_reg = kzalloc(sizeof(*rekey_reg), GFP_KERNEL);

No, there's absolutely no reason to allocate this.

BR,
Jani.


> +	if (!rekey_reg)
> +		return;
> +
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
> +	kfree(rekey_reg);
>  }
>  
>  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
> @@ -1049,6 +1058,8 @@ static int intel_hdcp1_enable(struct intel_connector *connector)
>  		return ret;
>  	}
>  
> +	intel_hdcp_adjust_hdcp_line_rekeying(connector->encoder, hdcp, true);
> +
>  	/* Incase of authentication failures, HDCP spec expects reauth. */
>  	for (i = 0; i < tries; i++) {
>  		ret = intel_hdcp_auth(connector);
> @@ -2062,7 +2073,7 @@ static int _intel_hdcp2_enable(struct intel_atomic_state *state,
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
