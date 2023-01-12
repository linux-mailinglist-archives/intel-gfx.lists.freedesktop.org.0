Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B39BD667E25
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 19:29:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBED710E329;
	Thu, 12 Jan 2023 18:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B5C710E329
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 18:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673548160; x=1705084160;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J0iL4rgix2mw0Wk4Bh4WpBm6DrHW+PsG8OlOTt+T2Gw=;
 b=YAeQIcZi2H9GgrwUu57iMr0B7IH2oZsc1Gsbkb4tdmIFpEvNnMSbNnrw
 zUvpZ/RmZCszIny3viNQWJl6abZpk1l0zwTXrbytBd1CAqU4m9vIQrP5f
 2G4J7bOi7COKwADNmxd/XhLfbbVCTYpR+1sIC35JiBm0/bEmvER1OsWx1
 8AiNNXGyWHQXPxG3hQn46S5HbdV89fWcJXu1Gn4ETApq6uN5OL9acWPZl
 REcBxbVCbd5vb7NXdp/3rLHpldMmaC4pdyOI7Qi4QIJe+FxC0kgKRNrzz
 Oa6gyPo6ZSb6Gtb1helLNzooKVYUxFH6QPOc0uu1InJSAOs9u5OEtj85g w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="311638263"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="311638263"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 10:29:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="688436443"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="688436443"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 12 Jan 2023 10:29:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Jan 2023 20:29:15 +0200
Date: Thu, 12 Jan 2023 20:29:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y8BRe4DUUsRou4uN@intel.com>
References: <20230112152145.1117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230112152145.1117-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reject < 1x1 pixel plane source
 size
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
Cc: Drew Davenport <ddavenport@chromium.org>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 12, 2023 at 05:21:45PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We don't have proper sub-pixel coordinate support (some platforms
> simply can't do it, for others we've not implemented it). This
> can cause us to treat a < 1 pixel source width/height as zero
> which is not valid for the hardware, and can also cause a div
> by zero in some cases.
> 
> Refuse < 1x1 plane source size to avoid these problems.
> 
> Cc: stable@vger.kernel.org
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Reported-by: Drew Davenport <ddavenport@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
> The other option would be to clamp the source size to >=1x1 pixels,
> but dunno if that has any real benefits.
> 
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 10e1fc9d0698..c6e43d684458 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -921,6 +921,21 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
>  	 */
>  	plane_state->uapi.visible = drm_rect_clip_scaled(src, dst, clip);
>  
> +	/*
> +	 * Avoid zero source size when we later
> +	 * discard the fractional coords.
> +	 *
> +	 * FIXME add proper sub-pixel coordinate handling
> +	 * for platforms/planes that support it.
> +	 */
> +	if (plane_state->uapi.visible &&
> +	    (drm_rect_width(src) < 0x10000 || drm_rect_height(src) < 0x10000)) {
> +		drm_dbg_kms(&i915->drm, "Plane source must be at least 1x1 pixels\n");
> +		drm_rect_debug_print("src: ", src, true);
> +		drm_rect_debug_print("dst: ", dst, false);
> +		return -EINVAL;
> +	}

Scratch that. Went with Drew's original patch instead.

> +
>  	drm_rect_rotate_inv(src, fb->width << 16, fb->height << 16, rotation);
>  
>  	if (!can_position && plane_state->uapi.visible &&
> -- 
> 2.38.2

-- 
Ville Syrjälä
Intel
