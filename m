Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 668B36C1176
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 13:06:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C397D10E3F9;
	Mon, 20 Mar 2023 12:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31DAD88647
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679313953; x=1710849953;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ssNGnLqCDPe6w5/vlxoSGZetbJ/ZZnRG/1A3a9TXxPg=;
 b=ZYYc+yo/T446LiseZrDcAj0K54t1ZEYRjbFp/gonC6p85Sm6NICUV1ul
 68SgPzPDw0ONSyfqjxA7WLtKt7sMU6Mdb74dSizSBcBZsvPHsV05HbLjH
 sMvW8Vxwz3Qy1jy/WZq/1hIKQu4BMyF6dpnqoK3OhlR4lpICMvxsdRM6V
 sIh1RB829I/OLAXYWI1ZhNNRqMdzVK6gJVmjXD0e1Mnci98XlJ12BJhZY
 v34yKVCJetvSprxmjfHxYeUxHjVCIRXR/EvBXOCLK+55SlKZGleJn3vaz
 ylZCg2joXX4zDXZqBuLKa58txD7vJVWRMKN+NlIJkSKlzrJG84Xdd8ZwW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="341001248"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="341001248"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 05:05:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="631103488"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="631103488"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 05:05:50 -0700
Date: Mon, 20 Mar 2023 14:05:46 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZBhJyClkzHgf2xjJ@ideak-desk.fi.intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
 <20230320095438.17328-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230320095438.17328-7-ville.syrjala@linux.intel.com>
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
Reply-To: imre.deak@intel.com
Cc: Drew Davenport <ddavenport@chromium.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 20, 2023 at 11:54:38AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
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
> 
> Cc: Manasi Navare <navaremanasi@google.com>
> Cc: Drew Davenport <ddavenport@chromium.org>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

'Allow Double Buffer Update Disable' BIT(24) on tgl+ looks also related
to these flags.

The patchset looks ok to me:
Reviewed-by: Imre Deak <imre.deak@intel.com>

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
> 
