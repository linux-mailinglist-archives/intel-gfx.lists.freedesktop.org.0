Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E13D462FAC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 10:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3DF6FC4E;
	Tue, 30 Nov 2021 09:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E1DF6FC4D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 09:30:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="223061028"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="223061028"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 01:30:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="459531325"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 30 Nov 2021 01:30:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Nov 2021 11:30:40 +0200
Date: Tue, 30 Nov 2021 11:30:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vidya Srinivas <vidya.srinivas@intel.com>
Message-ID: <YaXvQAJKC10ehQ2q@intel.com>
References: <20211118062516.22535-1-vidya.srinivas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211118062516.22535-1-vidya.srinivas@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reject 5k on HDR planes for
 planar fb formats
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
Cc: Yashashvi Shantam <shantam.yashashvi@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 18, 2021 at 11:55:16AM +0530, Vidya Srinivas wrote:
> PLANE_CUS_CTL has a restriction of 4096 width even though
> PLANE_SIZE and scaler size registers supports max 5120.
> Reject 5k on HDR plane for planar formats like NV12
> to let the user space know about it.
> 
> Without this patch, when 5k content is sent on HDR plane
> with NV12 content, FIFO underrun is seen and screen blanks
> out. Issue is seen on both TGL and ADL platforms.
> 
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 37eabeff8197..e2e52f5dca3b 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -86,6 +86,7 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
>  #define ICL_MAX_DST_H 4096
>  #define SKL_MIN_YUV_420_SRC_W 16
>  #define SKL_MIN_YUV_420_SRC_H 16
> +#define MAX_CUSCTL_W 4096
>  
>  static int
>  skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
> @@ -221,6 +222,14 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
>  	bool force_detach = !fb || !plane_state->uapi.visible;
>  	bool need_scaler = false;
>  
> +	/* PLANE_CUS_CTL size max 4096 */
> +	if (icl_is_hdr_plane(dev_priv, intel_plane->id) &&
> +	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> +	    (drm_rect_width(&plane_state->uapi.src) >> 16) > MAX_CUSCTL_W) {
> +		DRM_ERROR("HDR chroma upsampler size exceeds limits\n");
> +		return -EINVAL;
> +	}

Wrong place. Should go into the plane->max_width() hook. There also
seems to be a minimum height requirement for the CUS which we're not
checking either.

> +
>  	/* Pre-gen11 and SDR planes always need a scaler for planar formats. */
>  	if (!icl_is_hdr_plane(dev_priv, intel_plane->id) &&
>  	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> -- 
> 2.33.0

-- 
Ville Syrjälä
Intel
