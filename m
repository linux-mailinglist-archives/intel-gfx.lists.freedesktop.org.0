Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 803FA3B9698
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 21:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD0386EB92;
	Thu,  1 Jul 2021 19:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 512E56EB92
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 19:31:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="272460122"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="272460122"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 12:31:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="455699892"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 01 Jul 2021 12:31:18 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 12:31:14 -0700
Message-Id: <20210701193114.17531-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210701193114.17531-1-anusha.srivatsa@intel.com>
References: <20210701193114.17531-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/dmc: Add steping info table for
 remaining platforms
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_step.c has stepping_info for  most platforms. With DMC using
display_step from here, lets add the info for all older platforms
as well

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index c8542161c5d0..d8f5ef9ac158 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -38,6 +38,13 @@ static const struct intel_step_info skl_revid_step_tbl[] = {
 	[9] = { .gt_step = STEP_J0, .display_step = STEP_J0 },
 };
 
+static const struct intel_step_info glk_revid_step_tbl[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_A1, .display_step = STEP_A1 },
+	[2] = { .gt_step = STEP_A2, .display_step = STEP_A2 },
+	[3] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+};
+
 static const struct intel_step_info icl_revid_step_tbl[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[3] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
@@ -71,6 +78,18 @@ static const struct intel_step_info tgl_revid_step_tbl[] = {
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_D0 },
 };
 
+static const struct intel_step_info dg1_revid_step_tbl[] = {
+	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[0x1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+};
+
+static const struct intel_step_info rkl_revid_step_tbl[] = {
+	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[0x1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[0x4] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
+
+};
+
 static const struct intel_step_info adls_revid_step_tbl[] = {
 	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
@@ -99,6 +118,12 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ALDERLAKE_S(i915)) {
 		revids = adls_revid_step_tbl;
 		size = ARRAY_SIZE(adls_revid_step_tbl);
+	} else if (IS_ROCKETLAKE(i915)) {
+		revids = rkl_revid_step_tbl;
+		size = ARRAY_SIZE(rkl_revid_step_tbl);
+	} else if (IS_DG1(i915)) {
+		revids = dg1_revid_step_tbl;
+		size = ARRAY_SIZE(dg1_revid_step_tbl);
 	} else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
 		revids = tgl_uy_revid_step_tbl;
 		size = ARRAY_SIZE(tgl_uy_revid_step_tbl);
@@ -111,6 +136,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_ICELAKE(i915)) {
 		revids = icl_revid_step_tbl;
 		size = ARRAY_SIZE(icl_revid_step_tbl);
+	} else if (IS_GEMINILAKE(i915)) {
+		revids = glk_revid_step_tbl;
+		size = ARRAY_SIZE(glk_revid_step_tbl);
 	} else if (IS_SKYLAKE(i915)) {
 		revids = skl_revid_step_tbl;
 		size = ARRAY_SIZE(skl_revid_step_tbl);
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
