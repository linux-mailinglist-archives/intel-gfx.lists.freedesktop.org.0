Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 255093C1BE3
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 01:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0547A6E976;
	Thu,  8 Jul 2021 23:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C37666E93B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 23:18:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="209578466"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="209578466"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 16:18:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="482707942"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jul 2021 16:18:27 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 16:18:20 -0700
Message-Id: <20210708231821.9163-10-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708231821.9163-1-anusha.srivatsa@intel.com>
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/step: Add intel_step_name()
 helper
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper to convert the step info to string.
This is specifically useful when we want to load a specific
firmware for a given stepping/substepping combination.

Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 58 +++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_step.h |  1 +
 2 files changed, 59 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 99c0d3df001b..9af7f30b777e 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -182,3 +182,61 @@ void intel_step_init(struct drm_i915_private *i915)
 
 	RUNTIME_INFO(i915)->step = step;
 }
+
+const char *intel_step_name(enum intel_step step) {
+	switch (step) {
+	case STEP_A0:
+		return "A0";
+		break;
+	case STEP_A1:
+		return "A1";
+		break;
+	case STEP_A2:
+		return "A2";
+		break;
+	case STEP_B0:
+		return "B0";
+		break;
+	case STEP_B1:
+		return "B1";
+		break;
+	case STEP_B2:
+		return "B2";
+		break;
+	case STEP_C0:
+		return "C0";
+		break;
+	case STEP_C1:
+		return "C1";
+		break;
+	case STEP_D0:
+		return "D0";
+		break;
+	case STEP_D1:
+		return "D1";
+		break;
+	case STEP_E0:
+		return "E0";
+		break;
+	case STEP_F0:
+		return "F0";
+		break;
+	case STEP_G0:
+		return "G0";
+		break;
+	case STEP_H0:
+		return "H0";
+		break;
+	case STEP_I0:
+		return "I0";
+		break;
+	case STEP_I1:
+		return "I1";
+		break;
+	case STEP_J0:
+		return "J0";
+		break;
+	default:
+		return "**";
+	}
+}
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 3e8b2babd9da..2fbe51483472 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -43,5 +43,6 @@ enum intel_step {
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
