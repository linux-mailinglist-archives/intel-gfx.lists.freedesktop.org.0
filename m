Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D94A6C3C1C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 21:45:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0EC10E2ED;
	Tue, 21 Mar 2023 20:45:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10ED310E2ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 20:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679431535; x=1710967535;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yMSGmvmX0yR7scB9iJY4bCpoCasdKTmp2FQgQohDxcw=;
 b=H18Yp+6gPTHKxeC69AofzhTkIceRdYRHlZYgNIYpN7B2ajAkoSpdU712
 09udqXyqSyUahfkWV0hCLTiBqbzKRdwab8nsrV02vpIz2Ht9OAHQLyA7X
 hHATCcvNtGhu6Sx4KocGtLdLXo2QlLrXdnOKmNEq7FDT7oocjiBZYE7jJ
 YhRX4OoHwK/CbT9LOPGW+8hE732VKFkh+4t3mprLLwzFGr+50IgOP5aEn
 IdCbnd0n4MNWPIhYh9rH3DzRZHLyQgJt1otffHpPZNwAUsZGaQEr1MLPr
 oiw4sKSbt8WMxl6ClPGU6Tus9ff1wGnlWXl7hCGiKxAzxPtoUCKXU+9bq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="322899370"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="322899370"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 13:45:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="658922614"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="658922614"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 21 Mar 2023 13:45:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Mar 2023 22:45:30 +0200
Date: Tue, 21 Mar 2023 22:45:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZBoXahYQUmYFIOyA@intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
 <20230320095438.17328-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230320095438.17328-7-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/psr: Define more PSR mask bits
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 20, 2023 at 11:54:38AM +0200, Ville Syrjala wrote:
> From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> 
> Define more of the PSR mask bits. Even if we don't set them
> from the driver they can be very useful during PSR debugging.
> Having to trawl through bspec every time to find them is
> not fun.
> 
> The particularly interesting bits are:
> 
> - PIPE_MISC[21]/PIPE_MISC_PSR_MASK_PIPE_REG_WRITE
> 
>   Normally most, if not all, pipe/plane registers (even the
>   noarm ones) trigger a PSR exit. This stops that, leaving
>   only PLANE_SURF (or so it seems) to do the triggering
> 
> - CHICKEN_TRANS[30]/NO_VBLANK_MASK_IN_DEEP_PSR
> 
>   Stops PSR exit from generating an extra vblank before the
>   first frame is transmitted.
> 
>   Looks like with DC states enabled the extra vblank happens
>   after link traning, with DC states disabled it seems to happen
>   immediately. No idea as of now why there is a difference.
> 
>   Unfortunately CHICKEN_TRANS itself seems to be double buffered
>   and thus won't latch until the first vblank. So with DC states
>   enabled the register effctively uses the reset value during DC5
>   exit+PSR exit sequence, and thus the bit does nothing until
>   latched by the vblank that it was trying to prevent from being
>   generated in the first place. So we should probably call this one
>   a chicken/egg bit instead.
> 
>   TODO: should confirm what this does when using PSR standby
>         mode instead of deep/link-off mode...

And the answer to this question seems to be "nothing".
In standby mode not only the link remains on, but also
the timing generator keeps running so you get normal
periodic vblanks all the time anyway.

> 
> Cc: Manasi Navare <navaremanasi@google.com>
> Cc: Drew Davenport <ddavenport@chromium.org>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jouni H�gander <jouni.hogander@intel.com>
> Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d22ffd7a32dc..383c532320f9 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2205,6 +2205,7 @@
>  #define   EDP_PSR_DEBUG_MASK_LPSP              (1 << 27)
>  #define   EDP_PSR_DEBUG_MASK_MEMUP             (1 << 26)
>  #define   EDP_PSR_DEBUG_MASK_HPD               (1 << 25)
> +#define   EDP_PSR_DEBUG_MASK_FBC_MODIFY        (1 << 24)
>  #define   EDP_PSR_DEBUG_MASK_DISP_REG_WRITE    (1 << 16) /* Reserved in ICL+ */
>  #define   EDP_PSR_DEBUG_EXIT_ON_PIXEL_UNDERRUN (1 << 15) /* SKL+ */
>  
> @@ -3500,8 +3501,13 @@
>  #define   PIPE_MISC_YUV420_ENABLE		REG_BIT(27) /* glk+ */
>  #define   PIPE_MISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
>  #define   PIPE_MISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
> +#define   PIPE_MISC_PSR_MASK_PRIMARY_FLIP	REG_BIT(23) /* bdw only */
> +#define   PIPE_MISC_PSR_MASK_SPRITE_ENABLE	REG_BIT(22) /* bdw only */
> +#define   PIPE_MISC_PSR_MASK_PIPE_REG_WRITE	REG_BIT(21) /* skl+ */
> +#define   PIPE_MISC_PSR_MASK_CURSOR_MOVE	REG_BIT(21) /* bdw only */
> +#define   PIPE_MISC_PSR_MASK_VBLANK_VSYNC_INT	REG_BIT(20)
>  #define   PIPE_MISC_OUTPUT_COLORSPACE_YUV	REG_BIT(11)
> -#define   PIPE_MISC_PIXEL_ROUNDING_TRUNC		REG_BIT(8) /* tgl+ */
> +#define   PIPE_MISC_PIXEL_ROUNDING_TRUNC	REG_BIT(8) /* tgl+ */
>  /*
>   * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
>   * valid values of: 6, 8, 10 BPC.
> @@ -5550,7 +5556,7 @@
>  #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
>  						    _MTL_CHICKEN_TRANS_A, \
>  						    _MTL_CHICKEN_TRANS_B)
> -
> +#define  NO_VBLANK_MASK_IN_DEEP_PSR	REG_BIT(30) /* skl+ */
>  #define  HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
>  #define  HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
>  #define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
> -- 
> 2.39.2

-- 
Ville Syrj�l�
Intel
