Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B742F60BA0C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 22:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 161C410E7C3;
	Mon, 24 Oct 2022 20:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F49E10E7B7;
 Mon, 24 Oct 2022 20:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666643067; x=1698179067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TGwYILnvwxYyp38Hx0e1IQmWXtV0DaTTu7RZiCQiNX0=;
 b=YcekgHdFV/D3ysov/LFoHXX4jZHTLOQqLMgujiZyATF5ss7OvPOYAvYq
 jAFtBKnxvo0gUJ4FG9bdqkNdAC3EXUdPqpjP+qWyhMCNzeeaUzg4DciK/
 v5ICzFpIg16QpX69mmxvc5+ipuDmYiKPnTCFLQcaSOEnZxjk2vVh8HBTb
 5NoBCbAAo/vZZfkyu9gTuDUdli9Y6hcYhsiCPfjvelD2/td/RSYMIqUf9
 b6G8JKomu8HebbMRuS5yxewSNsDEyI+NI0ruzMq45ujBb4i5PB7M61eu9
 oA4EO/U0jMZlMyKAE0IdbMCF+KbQmYIo2w2BTUTMzCtjznanw/i0Lv/SX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="309202002"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="309202002"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 13:24:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="806426165"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="806426165"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 13:24:26 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 13:24:20 -0700
Message-Id: <20221024202422.3924298-4-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221024202422.3924298-1-ashutosh.dixit@intel.com>
References: <20221024202422.3924298-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/mtl: Modify CAGF functions for MTL
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
Cc: dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Badal Nilawar <badal.nilawar@intel.com>

Update CAGF functions for MTL to get actual resolved frequency of 3D and
SAMedia.

v2: Update MTL_MIRROR_TARGET_WP1 position/formatting (MattR)
    Move MTL branches in cagf functions to top (MattR)
    Fix commit message (Andi)
v3: Added comment about registers not needing forcewake for Gen12+ and
    returning 0 freq in RC6
v4: Use REG_FIELD_GET and uncore (Rodrigo)

Bspec: 66300

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h |  4 ++++
 drivers/gpu/drm/i915/gt/intel_rps.c     | 12 ++++++++++--
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index f8c4f758ac0b1..d8dbd0ac3b064 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -21,6 +21,10 @@
  */
 #define PERF_REG(offset)			_MMIO(offset)
 
+/* MTL workpoint reg to get core C state and actual freq of 3D, SAMedia */
+#define MTL_MIRROR_TARGET_WP1			_MMIO(0xc60)
+#define   MTL_CAGF_MASK				REG_GENMASK(8, 0)
+
 /* RPM unit config (Gen8+) */
 #define RPM_CONFIG0				_MMIO(0xd00)
 #define   GEN9_RPM_CONFIG0_CRYSTAL_CLOCK_FREQ_SHIFT	3
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 02f69cbae5162..eb3343a217947 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2091,7 +2091,9 @@ u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat)
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 	u32 cagf;
 
-	if (GRAPHICS_VER(i915) >= 12)
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+		cagf = REG_FIELD_GET(MTL_CAGF_MASK, rpstat);
+	else if (GRAPHICS_VER(i915) >= 12)
 		cagf = REG_FIELD_GET(GEN12_CAGF_MASK, rpstat);
 	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		cagf = REG_FIELD_GET(RPE_MASK, rpstat);
@@ -2113,7 +2115,13 @@ static u32 read_cagf(struct intel_rps *rps)
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	u32 freq;
 
-	if (GRAPHICS_VER(i915) >= 12) {
+	/*
+	 * For Gen12+ reading freq from HW does not need a forcewake and
+	 * registers will return 0 freq when GT is in RC6
+	 */
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
+		freq = intel_uncore_read(uncore, MTL_MIRROR_TARGET_WP1);
+	} else if (GRAPHICS_VER(i915) >= 12) {
 		freq = intel_uncore_read(uncore, GEN12_RPSTAT1);
 	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		vlv_punit_get(i915);
-- 
2.38.0

