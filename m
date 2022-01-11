Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF4948AEE3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 14:50:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DDFC10E873;
	Tue, 11 Jan 2022 13:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8400610E873
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 13:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641909012; x=1673445012;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=D1YV8mQeV9jSOvwAqylFFUeW3r5W6r98UdHwKsijPUs=;
 b=Nj2aS11CkU/atDx4MShIBrKQIDBhYMlzoQAjaoW9gjGVRw8Em7vRvaUT
 9D94LxpbjvPQrsBjRlWZ0KuSn5WqfBEbwY3ubaxgUFFDTFnGFoxTI9YNs
 SYMNSsbN7mVJjtPVzR9N0G7v9zBW4MURoefEcnPw0f7TaWRD7eGGZiOjb
 yUunRSS8fu/jEL1ZE0unL//vAk1aLOeGXbPoRge6eZmyRm67ixXgupJya
 y/sv17xDoOQOF6rkyQQWOTgpYhDraNOyiqzaLYcLAw+CCSrsacrFztViw
 Oi3o1KzBb9pNLpBPXMLEV+ekDKslIqCJgCz9BKM/sPXbjgU1Dw8pucijz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="242297660"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="242297660"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 05:50:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="515097300"
Received: from sjobrien-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.25.241])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2022 05:50:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220111051600.3429104-12-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <20220111051600.3429104-12-matthew.d.roper@intel.com>
Date: Tue, 11 Jan 2022 15:50:07 +0200
Message-ID: <87a6g28jqo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 11/11] drm/i915: Drop unused _PORT3 and
 _PORT4 TC phy register offsets
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

