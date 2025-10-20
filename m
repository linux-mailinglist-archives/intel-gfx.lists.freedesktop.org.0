Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D94A4BF0BEA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 13:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C31110E417;
	Mon, 20 Oct 2025 11:10:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZWHFFZOb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D9C10E2A7;
 Mon, 20 Oct 2025 11:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760958619; x=1792494619;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mVCOL9nJo89i1wTkm3ohfd5WA3hJuRFSDcSOrtTDxKI=;
 b=ZWHFFZObKvmnUkUSS5wB0g4WNnqOcN4cjGIeO1HdZjqtgFws7uPTL0Sn
 qm4i3FdonaMTsfgxZ7c/ppsWORpCcJlUlCreRz5mpOAPb/Lt3Lhbljk5f
 8yOqCBUwlxSpQSAi80V0G3Ri8DKK0BF1YP+sW3J016Rt+dokeMvo5H6VK
 X1k0rgzxPCvDR6pkROgkNZW5MaA5/ALJLRchh2bYeXuV1s2ZzGflMW7+h
 FgMLvwlIubwB0Xv9Xfhme4VBVt2CX+rcawksNoTwJ9Z3d7XP8wd6sTyGu
 uHg68fKYJE1mvVd1cn59Ggai3Ny6fRcOLtJ+NlWkd3OOecGSC7xFLcU+Y g==;
X-CSE-ConnectionGUID: HbVfSPFqQaulSR4Gvm+GUQ==
X-CSE-MsgGUID: 8JZ3/b2NSPKr2Gkx7QaPaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="80510601"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="80510601"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 04:10:19 -0700
X-CSE-ConnectionGUID: n2eKv8l+RlC6kZWpc53wiA==
X-CSE-MsgGUID: F/Znd7LYQd6D3tjtsgSLZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="183320092"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 04:10:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 uma.shankar@intel.com, gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 01/25] drm/i915/ltphy: Add LT Phy related VDR and Pipe
 Registers
In-Reply-To: <20251015040817.3431297-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-2-suraj.kandpal@intel.com>
Date: Mon, 20 Oct 2025 14:10:12 +0300
Message-ID: <61325376f82149d4baf73ea0a4bb2a1dfc378033@intel.com>
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

On Wed, 15 Oct 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add LT Phy related VDR and pipe registers into its own new file.
>
> Bspec: 74500
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_lt_phy_regs.h  | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/g=
pu/drm/i915/display/intel_lt_phy_regs.h
> new file mode 100644
> index 000000000000..499acb1975d1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: MIT
> + *
> + * Copyright =C2=A9 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_LT_PHY_REGS_H__
> +#define __INTEL_LT_PHY_REGS_H__
> +
> +#include "i915_reg_defs.h"
> +#include "intel_display_limits.h"

Unnecessary.

> +
> +/* LT Phy Vendor Register */
> +#define LT_PHY_VDR_0_CONFIG	0xC02
> +#define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
> +#define LT_PHY_VDR_1_CONFIG	0xC03
> +#define  LT_PHY_VDR_RATE_ENCODING_MASK	REG_GENMASK8(6, 3)
> +#define  LT_PHY_VDR_MODE_ENCODING_MASK	REG_GENMASK8(2, 0)
> +#define LT_PHY_VDR_2_CONFIG	0xCC3
> +
> +#define LT_PHY_VDR_X_ADDR_MSB(idx)	(0xC04 + 0x6 * (idx))
> +#define LT_PHY_VDR_X_ADDR_LSB(idx)	(0xC05 + 0x6 * (idx))
> +
> +#define LT_PHY_VDR_X_DATAY(idx, y)	((0xC06 + (3 - (y))) + 0x6 * (idx))
> +
> +#define LT_PHY_RATE_UPDATE		0xCC4
> +
> +#endif /* __INTEL_LT_PHY_REGS_H__ */

--=20
Jani Nikula, Intel
