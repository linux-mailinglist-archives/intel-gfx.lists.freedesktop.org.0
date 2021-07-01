Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE00A3B9699
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 21:31:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE836EB93;
	Thu,  1 Jul 2021 19:31:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC4996EB91
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 19:31:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="272460120"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="272460120"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 12:31:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="455699886"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008.jf.intel.com with ESMTP; 01 Jul 2021 12:31:17 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 12:31:13 -0700
Message-Id: <20210701193114.17531-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210701193114.17531-1-anusha.srivatsa@intel.com>
References: <20210701193114.17531-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dmc: Use RUNTIME_INFO->step for DMC
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

On the dmc side,we maintain a lookup table with different display
stepping-substepping combinations.

Instead of adding new table for every new platform, lets ues
the stepping info from RUNTIME_INFO(dev_priv)->step

v2: Add stepping table for older platforms in intel_step.c (Lucas)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 117 +++++++++++++++--------
 drivers/gpu/drm/i915/intel_step.c        |  41 ++++++++
 drivers/gpu/drm/i915/intel_step.h        |   7 ++
 3 files changed, 126 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index f8789d4543bf..df888a3d086e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -247,50 +247,89 @@ bool intel_dmc_has_payload(struct drm_i915_private *i915)
 	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
 }
 
-static const struct stepping_info skl_stepping_info[] = {
-	{'A', '0'}, {'B', '0'}, {'C', '0'},
-	{'D', '0'}, {'E', '0'}, {'F', '0'},
-	{'G', '0'}, {'H', '0'}, {'I', '0'},
-	{'J', '0'}, {'K', '0'}
-};
-
-static const struct stepping_info bxt_stepping_info[] = {
-	{'A', '0'}, {'A', '1'}, {'A', '2'},
-	{'B', '0'}, {'B', '1'}, {'B', '2'}
-};
-
-static const struct stepping_info icl_stepping_info[] = {
-	{'A', '0'}, {'A', '1'}, {'A', '2'},
-	{'B', '0'}, {'B', '2'},
-	{'C', '0'}
-};
-
 static const struct stepping_info no_stepping_info = { '*', '*' };
+struct stepping_info *display_step;
 
