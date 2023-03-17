Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C5F6BF612
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 00:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912C410E285;
	Fri, 17 Mar 2023 23:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 795C910E434
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 23:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679095007; x=1710631007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y3svrqJqQcKfKFFnb2qPzu4i2eNeoaJA0XgxB+kSJ5Y=;
 b=Pi2e+nX42Sh6SRO6c1/phrQmP9MuVPLy96PW7jRKYWaWp8FqdUa7Mkp1
 4YCYa8oo3QWCeoQBll652Dex7SCS1QixQaJyjWkbqIVvnT20rLmSA3hNp
 bSKQoG8/ye+yicNZTd2gUj0mGmE2MBZWtAYNEi/+yRO4NdSjc1JILmACc
 Bd75mDskPwBW3SBeOrjNNrvRwKFev22AdBGevzpiCE1rw7hWLmwrsz4hk
 YENLirs0TluchNdWMPaKh2YMWVrJ7srVkjU2ubOz0aON/DCQ3vwvelfo5
 RlBpkgImRr567k9hMQi7thvE9cCEy/7jI7PDTXTyObFe+20ErLk6mjX7N g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="335877109"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="335877109"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 16:16:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="712914904"
X-IronPort-AV: E=Sophos;i="5.98,270,1673942400"; d="scan'208";a="712914904"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 16:16:46 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 16:16:41 -0700
Message-Id: <20230317231641.2815418-12-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
References: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 11/11] drm/i915/perf: Wa_14017512683: Disable
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

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 41 ++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 18afa76653b7..823379d63caf 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -209,6 +209,7 @@
 #include "gt/intel_gt_regs.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_lrc_reg.h"
+#include "gt/intel_rc6.h"
 #include "gt/intel_ring.h"
 #include "gt/uc/intel_guc_slpc.h"
 
@@ -4216,6 +4217,20 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		return -EINVAL;
 	}
 
+	/*
+	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
+	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
+	 * does not work as expected.
+	 */
+	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
+	    props->engine->gt->type == GT_MEDIA &&
+	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
+		drm_dbg(&perf->i915->drm,
+			"OAM requires media C6 to be disabled in BIOS\n");
+		return -EINVAL;
+	}
+
+
 	if (!engine_supports_oa(props->engine)) {
 		drm_dbg(&perf->i915->drm,
 			"Engine not supported by OA %d:%d\n",
@@ -4897,6 +4912,15 @@ static u32 num_perf_groups_per_gt(struct intel_gt *gt)
 
 static u32 __oam_engine_group(struct intel_engine_cs *engine)
 {
+	/*
+	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
+	 * C6 disable in BIOS. To disable use of OAM with media engines, set the
+	 * oa_group to PERF_GROUP_INVALID.
+	 */
+	if (IS_MTL_MEDIA_STEP(engine->i915, STEP_A0, STEP_C0) &&
+	    intel_check_bios_c6_setup(&engine->gt->rc6))
+		return PERF_GROUP_INVALID;
+
 	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 70)) {
 		/*
 		 * There's 1 SAMEDIA gt and 1 OAM per SAMEDIA gt. All media slices
@@ -5316,6 +5340,23 @@ int i915_perf_ioctl_version(struct drm_i915_private *i915)
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

