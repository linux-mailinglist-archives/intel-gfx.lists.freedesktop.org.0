Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 623C5A8B3C6
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 10:29:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA5A810E243;
	Wed, 16 Apr 2025 08:29:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZGHTnA9i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D64310E243
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 08:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744792156; x=1776328156;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=s0ZwstaiplANHTak3gUM/G+CDzQv7oZYSoRkfpkg/q4=;
 b=ZGHTnA9iczfkiSQubHBYBNMHLn6xz1oARIZ0DIiwh0nKIbGXJAfAFrQ3
 KchpqRdB2Xq6FicF4GthdraSHign2lLFYbXJGNtVlrQFRGYvIU5616tgW
 qHA+DK5fTgGUt8WIa4kgiG3DhBV8gIKqjU9rc61kJBPRFwT9bI/06LdId
 /GiMCbsOADYx3hY50qylIp5iLNhutmcVPaBdykYNWuUGTjFLoIgeoqwsY
 Mo1U6d+Qh/CGH4pQotT0qgK3rV6XD5XNumHeyNxWQKJGbMHSdGlYdTSmi
 8g63o3a78Rh/NKNQybESZWdE+qlwu//IRn7cafFQ5I79yKcESeVnkDfEO Q==;
X-CSE-ConnectionGUID: WsoLcguBTLCwhJpv+2bPqg==
X-CSE-MsgGUID: mbXtwot+SMWpLZzRYkslKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46455142"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="46455142"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 01:29:06 -0700
X-CSE-ConnectionGUID: Lgv7SGwhRiGsrlUI7MlaQQ==
X-CSE-MsgGUID: nirKD5I9R6ao9etSVNlZbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="131294474"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.96])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 01:29:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 1/8] drm/i915/vrr: Add DC balance registers
In-Reply-To: <20250416062737.1766703-2-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250416062737.1766703-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250416062737.1766703-2-mitulkumar.ajitkumar.golani@intel.com>
Date: Wed, 16 Apr 2025 11:29:01 +0300
Message-ID: <87wmbkpl0y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 16 Apr 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> w=
rote:
> Add register to access DC Balance registers.

Please read the comment near the top of i915_reg.h.

BR,
Jani.


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr_regs.h | 43 +++++++++++++++++++
>  1 file changed, 43 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/=
drm/i915/display/intel_vrr_regs.h
> index 6ed0e0dc97e7..6297108f1357 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -9,6 +9,20 @@
>  #include "intel_display_reg_defs.h"
>=20=20
>  /* VRR registers */
> +#define _TRANS_VRR_VMAX_DCB_A			0x60414 /* lnl+ */
> +#define _TRANS_VRR_VMAX_DCB_B			0x61414 /* lnl+ */
> +#define TRANS_VRR_VMAX_DCB(trans)		_MMIO_TRANS((trans), \
> +							    _TRANS_VRR_VMAX_DCB_A, \
> +							    _TRANS_VRR_VMAX_DCB_B)
> +#define VRR_VMAX_DCB_MASK			REG_GENMASK(19, 0)
> +
> +#define _TRANS_VRR_FLIPLINE_DCB_A		0x60418 /* lnl+ */
> +#define _TRANS_VRR_FLIPLINE_DCB_B		0x61418 /* lnl+ */
> +#define TRANS_VRR_FLIPLINE_DCB(trans)		_MMIO_TRANS((trans), \
> +							    _TRANS_VRR_FLIPLINE_DCB_A, \
> +							    _TRANS_VRR_FLIPLINE_DCB_B)
> +#define VRR_FLIPLINE_DCB_MASK			REG_GENMASK(19, 0)
> +
>  #define _TRANS_VRR_CTL_A			0x60420
>  #define _TRANS_VRR_CTL_B			0x61420
>  #define _TRANS_VRR_CTL_C			0x62420
> @@ -17,6 +31,7 @@
>  #define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
>  #define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
>  #define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> +#define  VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28) /* lnl+ */
>  #define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>  #define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_=
MASK, (x))
>  #define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
> @@ -93,6 +108,34 @@
>  #define TRANS_VRR_STATUS2(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans,=
 _TRANS_VRR_STATUS2_A)
>  #define  VRR_STATUS2_VERT_LN_CNT_MASK		REG_GENMASK(19, 0)
>=20=20
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A		0x604c0 /* lnl+ */
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B		0x614c0 /* lnl+ */
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(trans)	_MMIO_TRANS((trans), \
> +							    _TRANS_ADAPTIVE_SYNC_DCB_CTL_A, \
> +							    _TRANS_ADAPTIVE_SYNC_DCB_CTL_B)
> +#define  ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
> +#define  ADAPTIVE_SYNC_COUNTER_RESET			REG_BIT(30)
> +#define  ADAPTIVE_SYNC_ODD_COUNTER_OVERFLOW		REG_BIT(15)
> +#define  ADAPTIVE_SYNC_EVEN_COUNTER_OVERFLOW		REG_BIT(14)
> +#define  ADAPTIVE_SYNC_ODD_LINE_COUNTER_OVERFLOW	REG_BIT(13)
> +#define  ADAPTIVE_SYNC_EVEN_LINE_COUNTER_OVERFLOW	REG_BIT(12)
> +
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4 /* lnl+ */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4 /* lnl+ */
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS((trans), \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
> +#define  VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
> +#define  VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A		0x604d8 /* lnl+ */
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B		0x614d8 /* lnl+ */
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(trans)	_MMIO_TRANS((trans), \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_B)
> +#define  VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define  VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +
>  #define _TRANS_PUSH_A				0x60a70
>  #define _TRANS_PUSH_B				0x61a70
>  #define _TRANS_PUSH_C				0x62a70

--=20
Jani Nikula, Intel