-static const struct stepping_info *
+static struct stepping_info *
 intel_get_stepping_info(struct drm_i915_private *dev_priv)
 {
-	const struct stepping_info *si;
-	unsigned int size;
-
-	if (IS_ICELAKE(dev_priv)) {
-		size = ARRAY_SIZE(icl_stepping_info);
-		si = icl_stepping_info;
-	} else if (IS_SKYLAKE(dev_priv)) {
-		size = ARRAY_SIZE(skl_stepping_info);
-		si = skl_stepping_info;
-	} else if (IS_BROXTON(dev_priv)) {
-		size = ARRAY_SIZE(bxt_stepping_info);
-		si = bxt_stepping_info;
-	} else {
-		size = 0;
-		si = NULL;
+	struct intel_step_info step = RUNTIME_INFO(dev_priv)->step;
+
+	switch (step.display_step) {
+	case STEP_A0:
+		display_step->stepping = 'A';
+		display_step->substepping = '0';
+		break;
+	case STEP_A1:
+		display_step->stepping = 'A';
+		display_step->substepping = '1';
+		break;
+	case STEP_A2:
+		display_step->stepping = 'A';
+		display_step->substepping = '2';
+		break;
+	case STEP_B0:
+		display_step->stepping = 'B';
+		display_step->substepping = '0';
+		break;
+	case STEP_B1:
+		display_step->stepping = 'B';
+		display_step->substepping = '1';
+		break;
+	case STEP_B2:
+		display_step->stepping = 'B';
+		display_step->substepping = '2';
+		break;
+	case STEP_C0:
+		display_step->stepping = 'C';
+		display_step->substepping = '0';
+		break;
+	case STEP_C1:
+		display_step->stepping = 'C';
+		display_step->substepping = '1';
+		break;
+	case STEP_D0:
+		display_step->stepping = 'D';
+		display_step->substepping = '0';
+		break;
+	case STEP_D1:
+		display_step->stepping = 'D';
+		display_step->substepping = '1';
+		break;
+	case STEP_E0:
+		display_step->stepping = 'E';
+		display_step->substepping = '0';
+		break;
+	case STEP_F0:
+		display_step->stepping = 'F';
+		display_step->substepping = '0';
+		break;
+	case STEP_G0:
+		display_step->stepping = 'G';
+		display_step->substepping = '0';
+		break;
+	case STEP_H0:
+		display_step->stepping = 'H';
+		display_step->substepping = '0';
+		break;
+	case STEP_I0:
+		display_step->stepping = 'I';
+		display_step->substepping = '0';
+		break;
+	case STEP_J0:
+		display_step->stepping = 'J';
+		display_step->substepping = '0';
+		break;
+	case STEP_K0:
+		display_step->stepping = 'K';
+		display_step->substepping = '0';
+		break;
+	default:
+		display_step->stepping = '*';
+		display_step->substepping = '*';
+		break;
 	}
-
-	if (INTEL_REVID(dev_priv) < size)
-		return si + INTEL_REVID(dev_priv);
-
-	return &no_stepping_info;
+	return display_step;
 }
 
 static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index ba9479a67521..c8542161c5d0 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -15,6 +15,38 @@
 
 
 /* FIXME: what about REVID_E0 */
+static const struct intel_step_info bxt_revid_step_tbl[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_A1, .display_step = STEP_A1 },
+	[2] = { .gt_step = STEP_A2, .display_step = STEP_A2 },
+	[6] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[7] = { .gt_step = STEP_B1, .display_step = STEP_B1 },
+	[8] = { .gt_step = STEP_B2, .display_step = STEP_B2 },
+};
+
+
+static const struct intel_step_info skl_revid_step_tbl[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[2] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
+	[3] = { .gt_step = STEP_D0, .display_step = STEP_D0 },
+	[4] = { .gt_step = STEP_E0, .display_step = STEP_E0 },
+	[5] = { .gt_step = STEP_F0, .display_step = STEP_F0 },
+	[6] = { .gt_step = STEP_G0, .display_step = STEP_G0 },
+	[7] = { .gt_step = STEP_H0, .display_step = STEP_H0 },
+	[8] = { .gt_step = STEP_I0, .display_step = STEP_I0 },
+	[9] = { .gt_step = STEP_J0, .display_step = STEP_J0 },
+};
+
+static const struct intel_step_info icl_revid_step_tbl[] = {
+	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
+	[3] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
+	[4] = { .gt_step = STEP_B2, .display_step = STEP_B2 },
+	[5] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
+	[6] = { .gt_step = STEP_C1, .display_step = STEP_C1 },
+	[7] = { .gt_step = STEP_D0, .display_step = STEP_D0 },
+};
+
 static const struct intel_step_info kbl_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
@@ -76,6 +108,15 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_KABYLAKE(i915)) {
 		revids = kbl_revids;
 		size = ARRAY_SIZE(kbl_revids);
+	} else if (IS_ICELAKE(i915)) {
+		revids = icl_revid_step_tbl;
+		size = ARRAY_SIZE(icl_revid_step_tbl);
+	} else if (IS_SKYLAKE(i915)) {
+		revids = skl_revid_step_tbl;
+		size = ARRAY_SIZE(skl_revid_step_tbl);
+	} else if (IS_BROXTON(i915)) {
+		revids = bxt_revid_step_tbl;
+		size = ARRAY_SIZE(bxt_revid_step_tbl);
 	}
 
 	/* Not using the stepping scheme for the platform yet. */
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 958a8bb5d677..1bffa41f2660 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -22,15 +22,22 @@ struct intel_step_info {
 enum intel_step {
 	STEP_NONE = 0,
 	STEP_A0,
+	STEP_A1,
 	STEP_A2,
 	STEP_B0,
 	STEP_B1,
+	STEP_B2,
 	STEP_C0,
+	STEP_C1,
 	STEP_D0,
 	STEP_D1,
 	STEP_E0,
 	STEP_F0,
 	STEP_G0,
+	STEP_H0,
+	STEP_I0,
+	STEP_J0,
+	STEP_K0,
 	STEP_FUTURE,
 	STEP_FOREVER,
 };
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
