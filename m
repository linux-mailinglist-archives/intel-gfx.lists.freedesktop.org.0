Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED79770C22B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 17:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC3410E358;
	Mon, 22 May 2023 15:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7248010E35F
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 15:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684768737; x=1716304737;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nT/Ta0Spfu+GeWM65n7EGZp12yzkV12f2DSdDMtRbs0=;
 b=CaCSgdVEfKIWcuHnQXDYMsEO53MGgo5Lqj69DSLV5dYx2MHMwz3bjt+S
 HNKt7f3Ks6pMWhWoPboE7zd7s06n2aTgHuJATbLlbuXTTT6Ikea/Z4uKu
 e4RturtusFar6qA+fIahE5eVJV/uaF/rMEFfW6ImcKOeJKShsIesJJQiy
 jIjHlZFz0M7PhbUce5rFyiuwDq2v+wvoQfNrwozF8HrTkKOLHGAg19yV9
 y9jifdez5gFuvhcLiddOHNTVwRkOYAzMx7mCXXcVg2kOO1IHdbhoOGP++
 Z50xTYErz1w2X8Jd5X11bPd7JN+DghyejgPMleyekDa+6szIaBx7+k2Go A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="381180303"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="381180303"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:18:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="680992340"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="680992340"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:18:39 -0700
Date: Mon, 22 May 2023 18:18:35 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZGuHy+V+FSC5LX7t@intel.com>
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
 <20230511231750.313467-4-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230511231750.313467-4-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 3/8] drm/i915: store the peak bw per QGV
 point
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 12, 2023 at 02:17:45AM +0300, Vinod Govindapillai wrote:
> In MTL onwards, pcode locks the GV point based on the peak BW
> of a QGV point. So store the peak BW of all the QGV points.
> 
> v2: use DIV_ROUND_CLOSEST() for the peakBW calculation
> 
> Bspec: 64636
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c           | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index c8075a37c3ab..db117638d23b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -534,10 +534,14 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
>  
>  			bi->deratedbw[j] = min(maxdebw,
>  					       bw * (100 - sa->derating) / 100);
> +			bi->peakbw[j] = DIV_ROUND_CLOSEST(sp->dclk *
> +							  num_channels *
> +							  qi.channel_width, 8);
>  
>  			drm_dbg_kms(&dev_priv->drm,
> -				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
> -				    i, j, bi->num_planes, bi->deratedbw[j]);
> +				    "BW%d / QGV %d: num_planes=%d deratedbw=%u peakbw: %u\n",
> +				    i, j, bi->num_planes, bi->deratedbw[j],
> +				    bi->peakbw[j]);
>  		}
>  
>  		for (j = 0; j < qi.num_psf_points; j++) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index e36f88a39b86..9f66d734edf6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -314,6 +314,8 @@ struct intel_display {
>  			unsigned int deratedbw[I915_NUM_QGV_POINTS];
>  			/* for each PSF GV point */
>  			unsigned int psf_bw[I915_NUM_PSF_GV_POINTS];
> +			/* Peak BW for each QGV point */
> +			unsigned int peakbw[I915_NUM_QGV_POINTS];
>  			u8 num_qgv_points;
>  			u8 num_psf_gv_points;
>  			u8 num_planes;
> -- 
> 2.34.1
> 
