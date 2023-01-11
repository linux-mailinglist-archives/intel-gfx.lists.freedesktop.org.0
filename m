Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A787E665CD5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 14:42:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C147A10E076;
	Wed, 11 Jan 2023 13:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB40410E076
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 13:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673444520; x=1704980520;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=krhGncK7YO+VdIRqrT4R0eo1ssBAsh0sH3AfNugMup4=;
 b=lDbriepAQ7eXo/r+6ZUd5frTLFv21E+nDiHrkQy6VxtARG7ucjXnm5WQ
 JFuQjcsJO2Z3OQ2O8vUpMDlkQkas+uLzgvsJ9APD0nh1ljq4vpG/nrSR4
 Oo+fdRW11TxhW0HQ7CNXzBChqU0JH09GpOPsW8+gFSMeSG+D2KwttJLYV
 rJx4UgTOIq5yblZrPmBK0z1xw6mK374if8MKH1hTxJX/H+rmz/jUG9X3q
 ALsYqLZtuGZoHnXav5gvlAKomW+GcVb7c65s2su+MS4Gu8TuaKGuEHscm
 GW2h//K5rsW91sUN9izTfBmlEewAXzls/L23Rf1vKCI8s55xTKYt3jHHM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321105826"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="321105826"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 05:42:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="902761158"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="902761158"
Received: from mmgriffi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.11.225])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 05:41:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230111053837.1608588-7-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230111053837.1608588-1-suraj.kandpal@intel.com>
 <20230111053837.1608588-7-suraj.kandpal@intel.com>
Date: Wed, 11 Jan 2023 15:41:56 +0200
Message-ID: <874jsxi3x7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v6 6/9] drm/i915/vdsc: Check slice design
 requirement
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

On Wed, 11 Jan 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add function to check if slice design requirements are being
> met as defined in the below link section Slice Design Requirement
>
> https://gfxspecs.intel.com/Predator/Home/Index/49259
>

Just add this:

Bspec: 49259

and no URLs.

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 32 +++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 52a82d8b289e..0a683d6dff33 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -447,6 +447,29 @@ calculate_rc_params(struct rc_parameters *rc,
>  	}
>  }
>  
> +static int intel_dsc_check_slice_design_req(struct intel_crtc_state *pipe_config,
> +					    struct drm_dsc_config *vdsc_cfg)

Bikeshedding, I think "check" is generally a poor verb in a function
name.

intel_dsc_slice_dimensions_valid() or something like that?


> +{
> +	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_RGB ||
> +	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR444) {
> +		if (vdsc_cfg->slice_height > 4095)
> +			return -EINVAL;
> +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width < 15000)
> +			return -EINVAL;
> +	} else if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +		if (!(vdsc_cfg->slice_width % 2))
> +			return -EINVAL;
> +		if (!(vdsc_cfg->slice_height % 2))
> +			return -EINVAL;
> +		if (vdsc_cfg->slice_height > 4094)
> +			return -EINVAL;
> +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width < 30000)
> +			return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> @@ -455,11 +478,20 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>  	u16 compressed_bpp = pipe_config->dsc.compressed_bpp;
>  	const struct rc_parameters *rc_params;
>  	struct rc_parameters *rc = NULL;
> +	int err;
>  	u8 i = 0;
>  
>  	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
>  	vdsc_cfg->slice_width = DIV_ROUND_UP(vdsc_cfg->pic_width,
>  					     pipe_config->dsc.slice_count);
> +
> +	err = intel_dsc_check_slice_design_req(pipe_config, vdsc_cfg);
> +
> +	if (err) {
> +		drm_dbg_kms(&dev_priv->drm, "Slice design requirements not met\n");
> +		return err;
> +	}
> +
>  	/*
>  	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb is 0
>  	 * else 1

-- 
Jani Nikula, Intel Open Source Graphics Center
