Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA9F3C9807
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 07:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0A96E519;
	Thu, 15 Jul 2021 05:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D346E519
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 05:05:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="190848416"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="190848416"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2021 22:05:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="562670903"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga004.jf.intel.com with ESMTP; 14 Jul 2021 22:05:08 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Jul 2021 22:05:06 -0700
Message-Id: <20210715050507.31176-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/step: Add macro magic for handling
 steps
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

With the addition of stepping info for
all platforms, lets use macros for handling them
and autogenerating code for all steps at a time.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 14 ++++++++++++
 drivers/gpu/drm/i915/intel_step.h | 37 +++++++++++++++++++------------
 2 files changed, 37 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 9fcf17708cc8..26f6b1d376e1 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -182,3 +182,17 @@ void intel_step_init(struct drm_i915_private *i915)
 
 	RUNTIME_INFO(i915)->step = step;
 }
+
+#define STEP_NAME_CASE(name)	\
+	case STEP_##name:	\
+		return #name;
+
+const char *intel_step_name(enum intel_step step)
+{
+	switch(step) {
+	STEP_NAME_LIST(STEP_NAME_CASE);
+
+	default :
+		return "**";
+	}
+}
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 88a77159703e..f6641e2a3c77 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -15,30 +15,39 @@ struct intel_step_info {
 	u8 display_step;
 };
 
+#define STEP_ENUM_VAL(name)  STEP_##name,
+
+#define STEP_NAME_LIST(func)		\
+	func(A0)			\
+	func(A1)			\
+	func(A2)			\
+	func(B0)			\
+	func(B1)			\
+	func(B2)			\
+	func(C0)			\
+	func(C1)			\
+	func(D0)			\
+	func(D1)			\
+	func(E0)			\
+	func(F0)			\
+	func(G0)			\
+	func(H0)			\
+	func(I0)			\
+	func(I1)			\
+	func(J0)
+
 /*
  * Symbolic steppings that do not match the hardware. These are valid both as gt
  * and display steppings as symbolic names.
  */
 enum intel_step {
 	STEP_NONE = 0,
-	STEP_A0,
-	STEP_A2,
-	STEP_B0,
-	STEP_B1,
-	STEP_C0,
-	STEP_D0,
-	STEP_D1,
-	STEP_E0,
-	STEP_F0,
-	STEP_G0,
-	STEP_H0,
-	STEP_I0,
-	STEP_I1,
-	STEP_J0,
+	STEP_NAME_LIST(STEP_ENUM_VAL)
 	STEP_FUTURE,
 	STEP_FOREVER,
 };
 
 void intel_step_init(struct drm_i915_private *i915);
+const char *intel_step_name(enum intel_step step);
 
 #endif /* __INTEL_STEP_H__ */
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
