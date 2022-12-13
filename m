Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C6664ADFB
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 03:58:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A70C10E2C8;
	Tue, 13 Dec 2022 02:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F47A10E2C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670900313; x=1702436313;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=uXNzPecOXa54TvAkESHKxoPHUiSDEHcYpkvektm3KhU=;
 b=QtIDzjLC4w3lZjhnnRvpg1PD8ToCGPzcIrIHl0+plk0YwhoWLmNLa3PI
 SnUdpEW8NIUuHKb32cGYGwVBAw1Y0zLUyRUztNxtzIacUZaDfMPk6sx0l
 O5qhyH4OD37nGLdIwIcvN866XVYoHN6roDMeiWhwGIqxu6WeM72UZZFVH
 sZDG8AAT9Uver0HvbXQviRBGVy82ydWvN8WY4ciyIHNveeQhq7RVXwl94
 Fgu9LjjANR+oycinIk4EA4nAzHPIF8DpYUcsvwaLU1hE+PiMnaJPJo+gW
 c2nf3/yrbtR2sZQ7tB6oqmqW3xCLigGuVd3C4t+Xn7ZY79uURf+k9PdGC w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="382333311"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="382333311"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 18:58:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="648405731"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="648405731"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 12 Dec 2022 18:58:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Dec 2022 04:58:29 +0200
Date: Tue, 13 Dec 2022 04:58:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <Y5fqVUXmoHqwNk+C@intel.com>
References: <20221212073325.2678764-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221212073325.2678764-1-mitulkumar.ajitkumar.golani@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 12, 2022 at 01:03:25PM +0530, Mitul Golani wrote:
> GMP VDIP gets dropped when enabled without VSC DIP being
> enabled. Enable VSC DIP whenever GMP DIP is enabled
> 
> WA:14015402699
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 2 ++
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 72cf83a27405..6c36ee26d399 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3275,10 +3275,13 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
> +	u32 val;
>  	u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
>  			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
>  			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
> -	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
> +	if (IS_DISPLAY_VER(dev_priv, 13, 14))
> +		dip_enable |= VIDEO_DIP_ENABLE_VSC_HSW;

What kind of garbage are we going to be sending to the sink here?

> +	val = intel_de_read(dev_priv, reg) & ~dip_enable;
>  
>  	/* TODO: Add DSC case (DIP_ENABLE_PPS) */
>  	/* When PSR is enabled, this routine doesn't disable VSC DIP */
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 9ff1c0b223ad..e7cdc521fbd3 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -630,6 +630,8 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  		tmp = intel_de_read(dev_priv,
>  				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
>  		mask = VIDEO_DIP_ENABLE_GMP_HSW;
> +		if (IS_DISPLAY_VER(dev_priv, 13, 14))
> +			mask |= VIDEO_DIP_ENABLE_VSC_HSW;
>  
>  		if (tmp & mask)
>  			val |= intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
