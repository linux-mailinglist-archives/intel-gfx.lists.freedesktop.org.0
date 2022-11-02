Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D97616B51
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:56:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7F510E540;
	Wed,  2 Nov 2022 17:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D459D10E530
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667411774; x=1698947774;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jd3tNzOUX794Ji+WETVsWHsSceCv+3SjhEt0d0clooY=;
 b=g4t387OH8dE+0GMcdEG+3Tp4RzcEEFoWOhiRl6kDq0QpISMd76Nlc6fh
 qlp6Sy91OZYPhCkLXW1hlly1vdTVTF4ddFvy5FaF5q5MqIvgJswNGvhNy
 yxaXw0zIW7Jn477QrGGOtDJRG/RodY1RszD0SC7XwSlulEakLyO9dcHMV
 wZcj0L+pyf8dr7frtYLg8petWgxdUuu8/Qs1+8sEqeFOn2rvV5UXH/UIX
 M4FGy/ZODG3L0TEU1Fky3RQmKgVBsPTF+kg/dyxwxqMC+spQEyq9EVhJ9
 NnNIiRhnh1E4Zbmbyv+OSNeYwJprBKFNwVZzQlAyFqhd/PJ64bn+8YM2c g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="289193572"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="289193572"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:56:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="636870489"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="636870489"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:56:14 -0700
Date: Wed, 2 Nov 2022 10:57:53 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <20221102175753.GA2837385@mdnavare-mobl1.jf.intel.com>
References: <20221102174544.2288205-1-jouni.hogander@intel.com>
 <20221102174544.2288205-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221102174544.2288205-2-jouni.hogander@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Ensure panel granularity
 aligns with DSC slice height
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 02, 2022 at 07:45:43PM +0200, Jouni Högander wrote:
> Do not enable psr2 if panel ganularity is not aligned with DSC slice
> height when DSC is enabled
> 
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

This check against DSC makes sense since we have seen issues otherwise

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e11b0592055f..57575b5c6d48 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -779,6 +779,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>  	const int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	const int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>  	u16 y_granularity = 0;
> @@ -809,6 +810,10 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>  	if (y_granularity == 0 || crtc_vdisplay % y_granularity)
>  		return false;
>  
> +	if (crtc_state->dsc.compression_enable &&
> +	    vdsc_cfg->slice_height % y_granularity)
> +		return false;
> +
>  	crtc_state->su_y_granularity = y_granularity;
>  	return true;
>  }
> -- 
> 2.34.1
> 
