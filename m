Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92382649AB4
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 10:08:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023F489B46;
	Mon, 12 Dec 2022 09:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F74289B46
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 09:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670836129; x=1702372129;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=95cV31UUDlgB3Z5DQJj68ayBsf6aZo/gdF8d2t70WiU=;
 b=bAes9aCk9Fy/Gp7HsbfmOY32xo0CbkmTTeJjN6qPnXctZEZLObWcQPoy
 bSy8519bM92QCUWE1QFwq4QoOdFLCPPtTNZg8i4y3KIr2slU3xgCmlyka
 D/Tm1dCix71/qLEoJP/gR6GheQkar8UMSrI5lLt6hJXr92E7dixAt2bud
 U6oq95T5owl/hZdhbC2q1Jxl+CQe/tAfa87SK1fnRUEgEbPQD94cl68o7
 PHJ4kH2Pj45JJ+TVopT3nhkBuZMbd1yS/m9Th/oJYKleqrsNegFNkbvgk
 IoDQlJHz/OjQ1HnfA3+k6NYJtf2sKx6/zoHFrWgIdfBQgq5RmVGfIaHY9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="298154226"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="298154226"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 01:08:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="716724925"
X-IronPort-AV: E=Sophos;i="5.96,237,1665471600"; d="scan'208";a="716724925"
Received: from sshumihi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.95])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 01:08:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221212070228.2563936-1-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221212070228.2563936-1-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 12 Dec 2022 11:08:43 +0200
Message-ID: <871qp5yoo4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Enable VDIP Enable VSC
 whenever GMP DIP enabled
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

On Mon, 12 Dec 2022, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> GMP VDIP gets dropped when enabled without VSC DIP being
> enabled. Enable VSC DIP whenever GMP DIP is enabled

I saw the fixed version, but for future reference, please run checkpatch
locally and use CONFIG_DRM_I915_WERROR=y for i915 development to catch
simple errors before sending the patches.

Thanks,
Jani.

>
> WA:14015402699
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 2 ++
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 2 ++
>  2 files changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 72cf83a27405..4d63a9ce5f42 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3278,6 +3278,8 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>  	u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
>  			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
>  			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
> +	if (IS_DISPLAY_VER(dev_priv, 13, 14)
> +			dip_enable |= VIDEO_DIP_ENABLE_VSC_HSW;
>  	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
>  
>  	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 9ff1c0b223ad..a5c449a05b4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -630,6 +630,8 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  		tmp = intel_de_read(dev_priv,
>  				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
>  		mask = VIDEO_DIP_ENABLE_GMP_HSW;
> +		if (IS_DISPLAY_VER(dev_priv, 13, 14)
> +				mask |= VIDEO_DIP_ENABLE_VSC_HSW;
>  
>  		if (tmp & mask)
>  			val |= intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);

-- 
Jani Nikula, Intel Open Source Graphics Center
