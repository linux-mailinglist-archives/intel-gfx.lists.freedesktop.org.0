Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485369DBAAF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 16:39:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D645710ECF8;
	Thu, 28 Nov 2024 15:39:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XrfjOw+H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B66CD10ECED;
 Thu, 28 Nov 2024 15:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732808382; x=1764344382;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t/c2DgkgDvGHhRnN3q/bG0SMqYW2Yc2M3J8eJV1G5Ac=;
 b=XrfjOw+HMG00phSEDBUZYqnodpvjQnvXjhCtK06TvCCgk5fKpnQU/iwl
 u+mzI5TYngZeKqf5j9iPHFymGggwJDdBxoQG9oSgUxLiGUI621pc294B5
 CUmgo3TOEkNgsjWeQMTjSuAS+1AXWsrfx8BlKiHN4n8DY46vz76zlZiW6
 E52Lwak73mjlurkWexB871Ryj8BvEPaKVPa+eK90fxtUGNDwBfY6mHiLZ
 jNbcXtDfWWBnPwHQCC1wC0zOLSI/10M1QKz1aFduAjnxXVS9HZQNEUmM8
 A3/VmSJxMnYoofKnFFg9u54fiv/FeDMPjegKuMMlcGCKkm3Ar1AHTN71H Q==;
X-CSE-ConnectionGUID: +KPrSAiARq61iWW/kK0TIg==
X-CSE-MsgGUID: 6WogcI+PTLieBlUtQ8NQMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="55538976"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="55538976"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:55 -0800
X-CSE-ConnectionGUID: 0+XU0gAdT7ueynyw98oRWA==
X-CSE-MsgGUID: LyThwdsqRo+WvIcuwW0wnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="123224876"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 07:38:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 6/6] drm/i915/display: convert power map to struct
 intel_display
Date: Thu, 28 Nov 2024 17:38:24 +0200
Message-Id: <9df6b67914cd5afe7107c8431e8c475794b62298.1732808222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732808222.git.jani.nikula@intel.com>
References: <cover.1732808222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display is the main device data structure
for display. Convert the power map code to it.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../i915/display/intel_display_power_map.c    | 56 +++++++++----------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 5575aa0d6689..fb2df5c382d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -1752,9 +1752,9 @@ __set_power_wells(struct i915_power_domains *power_domains,
 		  const struct i915_power_well_desc_list *power_well_descs,
 		  int power_well_descs_sz)
 {
-	struct drm_i915_private *i915 = container_of(power_domains,
-						     struct drm_i915_private,
-						     display.power.domains);
+	struct intel_display *display = container_of(power_domains,
+						     struct intel_display,
+						     power.domains);
 	u64 power_well_ids = 0;
 	const struct i915_power_well_desc_list *desc_list;
 	const struct i915_power_well_desc *desc;
@@ -1778,7 +1778,7 @@ __set_power_wells(struct i915_power_domains *power_domains,
 		enum i915_power_well_id id = inst->id;
 
 		pw->desc = desc;
-		drm_WARN_ON(&i915->drm,
+		drm_WARN_ON(display->drm,
 			    overflows_type(inst - desc->instances->list, pw->instance_idx));
 		pw->instance_idx = inst - desc->instances->list;
 
@@ -1789,8 +1789,8 @@ __set_power_wells(struct i915_power_domains *power_domains,
 		if (id == DISP_PW_ID_NONE)
 			continue;
 
-		drm_WARN_ON(&i915->drm, id >= sizeof(power_well_ids) * 8);
-		drm_WARN_ON(&i915->drm, power_well_ids & BIT_ULL(id));
+		drm_WARN_ON(display->drm, id >= sizeof(power_well_ids) * 8);
+		drm_WARN_ON(display->drm, power_well_ids & BIT_ULL(id));
 		power_well_ids |= BIT_ULL(id);
 	}
 
@@ -1811,53 +1811,53 @@ __set_power_wells(struct i915_power_domains *power_domains,
  */
 int intel_display_power_map_init(struct i915_power_domains *power_domains)
 {
-	struct drm_i915_private *i915 = container_of(power_domains,
-						     struct drm_i915_private,
-						     display.power.domains);
+	struct intel_display *display = container_of(power_domains,
+						     struct intel_display,
+						     power.domains);
 	/*
 	 * The enabling order will be from lower to higher indexed wells,
 	 * the disabling order is reversed.
 	 */
-	if (!HAS_DISPLAY(i915)) {
+	if (!HAS_DISPLAY(display)) {
 		power_domains->power_well_count = 0;
 		return 0;
 	}
 
-	if (DISPLAY_VER(i915) >= 30)
+	if (DISPLAY_VER(display) >= 30)
 		return set_power_wells(power_domains, xe3lpd_power_wells);
-	else if (DISPLAY_VER(i915) >= 20)
+	else if (DISPLAY_VER(display) >= 20)
 		return set_power_wells(power_domains, xe2lpd_power_wells);
-	else if (DISPLAY_VER(i915) >= 14)
+	else if (DISPLAY_VER(display) >= 14)
 		return set_power_wells(power_domains, xelpdp_power_wells);
-	else if (IS_DG2(i915))
+	else if (display->platform.dg2)
 		return set_power_wells(power_domains, xehpd_power_wells);
-	else if (DISPLAY_VER(i915) >= 13)
+	else if (DISPLAY_VER(display) >= 13)
 		return set_power_wells(power_domains, xelpd_power_wells);
-	else if (IS_DG1(i915))
+	else if (display->platform.dg1)
 		return set_power_wells(power_domains, dg1_power_wells);
-	else if (IS_ALDERLAKE_S(i915))
+	else if (display->platform.alderlake_s)
 		return set_power_wells(power_domains, adls_power_wells);
-	else if (IS_ROCKETLAKE(i915))
+	else if (display->platform.rocketlake)
 		return set_power_wells(power_domains, rkl_power_wells);
-	else if (DISPLAY_VER(i915) == 12)
+	else if (DISPLAY_VER(display) == 12)
 		return set_power_wells(power_domains, tgl_power_wells);
-	else if (DISPLAY_VER(i915) == 11)
+	else if (DISPLAY_VER(display) == 11)
 		return set_power_wells(power_domains, icl_power_wells);
-	else if (IS_GEMINILAKE(i915))
+	else if (display->platform.geminilake)
 		return set_power_wells(power_domains, glk_power_wells);
-	else if (IS_BROXTON(i915))
+	else if (display->platform.broxton)
 		return set_power_wells(power_domains, bxt_power_wells);
-	else if (DISPLAY_VER(i915) == 9)
+	else if (DISPLAY_VER(display) == 9)
 		return set_power_wells(power_domains, skl_power_wells);
-	else if (IS_CHERRYVIEW(i915))
+	else if (display->platform.cherryview)
 		return set_power_wells(power_domains, chv_power_wells);
-	else if (IS_BROADWELL(i915))
+	else if (display->platform.broadwell)
 		return set_power_wells(power_domains, bdw_power_wells);
-	else if (IS_HASWELL(i915))
+	else if (display->platform.haswell)
 		return set_power_wells(power_domains, hsw_power_wells);
-	else if (IS_VALLEYVIEW(i915))
+	else if (display->platform.valleyview)
 		return set_power_wells(power_domains, vlv_power_wells);
-	else if (IS_I830(i915))
+	else if (display->platform.i830)
 		return set_power_wells(power_domains, i830_power_wells);
 	else
 		return set_power_wells(power_domains, i9xx_power_wells);
-- 
2.39.5

