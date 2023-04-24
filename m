Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E19D16ECC6E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 14:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C955C10E453;
	Mon, 24 Apr 2023 12:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 409D410E453
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 12:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682341105; x=1713877105;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=X0Ak6O5AqyOjeEl/hxJB1Un9kY9CxbDO+GiZbEi34NE=;
 b=V1tBEccF+IIPCnUDA8Qgl3KVAV3nW23C9jPjKEnqxnZSa38rs4BqKlfW
 jjKHPbeWn5fdnIqUkrc4rnrpepX5IkKbmKipDf8kDNPeoJJVXIqvc28OK
 IO1wYZYdf98aAjjqpC/31W6o3XA9nJxSt3yB6Z7mozufNs3KchsCNRZzN
 hSL9XWl4sDkPkcKbRT9M74f19JOsIqJdB/vqUOLvrqgi9bzqA8jEw7i99
 qS3YSrFoUhoMW7/6gnj3Ub1MglMZt8Ny8Oa6tVcl8c9xSWQk/hb/sirK+
 Q959oFoxRU/Ll0E2foUUYGCJzkwuFtm5vrFOdOnHYfVKrIP2dkjmxLV0w g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="349243458"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="349243458"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 05:58:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="686834091"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="686834091"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 24 Apr 2023 05:58:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 15:58:21 +0300
Date: Mon, 24 Apr 2023 15:58:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZEZ87T/9Ch0t4Nej@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-10-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230331101613.936776-10-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/dp_mst: Use output_format to
 get the final link bpp
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

On Fri, Mar 31, 2023 at 03:46:09PM +0530, Ankit Nautiyal wrote:
> The final link bpp used to calculate the m_n values depend on the
> output_format. Though the output_format is set to RGB for MST case and
> the link bpp will be same as the pipe bpp, for the sake of semantics,
> lets calculate the m_n values with the link bpp, instead of pipe_bpp.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++++-
>  3 files changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e5903b5e511b..8d819b2963de 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -928,7 +928,7 @@ int intel_dp_min_bpp(enum intel_output_format output_format)
>  		return 8 * 3;
>  }
>  
> -static int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
> +int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
>  {
>  	/*
>  	 * bpp value was assumed to RGB format. And YCbCr 4:2:0 output
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index db86c2b71c1f..856172bfa13e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -140,5 +140,6 @@ void intel_dp_pcon_dsc_configure(struct intel_dp *intel_dp,
>  void intel_dp_phy_test(struct intel_encoder *encoder);
>  
>  void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
> +int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index daa1591a9ae8..fec3f310fc9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -130,6 +130,7 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  	int slots = -EINVAL;
> +	int link_bpp;
>  
>  	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, limits->max_bpp,
>  						     limits->min_bpp, limits,
> @@ -138,7 +139,9 @@ static int intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
>  	if (slots < 0)
>  		return slots;
>  
> -	intel_link_compute_m_n(crtc_state->pipe_bpp,
> +	link_bpp = intel_dp_output_bpp(crtc_state->output_format, crtc_state->pipe_bpp);
> +
> +	intel_link_compute_m_n(link_bpp,
>  			       crtc_state->lane_count,
>  			       adjusted_mode->crtc_clock,
>  			       crtc_state->port_clock,
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
