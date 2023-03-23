Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750426C7376
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 23:59:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61FBF10EB7B;
	Thu, 23 Mar 2023 22:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86ED810E13F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 22:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679612343; x=1711148343;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RjX6vsGbsXlLGMrEMwhlSZC2biUf6B1qssbca0j7qtk=;
 b=YGyIGhEUAlACK4mTbxawTtOjusynfmfezpabB1y08KJigjuU3YXyfXT7
 Gb6xgiJ5nfB4BeoO+tZ3FKsyfA7dMZECuuvWsxS6ZXP+cdIHBafEt0Ffv
 z6RL/jdzcK9DG1+ST1UXnc+8D2cyvllXN7crsPmmROrxa0gA1JTj1em32
 Zwvg9TS9lRgYZY6EEumyWnVxpGD1vyGO3n4rDxM1VRCDs3BgKnLxoqC9l
 xIdNtZBHUsHXO1Ro0WqZ+NG5BuzXEDFG9PVGTXvO2UYAKP9dgDnj7fg5N
 SvM1oNYhMWRAtgpTJAUPAA1lRlk4qBRR3PcfWu9PTks8bNNQvUrD5ejPM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="320033259"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="320033259"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="771639225"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="771639225"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 15:59:01 -0700
Message-Id: <20230323225901.3743681-12-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
References: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/perf: Wa_14017512683: Disable
 OAM if media C6 is enabled in BIOS
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

OAM does not work with media C6 enabled on some steppings of MTL.
Disable OAM if we detect that media C6 was enabled in bios.

v2: (Ashutosh)
- Remove drm_notice from the driver load path
- Log a drm_err when opening an OAM stream on affected steppings

v3:
- Initialize the engine group even if mc6 is enabled (Ashutosh)
- Checkpatch fix

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 18afa76653b7..c035dbb84c9b 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -209,6 +209,7 @@
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_lrc_reg.h"
+#include "gt/intel_rc6.h"
 #include "gt/intel_ring.h"
 #include "gt/uc/intel_guc_slpc.h"
 
@@ -4223,6 +4224,19 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		return -EINVAL;
 	}
 
+	/*
+	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
+	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
+	 * does not work as expected.
+	 */
+	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
+	    props->engine->oa_group->type == TYPE_OAM &&
+	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
+		drm_dbg(&perf->i915->drm,
+			"OAM requires media C6 to be disabled in BIOS\n");
+		return -EINVAL;
+	}
+
 	i = array_index_nospec(props->oa_format, I915_OA_FORMAT_MAX);
 	f = &perf->oa_formats[i];
 	if (!engine_supports_oa_format(props->engine, f->type)) {
@@ -5316,6 +5330,23 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
 	 *
 	 * 7: Add support for video decode and enhancement classes.
 	 */
+
+	/*
+	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
+	 * C6 disable in BIOS. If Media C6 is enabled in BIOS, return version 6
+	 * to indicate that OA media is not supported.
+	 */
+	if (IS_MTL_MEDIA_STEP(i915, STEP_A0, STEP_C0)) {
+		struct intel_gt *gt;
+		int i;
+
+		for_each_gt(gt, i915, i) {
+			if (gt->type == GT_MEDIA &&
+			    intel_check_bios_c6_setup(&gt->rc6))
+				return 6;
+		}
+	}
+
 	return 7;
 }
 
-- 
2.36.1

