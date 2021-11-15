Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B71451195
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 20:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6EA989DC9;
	Mon, 15 Nov 2021 19:08:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CEAA89D5C
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 19:07:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="214234510"
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="214234510"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 11:07:58 -0800
X-IronPort-AV: E=Sophos;i="5.87,237,1631602800"; d="scan'208";a="494140658"
Received: from rakeshr1-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.37.176])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 11:07:56 -0800
Date: Mon, 15 Nov 2021 14:07:54 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YZKwCkX0sppkHGJX@intel.com>
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211112193813.8224-8-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Clean up CRC register defines
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

On Fri, Nov 12, 2021 at 09:38:11PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Use REG_BIT() & co. for the CRC registers.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 77 ++++++++++++++++++---------------
>  1 file changed, 41 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 211e2b415e50..6ba5ab277675 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4393,47 +4393,52 @@ enum {
>  
>  /* Pipe A CRC regs */
>  #define _PIPE_CRC_CTL_A			0x60050
> -#define   PIPE_CRC_ENABLE		(1 << 31)
> +#define   PIPE_CRC_ENABLE		REG_BIT(31)
>  /* skl+ source selection */
> -#define   PIPE_CRC_SOURCE_PLANE_1_SKL	(0 << 28)
> -#define   PIPE_CRC_SOURCE_PLANE_2_SKL	(2 << 28)
> -#define   PIPE_CRC_SOURCE_DMUX_SKL	(4 << 28)
> -#define   PIPE_CRC_SOURCE_PLANE_3_SKL	(6 << 28)
> -#define   PIPE_CRC_SOURCE_PLANE_4_SKL	(7 << 28)
> -#define   PIPE_CRC_SOURCE_PLANE_5_SKL	(5 << 28)
> -#define   PIPE_CRC_SOURCE_PLANE_6_SKL	(3 << 28)
> -#define   PIPE_CRC_SOURCE_PLANE_7_SKL	(1 << 28)
> +#define   PIPE_CRC_SOURCE_MASK_SKL	REG_GENMASK(30, 28)
> +#define   PIPE_CRC_SOURCE_PLANE_1_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 0)
> +#define   PIPE_CRC_SOURCE_PLANE_2_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 2)
> +#define   PIPE_CRC_SOURCE_DMUX_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 4)
> +#define   PIPE_CRC_SOURCE_PLANE_3_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 6)
> +#define   PIPE_CRC_SOURCE_PLANE_4_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 7)
> +#define   PIPE_CRC_SOURCE_PLANE_5_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 5)
> +#define   PIPE_CRC_SOURCE_PLANE_6_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 3)
> +#define   PIPE_CRC_SOURCE_PLANE_7_SKL	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_SKL, 1)
>  /* ivb+ source selection */
> -#define   PIPE_CRC_SOURCE_PRIMARY_IVB	(0 << 29)
> -#define   PIPE_CRC_SOURCE_SPRITE_IVB	(1 << 29)
> -#define   PIPE_CRC_SOURCE_PF_IVB	(2 << 29)
> +#define   PIPE_CRC_SOURCE_MASK_IVB	REG_GENMASK(30, 29)
> +#define   PIPE_CRC_SOURCE_PRIMARY_IVB	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_IVB, 0)
> +#define   PIPE_CRC_SOURCE_SPRITE_IVB	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_IVB, 1)
> +#define   PIPE_CRC_SOURCE_PF_IVB	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_IVB, 2)
>  /* ilk+ source selection */
> -#define   PIPE_CRC_SOURCE_PRIMARY_ILK	(0 << 28)
> -#define   PIPE_CRC_SOURCE_SPRITE_ILK	(1 << 28)
> -#define   PIPE_CRC_SOURCE_PIPE_ILK	(2 << 28)
> -/* embedded DP port on the north display block, reserved on ivb */
> -#define   PIPE_CRC_SOURCE_PORT_A_ILK	(4 << 28)
> -#define   PIPE_CRC_SOURCE_FDI_ILK	(5 << 28) /* reserved on ivb */
> +#define   PIPE_CRC_SOURCE_MASK_ILK	REG_GENMASK(30, 28)
> +#define   PIPE_CRC_SOURCE_PRIMARY_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 0)
> +#define   PIPE_CRC_SOURCE_SPRITE_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 1)
> +#define   PIPE_CRC_SOURCE_PIPE_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 2)
> +/* embedded DP port on the north display block */
> +#define   PIPE_CRC_SOURCE_PORT_A_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 4)
> +#define   PIPE_CRC_SOURCE_FDI_ILK	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_ILK, 5)
>  /* vlv source selection */
> -#define   PIPE_CRC_SOURCE_PIPE_VLV	(0 << 27)
> -#define   PIPE_CRC_SOURCE_HDMIB_VLV	(1 << 27)
> -#define   PIPE_CRC_SOURCE_HDMIC_VLV	(2 << 27)
> +#define   PIPE_CRC_SOURCE_MASK_VLV	REG_GENMASK(30, 27)
> +#define   PIPE_CRC_SOURCE_PIPE_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 0)
> +#define   PIPE_CRC_SOURCE_HDMIB_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 1)
> +#define   PIPE_CRC_SOURCE_HDMIC_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 2)
>  /* with DP port the pipe source is invalid */
> -#define   PIPE_CRC_SOURCE_DP_D_VLV	(3 << 27)
> -#define   PIPE_CRC_SOURCE_DP_B_VLV	(6 << 27)
> -#define   PIPE_CRC_SOURCE_DP_C_VLV	(7 << 27)
> +#define   PIPE_CRC_SOURCE_DP_D_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 3)
> +#define   PIPE_CRC_SOURCE_DP_B_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 6)
> +#define   PIPE_CRC_SOURCE_DP_C_VLV	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_VLV, 7)
>  /* gen3+ source selection */
> -#define   PIPE_CRC_SOURCE_PIPE_I9XX	(0 << 28)
> -#define   PIPE_CRC_SOURCE_SDVOB_I9XX	(1 << 28)
> -#define   PIPE_CRC_SOURCE_SDVOC_I9XX	(2 << 28)
> +#define   PIPE_CRC_SOURCE_MASK_I9XX	REG_GENMASK(30, 28)
> +#define   PIPE_CRC_SOURCE_PIPE_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 0)
> +#define   PIPE_CRC_SOURCE_SDVOB_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 1)
> +#define   PIPE_CRC_SOURCE_SDVOC_I9XX	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 2)
>  /* with DP/TV port the pipe source is invalid */
> -#define   PIPE_CRC_SOURCE_DP_D_G4X	(3 << 28)
> -#define   PIPE_CRC_SOURCE_TV_PRE	(4 << 28)
> -#define   PIPE_CRC_SOURCE_TV_POST	(5 << 28)
> -#define   PIPE_CRC_SOURCE_DP_B_G4X	(6 << 28)
> -#define   PIPE_CRC_SOURCE_DP_C_G4X	(7 << 28)
> +#define   PIPE_CRC_SOURCE_DP_D_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 3)
> +#define   PIPE_CRC_SOURCE_TV_PRE	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 4)
> +#define   PIPE_CRC_SOURCE_TV_POST	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 5)
> +#define   PIPE_CRC_SOURCE_DP_B_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 6)
> +#define   PIPE_CRC_SOURCE_DP_C_G4X	REG_FIELD_PREP(PIPE_CRC_SOURCE_MASK_I9XX, 7)
>  /* gen2 doesn't have source selection bits */
> -#define   PIPE_CRC_INCLUDE_BORDER_I8XX	(1 << 30)
> +#define   PIPE_CRC_INCLUDE_BORDER_I8XX	REG_BIT(30)
>  
>  #define _PIPE_CRC_RES_1_A_IVB		0x60064
>  #define _PIPE_CRC_RES_2_A_IVB		0x60068
> @@ -5087,9 +5092,9 @@ enum {
>  #define PORT_DFT2_G4X		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61154)
>  #define   DC_BALANCE_RESET_VLV			(1 << 31)
>  #define   PIPE_SCRAMBLE_RESET_MASK		((1 << 14) | (0x3 << 0))
> -#define   PIPE_C_SCRAMBLE_RESET			(1 << 14) /* chv */
> -#define   PIPE_B_SCRAMBLE_RESET			(1 << 1)
> -#define   PIPE_A_SCRAMBLE_RESET			(1 << 0)
> +#define   PIPE_C_SCRAMBLE_RESET			REG_BIT(14) /* chv */
> +#define   PIPE_B_SCRAMBLE_RESET			REG_BIT(1)
> +#define   PIPE_A_SCRAMBLE_RESET			REG_BIT(0)
>  
>  /* Gen 3 SDVO bits: */
>  #define   SDVO_ENABLE				(1 << 31)
> -- 
> 2.32.0
> 
