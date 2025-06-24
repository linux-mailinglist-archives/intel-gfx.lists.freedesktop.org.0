Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F9DAE5ED1
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 10:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BED88989C;
	Tue, 24 Jun 2025 08:13:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VYQ9yJ3o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 770628989C;
 Tue, 24 Jun 2025 08:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750752832; x=1782288832;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7qIiX1O90i1iS+BnNQQhFn/+ZF89wCeDlRcS63aJCjw=;
 b=VYQ9yJ3oaNmOsFcLshfpel/AQzALoQh3T2p+BVf09QSeUUXwgigknT2+
 sve9Fs2GsJy8DERsNYEdeou0Ap1fAoQwTWz4d3brLwu9mGFH+z2nBV16t
 DlKT3mq1SCz5nclum/NnWVtvqG2ujy8k1PpSQKMQr5tc7Lef1p8ZBmYYS
 2fjNEFMnQC1nBouV7ZpQypw7mCqmE2D+Kt5iChpcfMxsUdfj7u08QW8av
 Tqi8UfeDNndq1BjBgOi7ZZJtrhH0vK7mytx/YJVYO4mILflGkoLKk/E/c
 tZ1yT5zE3HhLXmiLCkc7tpr+R5J2Y2t3I4A3mGrXiJDUkZWgUzz2Qv8Qb Q==;
X-CSE-ConnectionGUID: vUOMAhw0QE6mpleXyPtYSA==
X-CSE-MsgGUID: 4EWPDCdYTueUuxETg6ugIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="40597978"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="40597978"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 01:13:52 -0700
X-CSE-ConnectionGUID: fcs59DyAQxWG25Xl7mDj7w==
X-CSE-MsgGUID: b6AtaRKrSVi6vsJWGs+Ikw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="152545735"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.37])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 01:13:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com
Subject: Re: [PATCH v7 04/18] drm/i915/display: Add VRR DC balance registers
In-Reply-To: <20250624074948.671761-5-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250624074948.671761-5-mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 24 Jun 2025 11:13:47 +0300
Message-ID: <ba1e60a942932530701f4cc5c2846b737d118b29@intel.com>
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

On Tue, 24 Jun 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
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
> --v4:
> - Use _MMIO_TRANS wherever possible. (Jani)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

I just took the time to clean this file up. See commit 880e07d53849
("drm/i915/vrr: fix register file style"). Please follow the style.

> ---
>  drivers/gpu/drm/i915/display/intel_vrr_regs.h | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index ba9b9215dc11..c5cba5879f40 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -8,6 +8,50 @@
>  
>  #include "intel_display_reg_defs.h"
>  
> +/* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
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
> +#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_ADJ_VMAX_MASK, (vmax))
> +
> +#define _TRANS_VRR_DCB_FLIPLINE_A		0x60418
> +#define _TRANS_VRR_DCB_FLIPLINE_B		0x61418
> +#define TRANS_VRR_DCB_FLIPLINE(trans)		_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_FLIPLINE_A, \
> +							    _TRANS_VRR_DCB_FLIPLINE_B)
> +#define VRR_DCB_FLIPLINE_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_FLIPLINE_MASK, \
> +							       (flipline))
> +
> +#define _TRANS_VRR_DCB_VMAX_A			0x60414
> +#define _TRANS_VRR_DCB_VMAX_B			0x61414
> +#define TRANS_VRR_DCB_VMAX(trans)		_MMIO_TRANS(trans, \
> +							     _TRANS_VRR_DCB_VMAX_A, \
> +							     _TRANS_VRR_DCB_VMAX_B)
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
> @@ -20,6 +64,7 @@
>  #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>  #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>  #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
> +#define   VRR_CTL_DCB_ADJ_ENABLE		REG_BIT(28)

Highest to lowest bit.

>  #define   XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
>  #define   XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))

-- 
Jani Nikula, Intel
