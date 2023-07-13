Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4261752146
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771E010E681;
	Thu, 13 Jul 2023 12:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A8B510E681
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 12:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689251362; x=1720787362;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LqP5FEav+jtYxKWU6OXF/EaGJL9bTy0SydG6aLZCSOc=;
 b=DwiQFeDAhcfb8eRZER1iYffve9ClkZwURpSyl4VM8zqBXR1DlFHnzsKq
 VnrfKksztWsD2mePDBs1MteNGCNf3IOBZLtI6xvpWuxw6NUH2KVKkLcYH
 joG53nqtXoZdik4MAQtPxUpDMB1xMb2A4y5ZK/PKHgrhCzlAAdGNleKYk
 ncY2y7/GcQR5z0xwrIq0ruhBplw5X8Nuym6ip8tsOk8drkcvuIaSLI4LA
 V1ParCBqnkOlX2dcTknyK12IqCvs3Z6+5sx5dxlhKXeIrg2Q4fbeXQJh3
 x/rmCSalpQojxWoO8YdANStG5hx1DCd8bEvZX7/r3La2jivQ9N5BMeeTN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="364036192"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="364036192"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="846044287"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="846044287"
Received: from atadj-mobl1.amr.corp.intel.com (HELO localhost) ([10.252.50.30])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:29:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230713062924.2894736-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230713062924.2894736-1-suraj.kandpal@intel.com>
 <20230713062924.2894736-3-suraj.kandpal@intel.com>
Date: Thu, 13 Jul 2023 15:29:16 +0300
Message-ID: <87r0pcf10j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915/vdsc: Add a check for dsc
 split cases
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

On Thu, 13 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> In intel_vdsc_get_config we only read the primary dsc engine register
> and not take into account if the other dsc engine is in use and if
> both registers have the same value or not this patche fixes that by
> adding a check.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 530f3c08a172..d48b8306bfc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -939,7 +939,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  	enum pipe pipe = crtc->pipe;
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0;
> +	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0 = 0, pps_temp1 = 1;
>  
>  	if (!intel_dsc_source_support(crtc_state))
>  		return;
> @@ -965,11 +965,24 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  	/* PPS0 & PPS1 */
>  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> +		if (crtc_state->dsc.dsc_split) {
> +			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
> +			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> +		}
> +

Superfluous newline.

>  	} else {
>  		pps0 = intel_de_read(dev_priv,
>  				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
>  		pps1 = intel_de_read(dev_priv,
>  				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> +		if (crtc_state->dsc.dsc_split) {
> +			pps_temp0 = intel_de_read(dev_priv,
> +						  ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> +			pps_temp1 = intel_de_read(dev_priv,
> +						  ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));

Those are the same two registers as above?

BR,
Jani.

> +			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
> +			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> +		}
>  	}
>  
>  	vdsc_cfg->bits_per_pixel = pps1;

-- 
Jani Nikula, Intel Open Source Graphics Center
