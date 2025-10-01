Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCE6BAFBCF
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD69E10E68D;
	Wed,  1 Oct 2025 08:52:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LPdNorwM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD51B10E68D;
 Wed,  1 Oct 2025 08:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759308746; x=1790844746;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ImfDLI6AGqP1PzifnPcBwIAj8fRVK2CrZBlHJ1MK9wY=;
 b=LPdNorwMv+FS+hm+eb7VSv7Uw6RlEBWz9Xb/PUeQ+eVgcs1OlbFImItf
 W9WMyhvBYmoB89WCy7rTHnFZ8qGReYrM3nJJarFtmxkyAByurNOI40bUT
 SzlA01KCXbQ16FTUrO5Iekt8YfIlJ8cCAlAjU3LATmTEblzaeOqfxilgO
 nOkO9FXfEpCVkUaz8qMq3Kmty8xGphqiyiu/sZeGlON5fdhovyWDdWEpR
 7Tg/UW+xDJXzQV5Y64eugBAsYhIvxdn2THhipevRjq3XbHp7WCJbP07Eg
 TuhNA6c6mubZTwL1/T+SoxRN3C6ekLgysBIxLvfcB6eRkFWz6mrzZjqic A==;
X-CSE-ConnectionGUID: X4yq4FK5Qf6VqUA2vjmeRQ==
X-CSE-MsgGUID: EQqB1nopSKWZLb3PfkFTwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61625621"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61625621"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:52:26 -0700
X-CSE-ConnectionGUID: IDVS3SxbSG+Robrb3SrasQ==
X-CSE-MsgGUID: NCDpHAXJTdG2Tl2c3k3FNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178024694"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:52:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: Re: [RFC PATCH 01/39] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/DP_RATE field macros
In-Reply-To: <20251001082839.2585559-2-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-2-mika.kahola@intel.com>
Date: Wed, 01 Oct 2025 11:52:20 +0300
Message-ID: <2112bdfc2a73a2e90b393871d31fc24cbb27eaac@intel.com>
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

On Wed, 01 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> From: Imre Deak <imre.deak@intel.com>
>
> Rename the PHY_C20_CUSTOM_SERDES / PHY_C20_CUSTOM_SERDES_MASK register
> field names to PHY_C20_DP_RATE / PHY_C20_DP_RATE_MASK, and move the
> definitions under the actual register containing the fields.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

You need to add your Signed-off-by when sending someone else's patches.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 6 +++---
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 4 ++--
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a2d2cecf7121..0d83145eff41 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2700,12 +2700,12 @@ static void intel_c20_pll_program(struct intel_display *display,
>  	/* 5. For DP or 6. For HDMI */
>  	if (is_dp) {
>  		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> -			      BIT(6) | PHY_C20_CUSTOM_SERDES_MASK,
> -			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(port_clock)),
> +			      BIT(6) | PHY_C20_DP_RATE_MASK,
> +			      BIT(6) | PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock)),
>  			      MB_WRITE_COMMITTED);
>  	} else {
>  		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> -			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
> +			      BIT(7) | PHY_C20_DP_RATE_MASK,
>  			      is_hdmi_frl(port_clock) ? BIT(7) : 0,
>  			      MB_WRITE_COMMITTED);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 77eae1d845f7..25ab8808e548 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -298,10 +298,10 @@
>  #define PHY_C20_RD_DATA_L		0xC08
>  #define PHY_C20_RD_DATA_H		0xC09
>  #define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
> +#define   PHY_C20_DP_RATE_MASK		REG_GENMASK8(4, 1)
> +#define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
>  #define PHY_C20_VDR_HDMI_RATE		0xD01
>  #define   PHY_C20_CONTEXT_TOGGLE	REG_BIT8(0)
> -#define   PHY_C20_CUSTOM_SERDES_MASK	REG_GENMASK8(4, 1)
> -#define   PHY_C20_CUSTOM_SERDES(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_SERDES_MASK, val)
>  #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
>  #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
>  #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)

-- 
Jani Nikula, Intel
