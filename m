Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E546CA28AB5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 13:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D96810E79B;
	Wed,  5 Feb 2025 12:52:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YDS3D/Pz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F72A10E79A;
 Wed,  5 Feb 2025 12:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738759934; x=1770295934;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UK7+W62PAvDf8ytogwu3wtkcMNYiqG59P5wDh+PeSNU=;
 b=YDS3D/PzqcAQm6L5zv+gigl/RXxKIHNRluWkAhkSSYN+A5kd1exrVks9
 9dyDiHDJVdTIca2Z0f6HzgiEU6gL8K0HNxTPcypjDVGwBtPqMgEyZ8C5m
 a1fPlNegI12BPus9F4+YUvLHtNhotPeLTnBVDfmSEGRqws/WzN+Q9x2mw
 DkId2l9Z9f72p+N1PlfiKiVew04+x0McgdB2+bLxBqhRATTydDcUTt0KU
 pLiEvPQkdxuteTHnGdId2Tm7zCMQhL15aJGC7/FSZI+xWtvrAC8+Nf/9u
 L1eqcn25JfjVpuKo3yihjQmxf5hknfemy8V01p9b/Wg9cyDNOVNdNwc8R Q==;
X-CSE-ConnectionGUID: cIKVGhsQQm25yv1Uvua7jg==
X-CSE-MsgGUID: DwUzqsYpRbq3f3ijvOsO9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="42158805"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="42158805"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:52:14 -0800
X-CSE-ConnectionGUID: IUkr3zVZRbuhJEDSGrSJsw==
X-CSE-MsgGUID: 41AatzUmTLOmE264jYMThA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110744822"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 04:52:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 11/17] drm/i915/ddi: Sanitize DDI_BUF_CTL register
 definitions
In-Reply-To: <20250129200221.2508101-12-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-12-imre.deak@intel.com>
Date: Wed, 05 Feb 2025 14:52:08 +0200
Message-ID: <87cyfw4kqv.fsf@intel.com>
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

On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> From: Imre Deak <imre.deak@gmail.com>
>
> Align the DDI_BUF_CTL register flag definitions with how this is done
> elsewhere.
>
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7fe4e71fc08ec..5cee6a96270af 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3621,27 +3621,29 @@ enum skl_power_gate {
>  #define _DDI_BUF_CTL_B				0x64100
>  /* Known as DDI_CTL_DE in MTL+ */
>  #define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
> -#define  DDI_BUF_CTL_ENABLE			(1 << 31)
> +#define  DDI_BUF_CTL_ENABLE			REG_BIT(31)
>  #define  XE2LPD_DDI_BUF_D2D_LINK_ENABLE		REG_BIT(29)
>  #define  XE2LPD_DDI_BUF_D2D_LINK_STATE		REG_BIT(28)
> -#define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
> -#define  DDI_BUF_EMP_MASK			(0xf << 24)
> -#define  DDI_BUF_PHY_LINK_RATE(r)		((r) << 20)
> +#define  DDI_BUF_EMP_MASK			REG_GENMASK(27, 24)
> +#define  DDI_BUF_TRANS_SELECT(n)		REG_FIELD_PREP(DDI_BUF_EMP_MASK, n)
> +#define  DDI_BUF_PHY_LINK_RATE_MASK		REG_GENMASK(23, 20)
> +#define  DDI_BUF_PHY_LINK_RATE(r)		REG_FIELD_PREP(DDI_BUF_PHY_LINK_RATE_MASK, r)

Ville has been advocating wrapping macro arguments in parens also in
these cases, and I'm starting to lean that way too.

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  #define  DDI_BUF_PORT_DATA_MASK			REG_GENMASK(19, 18)
>  #define  DDI_BUF_PORT_DATA_10BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 0)
>  #define  DDI_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 1)
>  #define  DDI_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 2)
> -#define  DDI_BUF_PORT_REVERSAL			(1 << 16)
> +#define  DDI_BUF_PORT_REVERSAL			REG_BIT(16)
>  #define  DDI_BUF_LANE_STAGGER_DELAY_MASK	REG_GENMASK(15, 8)
>  #define  DDI_BUF_LANE_STAGGER_DELAY(symbols)	REG_FIELD_PREP(DDI_BUF_LANE_STAGGER_DELAY_MASK, \
>  							       symbols)
> -#define  DDI_BUF_IS_IDLE			(1 << 7)
> +#define  DDI_BUF_IS_IDLE			REG_BIT(7)
>  #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
> -#define  DDI_A_4_LANES				(1 << 4)
> -#define  DDI_PORT_WIDTH(width)			(((width) == 3 ? 4 : ((width) - 1)) << 1)
> -#define  DDI_PORT_WIDTH_MASK			(7 << 1)
> +#define  DDI_A_4_LANES				REG_BIT(4)
> +#define  DDI_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
> +#define  DDI_PORT_WIDTH(width)			REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
> +							       (width) == 3 ? 4 : (width) - 1)
>  #define  DDI_PORT_WIDTH_SHIFT			1
> -#define  DDI_INIT_DISPLAY_DETECTED		(1 << 0)
> +#define  DDI_INIT_DISPLAY_DETECTED		REG_BIT(0)
>  
>  /* DDI Buffer Translations */
>  #define _DDI_BUF_TRANS_A		0x64E00

-- 
Jani Nikula, Intel
