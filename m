Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2EA45116E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 20:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2236E3B2;
	Mon, 15 Nov 2021 19:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACCAD6E3B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 19:05:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="220398470"
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="220398470"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 11:05:34 -0800
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="566727163"
Received: from rakeshr1-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.37.176])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 11:05:34 -0800
Date: Mon, 15 Nov 2021 14:05:32 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YZKvfGIF32iMom8i@intel.com>
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211112193813.8224-9-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915: Clean up
 DPINVGTT/VLV_DPFLIPSTAT bits
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

On Fri, Nov 12, 2021 at 09:38:12PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Use REG_BIT() & co. for DPINVTT/VLV_DPFLIPSTAT bits.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h | 94 ++++++++++++++++-----------------
>  2 files changed, 48 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index eb8c92324aee..1021f7ae0dda 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3013,7 +3013,7 @@ static void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  	if (IS_CHERRYVIEW(dev_priv))
>  		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_CHV);
>  	else
> -		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK);
> +		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
>  
>  	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
>  	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 6ba5ab277675..0ceb88828d93 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6358,55 +6358,55 @@ enum {
>  #define   PIPE_STATUS_PORT_UNDERRUN_XELPD		REG_BIT(26)
>  
>  #define VLV_DPFLIPSTAT				_MMIO(VLV_DISPLAY_BASE + 0x70028)
> -#define   PIPEB_LINE_COMPARE_INT_EN		(1 << 29)
> -#define   PIPEB_HLINE_INT_EN			(1 << 28)
> -#define   PIPEB_VBLANK_INT_EN			(1 << 27)
> -#define   SPRITED_FLIP_DONE_INT_EN		(1 << 26)
> -#define   SPRITEC_FLIP_DONE_INT_EN		(1 << 25)
> -#define   PLANEB_FLIP_DONE_INT_EN		(1 << 24)
> -#define   PIPE_PSR_INT_EN			(1 << 22)
> -#define   PIPEA_LINE_COMPARE_INT_EN		(1 << 21)
> -#define   PIPEA_HLINE_INT_EN			(1 << 20)
> -#define   PIPEA_VBLANK_INT_EN			(1 << 19)
> -#define   SPRITEB_FLIP_DONE_INT_EN		(1 << 18)
> -#define   SPRITEA_FLIP_DONE_INT_EN		(1 << 17)
> -#define   PLANEA_FLIPDONE_INT_EN		(1 << 16)
> -#define   PIPEC_LINE_COMPARE_INT_EN		(1 << 13)
> -#define   PIPEC_HLINE_INT_EN			(1 << 12)
> -#define   PIPEC_VBLANK_INT_EN			(1 << 11)
> -#define   SPRITEF_FLIPDONE_INT_EN		(1 << 10)
> -#define   SPRITEE_FLIPDONE_INT_EN		(1 << 9)
> -#define   PLANEC_FLIPDONE_INT_EN		(1 << 8)
> +#define   PIPEB_LINE_COMPARE_INT_EN			REG_BIT(29)
> +#define   PIPEB_HLINE_INT_EN			REG_BIT(28)
> +#define   PIPEB_VBLANK_INT_EN			REG_BIT(27)
> +#define   SPRITED_FLIP_DONE_INT_EN			REG_BIT(26)
> +#define   SPRITEC_FLIP_DONE_INT_EN			REG_BIT(25)
> +#define   PLANEB_FLIP_DONE_INT_EN			REG_BIT(24)
> +#define   PIPE_PSR_INT_EN			REG_BIT(22)
> +#define   PIPEA_LINE_COMPARE_INT_EN			REG_BIT(21)
> +#define   PIPEA_HLINE_INT_EN			REG_BIT(20)
> +#define   PIPEA_VBLANK_INT_EN			REG_BIT(19)
> +#define   SPRITEB_FLIP_DONE_INT_EN			REG_BIT(18)
> +#define   SPRITEA_FLIP_DONE_INT_EN			REG_BIT(17)
> +#define   PLANEA_FLIPDONE_INT_EN			REG_BIT(16)
> +#define   PIPEC_LINE_COMPARE_INT_EN			REG_BIT(13)
> +#define   PIPEC_HLINE_INT_EN			REG_BIT(12)
> +#define   PIPEC_VBLANK_INT_EN			REG_BIT(11)
> +#define   SPRITEF_FLIPDONE_INT_EN			REG_BIT(10)
> +#define   SPRITEE_FLIPDONE_INT_EN			REG_BIT(9)
> +#define   PLANEC_FLIPDONE_INT_EN			REG_BIT(8)
>  
>  #define DPINVGTT				_MMIO(VLV_DISPLAY_BASE + 0x7002c) /* VLV/CHV only */
> -#define   SPRITEF_INVALID_GTT_INT_EN		(1 << 27)
> -#define   SPRITEE_INVALID_GTT_INT_EN		(1 << 26)
> -#define   PLANEC_INVALID_GTT_INT_EN		(1 << 25)
> -#define   CURSORC_INVALID_GTT_INT_EN		(1 << 24)
> -#define   CURSORB_INVALID_GTT_INT_EN		(1 << 23)
> -#define   CURSORA_INVALID_GTT_INT_EN		(1 << 22)
> -#define   SPRITED_INVALID_GTT_INT_EN		(1 << 21)
> -#define   SPRITEC_INVALID_GTT_INT_EN		(1 << 20)
> -#define   PLANEB_INVALID_GTT_INT_EN		(1 << 19)
> -#define   SPRITEB_INVALID_GTT_INT_EN		(1 << 18)
> -#define   SPRITEA_INVALID_GTT_INT_EN		(1 << 17)
> -#define   PLANEA_INVALID_GTT_INT_EN		(1 << 16)
> -#define   DPINVGTT_EN_MASK			0xff0000
> -#define   DPINVGTT_EN_MASK_CHV			0xfff0000
> -#define   SPRITEF_INVALID_GTT_STATUS		(1 << 11)
> -#define   SPRITEE_INVALID_GTT_STATUS		(1 << 10)
> -#define   PLANEC_INVALID_GTT_STATUS		(1 << 9)
> -#define   CURSORC_INVALID_GTT_STATUS		(1 << 8)
> -#define   CURSORB_INVALID_GTT_STATUS		(1 << 7)
> -#define   CURSORA_INVALID_GTT_STATUS		(1 << 6)
> -#define   SPRITED_INVALID_GTT_STATUS		(1 << 5)
> -#define   SPRITEC_INVALID_GTT_STATUS		(1 << 4)
> -#define   PLANEB_INVALID_GTT_STATUS		(1 << 3)
> -#define   SPRITEB_INVALID_GTT_STATUS		(1 << 2)
> -#define   SPRITEA_INVALID_GTT_STATUS		(1 << 1)
> -#define   PLANEA_INVALID_GTT_STATUS		(1 << 0)
> -#define   DPINVGTT_STATUS_MASK			0xff
> -#define   DPINVGTT_STATUS_MASK_CHV		0xfff
> +#define   DPINVGTT_EN_MASK_CHV				REG_GENMASK(27, 16)
> +#define   DPINVGTT_EN_MASK_VLV				REG_GENMASK(23, 16)
> +#define   SPRITEF_INVALID_GTT_INT_EN			REG_BIT(27)
> +#define   SPRITEE_INVALID_GTT_INT_EN			REG_BIT(26)
> +#define   PLANEC_INVALID_GTT_INT_EN			REG_BIT(25)
> +#define   CURSORC_INVALID_GTT_INT_EN			REG_BIT(24)
> +#define   CURSORB_INVALID_GTT_INT_EN			REG_BIT(23)
> +#define   CURSORA_INVALID_GTT_INT_EN			REG_BIT(22)
> +#define   SPRITED_INVALID_GTT_INT_EN			REG_BIT(21)
> +#define   SPRITEC_INVALID_GTT_INT_EN			REG_BIT(20)
> +#define   PLANEB_INVALID_GTT_INT_EN			REG_BIT(19)
> +#define   SPRITEB_INVALID_GTT_INT_EN			REG_BIT(18)
> +#define   SPRITEA_INVALID_GTT_INT_EN			REG_BIT(17)
> +#define   PLANEA_INVALID_GTT_INT_EN			REG_BIT(16)
> +#define   DPINVGTT_STATUS_MASK_CHV			REG_GENMASK(11, 0)
> +#define   DPINVGTT_STATUS_MASK_VLV			REG_GENMASK(7, 0)
> +#define   SPRITEF_INVALID_GTT_STATUS			REG_BIT(11)
> +#define   SPRITEE_INVALID_GTT_STATUS			REG_BIT(10)
> +#define   PLANEC_INVALID_GTT_STATUS			REG_BIT(9)
> +#define   CURSORC_INVALID_GTT_STATUS			REG_BIT(8)
> +#define   CURSORB_INVALID_GTT_STATUS			REG_BIT(7)
> +#define   CURSORA_INVALID_GTT_STATUS			REG_BIT(6)
> +#define   SPRITED_INVALID_GTT_STATUS			REG_BIT(5)
> +#define   SPRITEC_INVALID_GTT_STATUS			REG_BIT(4)
> +#define   PLANEB_INVALID_GTT_STATUS			REG_BIT(3)
> +#define   SPRITEB_INVALID_GTT_STATUS			REG_BIT(2)
> +#define   SPRITEA_INVALID_GTT_STATUS			REG_BIT(1)
> +#define   PLANEA_INVALID_GTT_STATUS			REG_BIT(0)
>  
>  #define DSPARB			_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70030)
>  #define   DSPARB_CSTART_MASK	(0x7f << 7)
> -- 
> 2.32.0
> 
