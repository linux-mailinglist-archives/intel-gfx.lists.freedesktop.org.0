Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2494AA17B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 21:58:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E483A10E5E4;
	Fri,  4 Feb 2022 20:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF2810E5E4
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 20:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644008314; x=1675544314;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZmbqiONHKYdvg65BjSvY+6sPjslxxF/q2wUKKSKx/7Y=;
 b=d5vcYduhTyErI+ixwk5fzqYNEDurPYYkQjdtYnZfw8H73g+clmdXu6Cu
 yo/xXbfWwAz6ztI5uxyWLfa+4VF0oumSWQDya3FEJ1Led2zmDORYHSPnh
 /q9NzWQIQs9sVHItdAVNLpxUEI7BAJPMj7DyUBJwoLV7tvVZNWyFumODU
 19nNpLy9cEo9k8xJTlZv/JHoNKuZHiHemy3AK0iFeW11Fecyy1sAZr6Z3
 6DkIdJ4akcfL1RG7ov2jPZq1GrqsxMElBf8zkf0YWMBV3OAM6Rwoka+ee
 coQPTZ/tn9aMSxFWt22sLBc0a8Y4cY8JDQMWE0fdNe3jfFGTPy6tlnMCQ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="228412194"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="228412194"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 12:58:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="631814877"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 12:58:33 -0800
Date: Fri, 4 Feb 2022 12:58:29 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220204205829.GA22962@labuser-Z97X-UD5H>
References: <20220203183823.22890-3-ville.syrjala@linux.intel.com>
 <20220204072009.1546-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220204072009.1546-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 02/10] drm/i915: Fix bigjoiner state copy
 fails
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

On Fri, Feb 04, 2022 at 09:20:09AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We seem to be missing a few things from the bigjoiner state copy.
> Namely hw.mode isn't getting copied (which probably causes PIPESRC
> to be misconfigured), CTM/LUTs aren't getting copied (which could
> cause the pipe to produced incorrect output), and we also forgot
> to copy over the color_mgmt_changed flag so potentially we fail
> to do the actual CTM/LUT programming (assuming we aren't doing
> a full modeset or fastset). Fix it all.
> 
> v2: Fix uapi.ctm vs. hw.ctm copy-paste fail
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Yup looks good

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 85dce8a093d4..4f5f023417a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5827,8 +5827,10 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
>  	master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
>  
>  	/* No need to copy state if the master state is unchanged */
> -	if (master_crtc_state)
> +	if (master_crtc_state) {
> +		crtc_state->uapi.color_mgmt_changed = master_crtc_state->uapi.color_mgmt_changed;
>  		intel_crtc_copy_color_blobs(crtc_state, master_crtc_state);
> +	}
>  }
>  
>  static void
> @@ -5890,13 +5892,23 @@ copy_bigjoiner_crtc_state(struct intel_crtc_state *crtc_state,
>  	memset(&crtc_state->hw, 0, sizeof(saved_state->hw));
>  	crtc_state->hw.enable = from_crtc_state->hw.enable;
>  	crtc_state->hw.active = from_crtc_state->hw.active;
> +	crtc_state->hw.mode = from_crtc_state->hw.mode;
>  	crtc_state->hw.pipe_mode = from_crtc_state->hw.pipe_mode;
>  	crtc_state->hw.adjusted_mode = from_crtc_state->hw.adjusted_mode;
> +	crtc_state->hw.scaling_filter = from_crtc_state->hw.scaling_filter;
> +
> +	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
> +				  from_crtc_state->hw.degamma_lut);
> +	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
> +				  from_crtc_state->hw.gamma_lut);
> +	drm_property_replace_blob(&crtc_state->hw.ctm,
> +				  from_crtc_state->hw.ctm);
>  
>  	/* Some fixups */
>  	crtc_state->uapi.mode_changed = from_crtc_state->uapi.mode_changed;
>  	crtc_state->uapi.connectors_changed = from_crtc_state->uapi.connectors_changed;
>  	crtc_state->uapi.active_changed = from_crtc_state->uapi.active_changed;
> +	crtc_state->uapi.color_mgmt_changed = from_crtc_state->uapi.color_mgmt_changed;
>  	crtc_state->nv12_planes = crtc_state->c8_planes = crtc_state->update_planes = 0;
>  	crtc_state->bigjoiner_linked_crtc = to_intel_crtc(from_crtc_state->uapi.crtc);
>  	crtc_state->bigjoiner_slave = true;
> -- 
> 2.34.1
> 
