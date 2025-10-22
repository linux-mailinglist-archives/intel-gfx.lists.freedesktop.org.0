Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56505BFBBBB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 13:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F48210E767;
	Wed, 22 Oct 2025 11:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="niu2A+zF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D67010E0BD;
 Wed, 22 Oct 2025 11:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761134023; x=1792670023;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=oInibx/lJsmASTHblEVfK5a3Sjr4jRbB4Pl3FnO7daQ=;
 b=niu2A+zFRr6YgK8sB1CaF9vbt9UGYPaxgDZQI9EgXPNcXKQnhvH9OHkh
 Aay4Hhy1Y0coqRtOMW1swW3RF1WOQG/QtWflcMjSbc6q731401515ibMy
 n43dCtNU9AyhmwefHCKBBUiY7Fi3puVvYhJA5D137DIvJshuxWMv8KoNQ
 twhxNqKqmjyTHj10tj2VCti8KHEMNm4anCCvhM21EIQDC9hwcyoZC+/2x
 FcqNHja52BEFBcGRR/xdhe8dFWhK7fNTnzPaVs1hs0AZd2fNVT8h9G2bL
 gwNEXK9FUmjxsqYcNjy/1pyrWQXnABzxIpea9X2npAenApVOHtjFlnfu6 w==;
X-CSE-ConnectionGUID: ebtI1CV/TT2xOLe2aDUhsg==
X-CSE-MsgGUID: Db9mJxcPQj6POZYuDeKhMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63173919"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63173919"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 04:53:42 -0700
X-CSE-ConnectionGUID: wVpBrbVgRmKo1A8zaOaVFA==
X-CSE-MsgGUID: so418K/dQ1GOAAIUcZ0LYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="184633351"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 04:53:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v2 04/32] drm/i915/dram: Add field ecc_impacting_de_bw
In-Reply-To: <176113305088.3231.10655916383519142084@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-4-10eae6d655b8@intel.com>
 <176113305088.3231.10655916383519142084@intel.com>
Date: Wed, 22 Oct 2025 14:53:34 +0300
Message-ID: <2ada943edd5477b674419fb4fe8b2fe5d15ec32a@intel.com>
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

On Wed, 22 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Gustavo Sousa (2025-10-21 21:28:29-03:00)
>>Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
>>that indicates whether the memory has enabled ECC that limits display
>>bandwidth.  Add the field ecc_impacting_de_bw to struct dram_info to
>>contain that information and set it appropriately when probing for
>>memory info.
>>
>>Currently there are no instructions in Bspec on how to handle that case,
>>so let's throw a warning if we ever find such a scenario.
>>
>>v2:
>>  - s/ecc_impacting_de/ecc_impacting_de_bw/ to be more specific. (Matt
>>    Atwood)
>>  - Add warning if ecc_impacting_de_bw is true, since we currently do
>>    not have instructions on how to handle it. (Matt Roper)
>>
>>Bspec: 69131
>>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>Cc: Matt Atwood <matthew.s.atwood@intel.com>
>>Cc: Matt Roper <matthew.d.roper@intel.com>
>>Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>---
>> drivers/gpu/drm/i915/display/intel_bw.c | 8 ++++++++
>> drivers/gpu/drm/i915/i915_reg.h         | 1 +
>> drivers/gpu/drm/i915/soc/intel_dram.c   | 4 ++++
>> drivers/gpu/drm/i915/soc/intel_dram.h   | 1 +
>> 4 files changed, 14 insertions(+)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
>>index fc173b2a1ad9..57d65e6e5429 100644
>>--- a/drivers/gpu/drm/i915/display/intel_bw.c
>>+++ b/drivers/gpu/drm/i915/display/intel_bw.c
>>@@ -802,6 +802,14 @@ void intel_bw_init_hw(struct intel_display *display)
>>         if (!HAS_DISPLAY(display))
>>                 return;
>> 
>>+        /*
>>+         * Starting with Xe3p_LPD, the hardware tells us whether memory has ECC
>>+         * enabled that would impact display bandwidth.  However, so far there
>>+         * are no instructions in Bspec on how to handle that case.  Let's
>>+         * complain if we ever find such a scenario.
>>+         */
>>+        drm_WARN_ON_ONCE(display->drm, dram_info->ecc_impacting_de_bw);
>
> Oops.  Just realized that DG2 does not have dram_info.  Thanks, CI!
>
> I'll fix this on the next version, probably with:
>
>     drm_WARN_ON_ONCE(display->drm, dram_info &&
>     dram_info->ecc_impacting_de_bw);

The comment I added above intel_dram_info():

/*
 * Returns NULL for platforms that don't have dram info. Avoid overzealous NULL
 * checks, and prefer not dereferencing on platforms that shouldn't look at dram
 * info, to catch accidental and incorrect dram info checks.
 */

You caught the whole thing on CI *because* there was no NULL check. With
the NULL check, you'll ignore missing dram info on future platforms that
should have it.


BR,
Jani.




>
> --
> Gustavo Sousa
>
>>+
>>         if (DISPLAY_VERx100(display) >= 3002) {
>>                 tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
>>         } else if (DISPLAY_VER(display) >= 30) {
>>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>index 354ef75ef6a5..5bf3b4ab2baa 100644
>>--- a/drivers/gpu/drm/i915/i915_reg.h
>>+++ b/drivers/gpu/drm/i915/i915_reg.h
>>@@ -1233,6 +1233,7 @@
>> #define   OROM_OFFSET_MASK                        REG_GENMASK(20, 16)
>> 
>> #define MTL_MEM_SS_INFO_GLOBAL                        _MMIO(0x45700)
>>+#define   XE3P_ECC_IMPACTING_DE                        REG_BIT(12)
>> #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK        REG_GENMASK(11, 8)
>> #define   MTL_N_OF_POPULATED_CH_MASK                REG_GENMASK(7, 4)
>> #define   MTL_DDR_TYPE_MASK                        REG_GENMASK(3, 0)
>>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
>>index 8841cfe1cac8..73e8ad1a28e0 100644
>>--- a/drivers/gpu/drm/i915/soc/intel_dram.c
>>+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>>@@ -685,6 +685,7 @@ static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *
>> 
>> static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
>> {
>>+        struct intel_display *display = i915->display;
>>         u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
>> 
>>         switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
>>@@ -723,6 +724,9 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
>>         dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
>>         /* PSF GV points not supported in D14+ */
>> 
>>+        if (DISPLAY_VER(display) >= 35)
>>+                dram_info->ecc_impacting_de_bw = REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);
>>+
>>         return 0;
>> }
>> 
>>diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
>>index 03a973f1c941..8475ee379daa 100644
>>--- a/drivers/gpu/drm/i915/soc/intel_dram.h
>>+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
>>@@ -30,6 +30,7 @@ struct dram_info {
>>         u8 num_channels;
>>         u8 num_qgv_points;
>>         u8 num_psf_gv_points;
>>+        bool ecc_impacting_de_bw; /* Only valid from Xe3p_LPD onward. */
>>         bool symmetric_memory;
>>         bool has_16gb_dimms;
>> };
>>
>>-- 
>>2.51.0
>>

-- 
Jani Nikula, Intel
