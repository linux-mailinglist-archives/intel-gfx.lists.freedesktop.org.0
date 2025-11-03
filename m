Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59243C2AE46
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 10:59:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3322A10E39F;
	Mon,  3 Nov 2025 09:59:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dP/ChqDy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAFDA10E39E;
 Mon,  3 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762163994; x=1793699994;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6LVeH4W9fqDET/naSMtk0NbslISCt6PVwvibTmd0txI=;
 b=dP/ChqDyNACU8KmpVKxyeR6UHNzOnfeO13tuYfG6TovLy0V8Xso3C5fl
 6ALqqRlszdZZEsyQF9lGsE2sfFFxdcBHwwWkJHiZw74aKi13fdpEUJw2n
 V0YSpM5P/VGDEi5bL2817SLC8sKUdD6VZdxu5V5l3KVfdEMQscVCViyNc
 vhR5YTTbdNx+zT31Tk6J2L3ZGcZfvux3Z8OwHwByCunmvfqqb7j6kfZwy
 h2VoAGsKd/jmjAdBoXJDuLw1+6paSyqThj+EEoqJkjeZ687CBu4CcTj6c
 JeSxiIaFFtGALi5s6MWDtEyuno0PFug1aHD1BhsSBPHAyJ9fqEDNmQJUy A==;
X-CSE-ConnectionGUID: Vb/0rhxNRDuiwhygT6Bo5w==
X-CSE-MsgGUID: xIs9nBCXQuqlci05Gvt13g==
X-IronPort-AV: E=McAfee;i="6800,10657,11601"; a="75682749"
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="75682749"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 01:59:54 -0800
X-CSE-ConnectionGUID: hzvSwpQcRNGOvwH6yjasYg==
X-CSE-MsgGUID: xjeCtIC+RRKmZ4m1Qm33QQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="186779267"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.127])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 01:59:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: Re: [RESEND, 03/22] drm/i915/vrr: Add VRR DC balance registers
In-Reply-To: <20251103053002.3002695-4-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-4-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 03 Nov 2025 11:59:48 +0200
Message-ID: <9e86a823c8761f4159ec14c45e86fed614add6a9@intel.com>
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

On Mon, 03 Nov 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add VRR register offsets and bits to access DC Balance configuration.

v7 and the indentation is still all over the place. Read the big comment
near the top of i915_reg.h.

>
> --v2:
> - Separate register definitions. (Ankit)
> - Remove usage of dev_priv. (Jani, Nikula)
>
> --v3:
> - Convert register address offset, from capital to small. (Ankit)
> - Move mask bits near to register offsets. (Ankit)
>
> --v4:
> - Use _MMIO_TRANS wherever possible. (Jani)
>
> --v5:
> - Added LIVE Value registers for VMAX and FLIPLINE as provided by DMC fw
> - For pipe B it is temporary and expected to change later once finalised.
>
> --v6:
> - Add live value registers for DCB VMAX/FLIPLINE.
>
> --v7:
> - Correct commit message file. (Jani Nikula)
> - Add bits in highest to lowest order. (Jani Nikula)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr_regs.h | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index ba9b9215dc11..f828db55d9b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -8,6 +8,74 @@
>  
>  #include "intel_display_reg_defs.h"
>  
> +/* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
> +
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A  0x90700
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B  0x98700
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(trans) \
> +	_MMIO_TRANS(trans, \
> +		    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A, \
> +		    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B)
> +#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_ADJ_FLIPLINE_MASK, \
> +							       (flipline))
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A		0x604d8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B		0x614d8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_B)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A	0x906F8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B	0x986F8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B)
> +#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_ADJ_VMAX_MASK, (vmax))
> +
> +#define _TRANS_VRR_DCB_FLIPLINE_A		0x60418
> +#define _TRANS_VRR_DCB_FLIPLINE_B		0x61418
> +#define TRANS_VRR_DCB_FLIPLINE(trans)		_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_FLIPLINE_A, \
> +							    _TRANS_VRR_DCB_FLIPLINE_B)
> +
> +#define _TRANS_VRR_DCB_FLIPLINE_LIVE_A		0x906FC
> +#define _TRANS_VRR_DCB_FLIPLINE_LIVE_B		0x986FC
> +#define TRANS_VRR_DCB_FLIPLINE_LIVE(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_FLIPLINE_LIVE_A, \
> +							    _TRANS_VRR_DCB_FLIPLINE_LIVE_B)
> +#define VRR_DCB_FLIPLINE_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_FLIPLINE_MASK, \
> +							       (flipline))
> +
> +#define _TRANS_VRR_DCB_VMAX_A			0x60414
> +#define _TRANS_VRR_DCB_VMAX_B			0x61414
> +#define TRANS_VRR_DCB_VMAX(trans)		_MMIO_TRANS(trans, \
> +							     _TRANS_VRR_DCB_VMAX_A, \
> +							     _TRANS_VRR_DCB_VMAX_B)
> +#define _TRANS_VRR_DCB_VMAX_LIVE_A		0x906F4
> +#define _TRANS_VRR_DCB_VMAX_LIVE_B		0x986F4
> +#define TRANS_VRR_DCB_VMAX_LIVE(trans)		_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_VMAX_LIVE_A, \
> +							    _TRANS_VRR_DCB_VMAX_LIVE_B)
> +#define VRR_DCB_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_VMAX_MASK, (vmax))
> +
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A		0x604c0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B		0x614c0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(trans)	_MMIO_TRANS(trans, \
> +							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A, \
> +							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_B)
> +#define ADAPTIVE_SYNC_COUNTER_EN		REG_BIT(31)
> +
>  #define _TRANS_VRR_CTL_A			0x60420
>  #define _TRANS_VRR_CTL_B			0x61420
>  #define _TRANS_VRR_CTL_C			0x62420
> @@ -19,6 +87,7 @@
>  #define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
>  #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>  #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> +#define   VRR_CTL_DCB_ADJ_ENABLE		REG_BIT(28)
>  #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
>  #define   XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
>  #define   XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

-- 
Jani Nikula, Intel
