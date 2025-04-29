Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EC1AA096B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 13:21:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2600F10E307;
	Tue, 29 Apr 2025 11:20:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d7/x1ZOP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F2010E306;
 Tue, 29 Apr 2025 11:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745925653; x=1777461653;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EdPN1UYBVcJ7Q0+V38ELw5mpuGtBrt3yZLzbL4eD+/M=;
 b=d7/x1ZOPt1kmINQlKuvAKFiR4BfWsr7HkgjikYnwkXD3wq3NQACcgqr/
 Cg0Q8IVkM3rpPB1PIaqh7ancQ/VtnpS3l38/OaHWkBHJvcQGGYpzLjzV1
 HvHEwVYVAJZVNAuSGsv8q1h7irUFz0zxlPH+clnvLuMXkyyBFiD6+1NzH
 Bcqi0y+WEfvDN8hq06Zv+24syU8ukNywi7A8A0f2fQreu6E52ZQpxHYSv
 aRBuTWO4Y2+4anMpl02lbGpS02bdrG3JSmTzrSXMZuMw1ZLEUVIg4/Zlk
 ucA7gnqddFLhRjTbPSKEPuIog+RYzohRx/dwm21MxB03guleGrrJuVJnH g==;
X-CSE-ConnectionGUID: Mk1H4rq4TaeFgdfl/4SWIQ==
X-CSE-MsgGUID: NGg2knyWQX+qrA0Y8WDoVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="50202920"
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="50202920"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:20:51 -0700
X-CSE-ConnectionGUID: wcegbd3/R7e0OLt4qdF1nA==
X-CSE-MsgGUID: H3rL8f1zSP6g0BDaP4+rtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,249,1739865600"; d="scan'208";a="133679096"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.9])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 04:20:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v3 04/15] drm/i915/display: Add registers and bits for
 DC Balance
In-Reply-To: <20250428062058.2811655-5-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250428062058.2811655-5-mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 29 Apr 2025 14:20:46 +0300
Message-ID: <877c33w6wh.fsf@intel.com>
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

On Mon, 28 Apr 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add registers and access bits for DC Balance enable.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 55 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr_regs.h | 50 +++++++++++++++++
>  2 files changed, 105 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index e16ea3f16ed8..a376499fbfab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -117,4 +117,59 @@
>  #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
>  #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
>  
> +#define _PIPEDMC_DCB_CTL_A			0x5F1A0
> +#define _PIPEDMC_DCB_CTL_B			0x5F5A0
> +#define _PIPEDMC_DCB_CTL_C			0x5F9A0
> +#define _PIPEDMC_DCB_CTL_D			0x5FDA0
> +#define PIPEDMC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_CTL_A)

Please s/dev_priv/__display/g everywhere in the macros.

BR,
Jani.


> +#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
> +
> +#define _PIPEDMC_DCB_VBLANK_A			0x5F1BC
> +#define _PIPEDMC_DCB_VBLANK_B			0x5F5BC
> +#define _PIPEDMC_DCB_VBLANK_C			0x5F9BC
> +#define _PIPEDMC_DCB_VBLANK_D			0x5FDBC
> +#define PIPEDMC_DCB_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VBLANK_A)
> +
> +#define _PIPEDMC_DCB_SLOPE_A			0x5F1B8
> +#define _PIPEDMC_DCB_SLOPE_B			0x5F5B8
> +#define _PIPEDMC_DCB_SLOPE_C			0x5F9B8
> +#define _PIPEDMC_DCB_SLOPE_D			0x5FDB8
> +#define PIPEDMC_DCB_SLOPE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_SLOPE_A)
> +
> +#define _PIPEDMC_DCB_GUARDBAND_A		0x5F1B4
> +#define _PIPEDMC_DCB_GUARDBAND_B		0x5F5B4
> +#define _PIPEDMC_DCB_GUARDBAND_C		0x5F9B4
> +#define _PIPEDMC_DCB_GUARDBAND_D		0x5FDB4
> +#define PIPEDMC_DCB_GUARDBAND(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _PIPEDMC_DCB_GUARDBAND_A)
> +
> +#define _PIPEDMC_DCB_MAX_INCREASE_A			0x5F1AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_B			0x5F5AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_C			0x5F9AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_D			0x5FDAC
> +#define PIPEDMC_DCB_MAX_INCREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _PIPEDMC_DCB_MAX_INCREASE_A)
> +
> +#define _PIPEDMC_DCB_MAX_DECREASE_A			0x5F1B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_B			0x5F5B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_C			0x5F9B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_D			0x5FDB0
> +#define PIPEDMC_DCB_MAX_DECREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _PIPEDMC_DCB_MAX_DECREASE_A)
> +
> +#define _PIPEDMC_DCB_VMIN_A			0x5F1A4
> +#define _PIPEDMC_DCB_VMIN_B			0x5F5A4
> +#define _PIPEDMC_DCB_VMIN_C			0x5F9A4
> +#define _PIPEDMC_DCB_VMIN_D			0x5FDA4
> +#define PIPEDMC_DCB_VMIN(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMIN_A)
> +
> +#define _PIPEDMC_DCB_VMAX_A			0x5F1A8
> +#define _PIPEDMC_DCB_VMAX_B			0x5F5A8
> +#define _PIPEDMC_DCB_VMAX_C			0x5F9A8
> +#define _PIPEDMC_DCB_VMAX_D			0x5FDA8
> +#define PIPEDMC_DCB_VMAX(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMAX_A)
> +
>  #endif /* __INTEL_DMC_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 6ed0e0dc97e7..1fdba51b4bbd 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -9,6 +9,56 @@
>  #include "intel_display_reg_defs.h"
>  
>  /* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634D4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(dev_priv, trans)	\
> +					_MMIO_TRANS2(dev_priv, \
> +						     trans, \
> +						     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634D8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
> +
> +#define _TRANS_VRR_FLIPLINE_DCB_A		0x60418
> +#define _TRANS_VRR_FLIPLINE_DCB_B		0x61418
> +#define _TRANS_VRR_FLIPLINE_DCB_C		0x62418
> +#define _TRANS_VRR_FLIPLINE_DCB_D		0x63418
> +#define TRANS_VRR_FLIPLINE_DCB(dev_priv, trans) _MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _TRANS_VRR_FLIPLINE_DCB_A)
> +
> +#define _TRANS_VRR_VMAX_DCB_A			0x60414
> +#define _TRANS_VRR_VMAX_DCB_B			0x61414
> +#define _TRANS_VRR_VMAX_DCB_C			0x62414
> +#define _TRANS_VRR_VMAX_DCB_D			0x63414
> +#define TRANS_VRR_VMAX_DCB(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _TRANS_VRR_VMAX_DCB_A)
> +
> +#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_FLIPLINE_DCB_MASK			REG_GENMASK(19, 0)
> +#define VRR_VMAX_DCB_MASK			REG_GENMASK(19, 0)
> +#define VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28)
> +
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634C0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
> +#define  ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
> +
>  #define _TRANS_VRR_CTL_A			0x60420
>  #define _TRANS_VRR_CTL_B			0x61420
>  #define _TRANS_VRR_CTL_C			0x62420

-- 
Jani Nikula, Intel
