Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5A2AB4C8C
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 09:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB09910E331;
	Tue, 13 May 2025 07:15:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AaoRzsdf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D56510E331;
 Tue, 13 May 2025 07:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747120555; x=1778656555;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Tz0RMDmapjJl7jzGnUXCXtly+56hUWNeYGWKM25RqjY=;
 b=AaoRzsdfwyUVPnYo+lfS74Hxly19bPaahGO1VBZH+kyNDHisl/JRjGzO
 VpUpOsTmxayFXbyG+g9f6Oi2swUUGy/jdWZlrou2hlQeS4KtW687w5Mu/
 THFk6ro91QXmbeT09MqIVN8fiSeWj7o3i8XfVrGsJygKoUoMI1yhF3Z2+
 S5y7YdpBCxKQIZS+/3PFdd4akGXpYCye4IElTmKGnk2vF5VDjpsUvcD8m
 eSjQU7wuph4CIk4f/bJ5aBCWK7KPEo2ssQ7KMxbmBhk9NRizY4QY6S/ZB
 gKlC5mEFi8IuOxHsdYfkvLBmKO/uFIPwZZHs60ry86ZksdGq61arfljh8 Q==;
X-CSE-ConnectionGUID: ymgmu0faSemhgjuq9QufGA==
X-CSE-MsgGUID: 7uidE97MTE63BUtxCrkt0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48204760"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="48204760"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 00:15:54 -0700
X-CSE-ConnectionGUID: 9HWIDhA/QtmY+391IB1iUA==
X-CSE-MsgGUID: vfvwY+oWQ3iN7eQgspGj7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="138551601"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 00:15:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v5 04/17] drm/i915/display: Add VRR DC balance registers
In-Reply-To: <20250513051700.507389-5-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250513051700.507389-5-mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 13 May 2025 10:15:49 +0300
Message-ID: <87zffhhtga.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 13 May 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add VRR register offsets and bits to access DC Balance configuration.
>
> --v2:
> - Separate register definitions. (Ankit)
> - Remove usage of dev_priv. (Jani, Nikula)
>
> --v3:
> - Convert register address offset, from capital to small. (Ankit)
> - Move mask bits near to register offsets. (Ankit)
>
> Co-authored-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr_regs.h | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 6ed0e0dc97e7..204d5b35bc4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -9,6 +9,53 @@
>  #include "intel_display_reg_defs.h"
>  
>  /* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604d4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614d4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624d4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634d4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(display, \
> +				       trans)	_MMIO_TRANS2(display, trans, \
> +							     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)

None of these need _MMIO_TRANS2() AFAICT. Always use _MMIO_TRANS() when
possible.

BR,
Jani.

> +#define  VRR_DCB_ADJ_FLIPLINE_CNT_MASK			REG_GENMASK(31, 24)
> +#define  VRR_DCB_ADJ_FLIPLINE_MASK			REG_GENMASK(19, 0)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604d8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614d8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624d8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634d8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(display, trans)	_MMIO_TRANS2(display, \
> +								     trans, \
> +								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
> +#define  VRR_DCB_ADJ_VMAX_CNT_MASK			REG_GENMASK(31, 24)
> +#define  VRR_DCB_ADJ_VMAX_MASK				REG_GENMASK(19, 0)
> +
> +#define _TRANS_VRR_FLIPLINE_DCB_A			0x60418
> +#define _TRANS_VRR_FLIPLINE_DCB_B			0x61418
> +#define _TRANS_VRR_FLIPLINE_DCB_C			0x62418
> +#define _TRANS_VRR_FLIPLINE_DCB_D			0x63418
> +#define TRANS_VRR_FLIPLINE_DCB(display, trans)		_MMIO_TRANS2(display, \
> +								     trans, \
> +								     _TRANS_VRR_FLIPLINE_DCB_A)
> +#define VRR_FLIPLINE_DCB_MASK				REG_GENMASK(19, 0)
> +
> +#define _TRANS_VRR_VMAX_DCB_A				0x60414
> +#define _TRANS_VRR_VMAX_DCB_B				0x61414
> +#define _TRANS_VRR_VMAX_DCB_C				0x62414
> +#define _TRANS_VRR_VMAX_DCB_D				0x63414
> +#define TRANS_VRR_VMAX_DCB(display, trans)		_MMIO_TRANS2(display, \
> +								     trans, \
> +								     _TRANS_VRR_VMAX_DCB_A)
> +#define  VRR_VMAX_DCB_MASK				REG_GENMASK(19, 0)
> +
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604c0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614c0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624c0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634c0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(display, trans)	_MMIO_TRANS2(display, \
> +								     trans, \
> +								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
> +#define ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
> +
>  #define _TRANS_VRR_CTL_A			0x60420
>  #define _TRANS_VRR_CTL_B			0x61420
>  #define _TRANS_VRR_CTL_C			0x62420
> @@ -20,6 +67,7 @@
>  #define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>  #define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>  #define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
> +#define  VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28)
>  #define  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
>  #define  XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

-- 
Jani Nikula, Intel