On Mon, 10 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> All MG/DKL PHY register regions are evenly spaced offset-wise (0x168000,
> 0x169000, 0x16A000, 0x16B000) so the _MMIO_PORT() macro we use to access
> their registers only needs the first two offsets.  We can drop the
> _PORT3 and _PORT4 offsets which are never directly referenced.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_tc_phy_regs.h  | 64 -------------------
>  1 file changed, 64 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h b/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
> index 87b74c3c35a7..5a545086f959 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_tc_phy_regs.h
> @@ -15,10 +15,6 @@
>  #define MG_TX_LINK_PARAMS_TX1LN1_PORT1		0x16852C
>  #define MG_TX_LINK_PARAMS_TX1LN0_PORT2		0x16912C
>  #define MG_TX_LINK_PARAMS_TX1LN1_PORT2		0x16952C
> -#define MG_TX_LINK_PARAMS_TX1LN0_PORT3		0x16A12C
> -#define MG_TX_LINK_PARAMS_TX1LN1_PORT3		0x16A52C
> -#define MG_TX_LINK_PARAMS_TX1LN0_PORT4		0x16B12C
> -#define MG_TX_LINK_PARAMS_TX1LN1_PORT4		0x16B52C
>  #define MG_TX1_LINK_PARAMS(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_TX_LINK_PARAMS_TX1LN0_PORT1, \
>  		       MG_TX_LINK_PARAMS_TX1LN0_PORT2, \
> @@ -28,10 +24,6 @@
>  #define MG_TX_LINK_PARAMS_TX2LN1_PORT1		0x1684AC
>  #define MG_TX_LINK_PARAMS_TX2LN0_PORT2		0x1690AC
>  #define MG_TX_LINK_PARAMS_TX2LN1_PORT2		0x1694AC
> -#define MG_TX_LINK_PARAMS_TX2LN0_PORT3		0x16A0AC
> -#define MG_TX_LINK_PARAMS_TX2LN1_PORT3		0x16A4AC
> -#define MG_TX_LINK_PARAMS_TX2LN0_PORT4		0x16B0AC
> -#define MG_TX_LINK_PARAMS_TX2LN1_PORT4		0x16B4AC
>  #define MG_TX2_LINK_PARAMS(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_TX_LINK_PARAMS_TX2LN0_PORT1, \
>  		       MG_TX_LINK_PARAMS_TX2LN0_PORT2, \
> @@ -42,10 +34,6 @@
>  #define MG_TX_PISO_READLOAD_TX1LN1_PORT1		0x16854C
>  #define MG_TX_PISO_READLOAD_TX1LN0_PORT2		0x16914C
>  #define MG_TX_PISO_READLOAD_TX1LN1_PORT2		0x16954C
> -#define MG_TX_PISO_READLOAD_TX1LN0_PORT3		0x16A14C
> -#define MG_TX_PISO_READLOAD_TX1LN1_PORT3		0x16A54C
> -#define MG_TX_PISO_READLOAD_TX1LN0_PORT4		0x16B14C
> -#define MG_TX_PISO_READLOAD_TX1LN1_PORT4		0x16B54C
>  #define MG_TX1_PISO_READLOAD(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_TX_PISO_READLOAD_TX1LN0_PORT1, \
>  		       MG_TX_PISO_READLOAD_TX1LN0_PORT2, \
> @@ -55,10 +43,6 @@
>  #define MG_TX_PISO_READLOAD_TX2LN1_PORT1		0x1684CC
>  #define MG_TX_PISO_READLOAD_TX2LN0_PORT2		0x1690CC
>  #define MG_TX_PISO_READLOAD_TX2LN1_PORT2		0x1694CC
> -#define MG_TX_PISO_READLOAD_TX2LN0_PORT3		0x16A0CC
> -#define MG_TX_PISO_READLOAD_TX2LN1_PORT3		0x16A4CC
> -#define MG_TX_PISO_READLOAD_TX2LN0_PORT4		0x16B0CC
> -#define MG_TX_PISO_READLOAD_TX2LN1_PORT4		0x16B4CC
>  #define MG_TX2_PISO_READLOAD(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_TX_PISO_READLOAD_TX2LN0_PORT1, \
>  		       MG_TX_PISO_READLOAD_TX2LN0_PORT2, \
> @@ -69,10 +53,6 @@
>  #define MG_TX_SWINGCTRL_TX1LN1_PORT1		0x168548
>  #define MG_TX_SWINGCTRL_TX1LN0_PORT2		0x169148
>  #define MG_TX_SWINGCTRL_TX1LN1_PORT2		0x169548
> -#define MG_TX_SWINGCTRL_TX1LN0_PORT3		0x16A148
> -#define MG_TX_SWINGCTRL_TX1LN1_PORT3		0x16A548
> -#define MG_TX_SWINGCTRL_TX1LN0_PORT4		0x16B148
> -#define MG_TX_SWINGCTRL_TX1LN1_PORT4		0x16B548
>  #define MG_TX1_SWINGCTRL(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_TX_SWINGCTRL_TX1LN0_PORT1, \
>  		       MG_TX_SWINGCTRL_TX1LN0_PORT2, \
> @@ -82,10 +62,6 @@
>  #define MG_TX_SWINGCTRL_TX2LN1_PORT1		0x1684C8
>  #define MG_TX_SWINGCTRL_TX2LN0_PORT2		0x1690C8
>  #define MG_TX_SWINGCTRL_TX2LN1_PORT2		0x1694C8
> -#define MG_TX_SWINGCTRL_TX2LN0_PORT3		0x16A0C8
> -#define MG_TX_SWINGCTRL_TX2LN1_PORT3		0x16A4C8
> -#define MG_TX_SWINGCTRL_TX2LN0_PORT4		0x16B0C8
> -#define MG_TX_SWINGCTRL_TX2LN1_PORT4		0x16B4C8
>  #define MG_TX2_SWINGCTRL(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_TX_SWINGCTRL_TX2LN0_PORT1, \
>  		       MG_TX_SWINGCTRL_TX2LN0_PORT2, \
> @@ -110,10 +86,6 @@
>  #define MG_TX_DRVCTRL_TX2LN1_PORT1			0x1684C4
>  #define MG_TX_DRVCTRL_TX2LN0_PORT2			0x1690C4
>  #define MG_TX_DRVCTRL_TX2LN1_PORT2			0x1694C4
> -#define MG_TX_DRVCTRL_TX2LN0_PORT3			0x16A0C4
> -#define MG_TX_DRVCTRL_TX2LN1_PORT3			0x16A4C4
> -#define MG_TX_DRVCTRL_TX2LN0_PORT4			0x16B0C4
> -#define MG_TX_DRVCTRL_TX2LN1_PORT4			0x16B4C4
>  #define MG_TX2_DRVCTRL(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DRVCTRL_TX2LN0_PORT1, \
>  		       MG_TX_DRVCTRL_TX2LN0_PORT2, \
> @@ -130,10 +102,6 @@
>  #define MG_CLKHUB_LN1_PORT1			0x16879C
>  #define MG_CLKHUB_LN0_PORT2			0x16939C
>  #define MG_CLKHUB_LN1_PORT2			0x16979C
> -#define MG_CLKHUB_LN0_PORT3			0x16A39C
> -#define MG_CLKHUB_LN1_PORT3			0x16A79C
> -#define MG_CLKHUB_LN0_PORT4			0x16B39C
> -#define MG_CLKHUB_LN1_PORT4			0x16B79C
>  #define MG_CLKHUB(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_CLKHUB_LN0_PORT1, \
>  		       MG_CLKHUB_LN0_PORT2, \
> @@ -144,10 +112,6 @@
>  #define MG_TX_DCC_TX1LN1_PORT1			0x168510
>  #define MG_TX_DCC_TX1LN0_PORT2			0x169110
>  #define MG_TX_DCC_TX1LN1_PORT2			0x169510
> -#define MG_TX_DCC_TX1LN0_PORT3			0x16A110
> -#define MG_TX_DCC_TX1LN1_PORT3			0x16A510
> -#define MG_TX_DCC_TX1LN0_PORT4			0x16B110
> -#define MG_TX_DCC_TX1LN1_PORT4			0x16B510
>  #define MG_TX1_DCC(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DCC_TX1LN0_PORT1, \
>  		       MG_TX_DCC_TX1LN0_PORT2, \
> @@ -156,10 +120,6 @@
>  #define MG_TX_DCC_TX2LN1_PORT1			0x168490
>  #define MG_TX_DCC_TX2LN0_PORT2			0x169090
>  #define MG_TX_DCC_TX2LN1_PORT2			0x169490
> -#define MG_TX_DCC_TX2LN0_PORT3			0x16A090
> -#define MG_TX_DCC_TX2LN1_PORT3			0x16A490
> -#define MG_TX_DCC_TX2LN0_PORT4			0x16B090
> -#define MG_TX_DCC_TX2LN1_PORT4			0x16B490
>  #define MG_TX2_DCC(ln, tc_port) \
>  	MG_PHY_PORT_LN(ln, tc_port, MG_TX_DCC_TX2LN0_PORT1, \
>  		       MG_TX_DCC_TX2LN0_PORT2, \
> @@ -172,10 +132,6 @@
>  #define MG_DP_MODE_LN1_ACU_PORT1			0x1687A0
>  #define MG_DP_MODE_LN0_ACU_PORT2			0x1693A0
>  #define MG_DP_MODE_LN1_ACU_PORT2			0x1697A0
> -#define MG_DP_MODE_LN0_ACU_PORT3			0x16A3A0
> -#define MG_DP_MODE_LN1_ACU_PORT3			0x16A7A0
> -#define MG_DP_MODE_LN0_ACU_PORT4			0x16B3A0
> -#define MG_DP_MODE_LN1_ACU_PORT4			0x16B7A0
>  #define MG_DP_MODE(ln, tc_port)	\
>  	MG_PHY_PORT_LN(ln, tc_port, MG_DP_MODE_LN0_ACU_PORT1, \
>  		       MG_DP_MODE_LN0_ACU_PORT2, \
> @@ -200,8 +156,6 @@
>  
>  #define _MG_REFCLKIN_CTL_PORT1				0x16892C
>  #define _MG_REFCLKIN_CTL_PORT2				0x16992C
> -#define _MG_REFCLKIN_CTL_PORT3				0x16A92C
> -#define _MG_REFCLKIN_CTL_PORT4				0x16B92C
>  #define   MG_REFCLKIN_CTL_OD_2_MUX(x)			((x) << 8)
>  #define   MG_REFCLKIN_CTL_OD_2_MUX_MASK			(0x7 << 8)
>  #define MG_REFCLKIN_CTL(tc_port) _MMIO_PORT((tc_port), \
> @@ -210,8 +164,6 @@
>  
>  #define _MG_CLKTOP2_CORECLKCTL1_PORT1			0x1688D8
>  #define _MG_CLKTOP2_CORECLKCTL1_PORT2			0x1698D8
> -#define _MG_CLKTOP2_CORECLKCTL1_PORT3			0x16A8D8
> -#define _MG_CLKTOP2_CORECLKCTL1_PORT4			0x16B8D8
>  #define   MG_CLKTOP2_CORECLKCTL1_B_DIVRATIO(x)		((x) << 16)
>  #define   MG_CLKTOP2_CORECLKCTL1_B_DIVRATIO_MASK	(0xff << 16)
>  #define   MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(x)		((x) << 8)
> @@ -222,8 +174,6 @@
>  
>  #define _MG_CLKTOP2_HSCLKCTL_PORT1			0x1688D4
>  #define _MG_CLKTOP2_HSCLKCTL_PORT2			0x1698D4
> -#define _MG_CLKTOP2_HSCLKCTL_PORT3			0x16A8D4
> -#define _MG_CLKTOP2_HSCLKCTL_PORT4			0x16B8D4
>  #define   MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL(x)		((x) << 16)
>  #define   MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK	(0x1 << 16)
>  #define   MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL(x)	((x) << 14)
> @@ -242,8 +192,6 @@
>  
>  #define _MG_PLL_DIV0_PORT1				0x168A00
>  #define _MG_PLL_DIV0_PORT2				0x169A00
> -#define _MG_PLL_DIV0_PORT3				0x16AA00
> -#define _MG_PLL_DIV0_PORT4				0x16BA00
>  #define   MG_PLL_DIV0_FRACNEN_H				(1 << 30)
>  #define   MG_PLL_DIV0_FBDIV_FRAC_MASK			(0x3fffff << 8)
>  #define   MG_PLL_DIV0_FBDIV_FRAC_SHIFT			8
> @@ -255,8 +203,6 @@
>  
>  #define _MG_PLL_DIV1_PORT1				0x168A04
>  #define _MG_PLL_DIV1_PORT2				0x169A04
> -#define _MG_PLL_DIV1_PORT3				0x16AA04
> -#define _MG_PLL_DIV1_PORT4				0x16BA04
>  #define   MG_PLL_DIV1_IREF_NDIVRATIO(x)			((x) << 16)
>  #define   MG_PLL_DIV1_DITHER_DIV_1			(0 << 12)
>  #define   MG_PLL_DIV1_DITHER_DIV_2			(1 << 12)
> @@ -270,8 +216,6 @@
>  
>  #define _MG_PLL_LF_PORT1				0x168A08
>  #define _MG_PLL_LF_PORT2				0x169A08
> -#define _MG_PLL_LF_PORT3				0x16AA08
> -#define _MG_PLL_LF_PORT4				0x16BA08
>  #define   MG_PLL_LF_TDCTARGETCNT(x)			((x) << 24)
>  #define   MG_PLL_LF_AFCCNTSEL_256			(0 << 20)
>  #define   MG_PLL_LF_AFCCNTSEL_512			(1 << 20)
> @@ -283,8 +227,6 @@
>  
>  #define _MG_PLL_FRAC_LOCK_PORT1				0x168A0C
>  #define _MG_PLL_FRAC_LOCK_PORT2				0x169A0C
> -#define _MG_PLL_FRAC_LOCK_PORT3				0x16AA0C
> -#define _MG_PLL_FRAC_LOCK_PORT4				0x16BA0C
>  #define   MG_PLL_FRAC_LOCK_TRUELOCK_CRIT_32		(1 << 18)
>  #define   MG_PLL_FRAC_LOCK_EARLYLOCK_CRIT_32		(1 << 16)
>  #define   MG_PLL_FRAC_LOCK_LOCKTHRESH(x)		((x) << 11)
> @@ -297,8 +239,6 @@
>  
>  #define _MG_PLL_SSC_PORT1				0x168A10
>  #define _MG_PLL_SSC_PORT2				0x169A10
> -#define _MG_PLL_SSC_PORT3				0x16AA10
> -#define _MG_PLL_SSC_PORT4				0x16BA10
>  #define   MG_PLL_SSC_EN					(1 << 28)
>  #define   MG_PLL_SSC_TYPE(x)				((x) << 26)
>  #define   MG_PLL_SSC_STEPLENGTH(x)			((x) << 16)
> @@ -310,8 +250,6 @@
>  
>  #define _MG_PLL_BIAS_PORT1				0x168A14
>  #define _MG_PLL_BIAS_PORT2				0x169A14
> -#define _MG_PLL_BIAS_PORT3				0x16AA14
> -#define _MG_PLL_BIAS_PORT4				0x16BA14
>  #define   MG_PLL_BIAS_BIAS_GB_SEL(x)			((x) << 30)
>  #define   MG_PLL_BIAS_BIAS_GB_SEL_MASK			(0x3 << 30)
>  #define   MG_PLL_BIAS_INIT_DCOAMP(x)			((x) << 24)
> @@ -330,8 +268,6 @@
>  
>  #define _MG_PLL_TDC_COLDST_BIAS_PORT1			0x168A18
>  #define _MG_PLL_TDC_COLDST_BIAS_PORT2			0x169A18
> -#define _MG_PLL_TDC_COLDST_BIAS_PORT3			0x16AA18
> -#define _MG_PLL_TDC_COLDST_BIAS_PORT4			0x16BA18
>  #define   MG_PLL_TDC_COLDST_IREFINT_EN			(1 << 27)
>  #define   MG_PLL_TDC_COLDST_REFBIAS_START_PULSE_W(x)	((x) << 17)
>  #define   MG_PLL_TDC_COLDST_COLDSTART			(1 << 16)

-- 
Jani Nikula, Intel Open Source Graphics Center
