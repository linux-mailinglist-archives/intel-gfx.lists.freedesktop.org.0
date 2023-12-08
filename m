Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3962980AC51
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 19:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C74710E153;
	Fri,  8 Dec 2023 18:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F9D10E0B7
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 18:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702060908; x=1733596908;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yUg+9Ra+1cdcxl106X8DNuo5GATmxOQw4+pi4CYUFAU=;
 b=C0ULxVRecQq6ZgVJpq+PzTEg46KTDRakU5naWX4yUXbtzq8DGJQezv1l
 3u39UobYgvjo4wcOrio4kZsaoPpgCFBurM4ROxb6UqZmBggR0k4PddxD1
 BSExI5vAB//bb5SaOUi2JEQ+RA5Jg7V7UjIQqO8pgkA7BQEzvLK7eE9QT
 Bx3zOvXCdOtEizVy6B/dx4ChPVIuxhHFJaJTxI1ZRFWo/dNhDVdetHqhn
 cz5m6TppGnpK0B5qj+Y6DN/ZzMJq8wXdFo/Y2nYWV093BN+dZBYzXbJC6
 aW1b3v05OSQFCWSFMgW1q37qVjTTxogUaJv58CfAgry75hojTsLn6oZQV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="7773972"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; 
   d="scan'208";a="7773972"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 10:41:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="765567369"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="765567369"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 08 Dec 2023 10:41:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Dec 2023 20:41:43 +0200
Date: Fri, 8 Dec 2023 20:41:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Fix ADL+ tiled plane stride when the POT
 stride is smaller than the original
Message-ID: <ZXNjZ6i0lMbSc5nx@intel.com>
References: <20231204202443.31247-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231204202443.31247-1-ville.syrjala@linux.intel.com>
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
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 04, 2023 at 10:24:43PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> plane_view_scanout_stride() currently assumes that we had to pad the
> mapping stride with dummy pages in order to align it. But that is not
> the case if the original fb stride exceeds the aligned stride used
> to populate the remapped view, which is calculated from the user
> specified framebuffer width rather than the user specified framebuffer
> stride.
> 
> Ignore the original fb stride in this case and just stick to the POT
> aligned stride. Getting this wrong will cause the plane to fetch the
> wrong data, and can lead to fault errors if the page tables at the
> bogus location aren't even populated.
> 
> TODO: figure out if this is OK for CCS, or if we should instead increase
> the width of the view to cover the entire user specified fb stride
> instead...
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Doh. Apparently I forgot to tag this for stable...

Jani, can you include this w/ cc:stable in the next -fixes pull please?

commit 01a39f1c4f12 ("drm/i915: Fix ADL+ tiled plane stride when the POT stride is smaller than the original")

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 33a693460420..ab634a4c86d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1381,7 +1381,8 @@ plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
>  	struct drm_i915_private *i915 = to_i915(fb->base.dev);
>  	unsigned int stride_tiles;
>  
> -	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
> +	if ((IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&
> +	    src_stride_tiles < dst_stride_tiles)
>  		stride_tiles = src_stride_tiles;
>  	else
>  		stride_tiles = dst_stride_tiles;
> -- 
> 2.41.0

-- 
Ville Syrjälä
Intel
