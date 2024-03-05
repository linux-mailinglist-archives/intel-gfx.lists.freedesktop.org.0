Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7339F8722AE
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 16:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A2D112BB2;
	Tue,  5 Mar 2024 15:26:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AWv+lC1M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1E4112BC6
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 15:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709652379; x=1741188379;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SuCsCz70rjcBc4aGcZAZDwHDJYIpD63UkRSzKKpFmJo=;
 b=AWv+lC1MkFGpa11ps6dJ7ZyQ3/JL4f114K+HTFLw3a53KTDsY5m2HTlt
 XiJTuJkqPeEycqA245Ibo7wZLTF6NrfVYj2E28ULFwR/nfgzz4Clae7xP
 kDFxGFMjIyZvTIDmF+GqthL5OfYzY/85jGOXp1QkN3ovfTcA7nHDBBcym
 mveiHirZ6gCyYyv6Y+j3HoxRT6JYc0v2+3CA82vbIwY+75mosvsFQCN0C
 AjLhlvIvq+Klmfms2RtLn8WT84UMptaFB9FwGsuTBrjXbWCRF1Fdl4xrp
 mvpGpKR/jfbzf5pmm+owXeQTFpnSy87Nyjxwv37fz9oHsYr+pXFdSDj2G Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="15349058"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="15349058"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 07:26:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="827773888"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="827773888"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 07:26:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Mar 2024 17:26:15 +0200
Date: Tue, 5 Mar 2024 17:26:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/scaler: Update Pipe src size check for
 DISPLAY_VER >= 12
Message-ID: <Zec5l8v6OAJCqYZs@intel.com>
References: <20240219055255.1099867-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240219055255.1099867-1-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Feb 19, 2024 at 11:22:55AM +0530, Ankit Nautiyal wrote:
> For Earlier platforms, the Pipe source size is 12-bits so
> max pipe source width and height is 4096. For newer platforms it is
> 13-bits so theoretically max height is 8192, but maximum width
> supported on a single pipe is 5120, beyond which we need to use
> bigjoiner.
> 
> Currently we are using max scaler source size to make sure that the
> pipe source size is programmed within limits, before using scaler.
> This creates a problem, for MTL where scaler source size is 4096, but
> max pipe source width can be 5120.
> 
> Update the check to use the aforementioned limits.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 8a934bada624..36342142efaa 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -115,6 +115,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>  	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
>  	int min_src_w, min_src_h, min_dst_w, min_dst_h;
>  	int max_src_w, max_src_h, max_dst_w, max_dst_h;
> +	int max_pipe_src_w, max_pipe_src_h;
>  
>  	/*
>  	 * Src coordinates are already rotated by 270 degrees for
> @@ -212,11 +213,21 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>  	/*
>  	 * The pipe scaler does not use all the bits of PIPESRC, at least
>  	 * on the earlier platforms. So even when we're scaling a plane
> -	 * the *pipe* source size must not be too large. For simplicity
> -	 * we assume the limits match the scaler source size limits. Might
> -	 * not be 100% accurate on all platforms, but good enough for now.
> +	 * the *pipe* source size must not be too large.
> +	 *
> +	 * For Earlier platforms, the Pipe source size is 12-bits so
> +	 * max pipe src width and height is 4096. For newer platforms it is 13-bits.
> +	 * Theoretically maximum pipe src height supported on a single pipe is 8192,
> +	 * but maximum pipe src width supported on a single pipe is 5120.
>  	 */
> -	if (pipe_src_w > max_src_w || pipe_src_h > max_src_h) {
> +	if (DISPLAY_VER(dev_priv) < 12) {
> +		max_pipe_src_w = 4096;
> +		max_pipe_src_h = 4096;

That doesn't seem right.

Hmm. We should probably we able to just switch this to check 
against the max dst size instead of the max src size.

> +	} else {
> +		max_pipe_src_w = 5120;
> +		max_pipe_src_h = 8192;
> +	}
> +	if (pipe_src_w > max_pipe_src_w || pipe_src_h > max_pipe_src_h) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "scaler_user index %u.%u: pipe src size %ux%u "
>  			    "is out of scaler range\n",
> -- 
> 2.40.1

-- 
Ville Syrjälä
Intel
