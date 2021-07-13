Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF583C7738
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 21:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A676E128;
	Tue, 13 Jul 2021 19:36:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21AE66E11C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 19:36:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="190609873"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="190609873"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:36:44 -0700
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="487456150"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 12:36:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 12:36:28 -0700
Message-Id: <20210713193635.3390052-6-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210713193635.3390052-1-matthew.d.roper@intel.com>
References: <20210713193635.3390052-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v4 05/12] drm/i915/bxt: Use revid->stepping tables
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

Switch BXT to use a revid->stepping table as we're trying to do on all
platforms going forward.  Note that the REVID macros we had before
weren't being used anywhere in the code and weren't even correct; the
table values come from the bspec (and omits all the placeholder and
preproduction revisions).

Although nothing in the code is using the data from this table at the
moment, we expect some upcoming DMC patches to start utilizing it.

Bspec: 13620
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h   |  9 ---------
 drivers/gpu/drm/i915/intel_step.c | 10 ++++++++++
 2 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f30499ed6787..afb159f2a658 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1517,15 +1517,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define IS_SKL_GT_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GT_STEP(p, since, until))
 
-#define BXT_REVID_A0		0x0
-#define BXT_REVID_A1		0x1
-#define BXT_REVID_B0		0x3
-#define BXT_REVID_B_LAST	0x8
-#define BXT_REVID_C0		0x9
-
-#define IS_BXT_REVID(dev_priv, since, until) \
-	(IS_BROXTON(dev_priv) && IS_REVID(dev_priv, since, until))
-
 #define IS_KBL_GT_STEP(dev_priv, since, until) \
 	(IS_KABYLAKE(dev_priv) && IS_GT_STEP(dev_priv, since, until))
 #define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index 1dd6944e7aca..57c33a25b760 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -42,6 +42,13 @@ static const struct intel_step_info kbl_revids[] = {
 	[7] = { .gt_step = STEP_G0, .display_step = STEP_C0 },
 };
 
+static const struct intel_step_info bxt_revids[] = {
+	[0xA] = { COMMON_STEP(C0) },
+	[0xB] = { COMMON_STEP(C0) },
+	[0xC] = { COMMON_STEP(D0) },
+	[0xD] = { COMMON_STEP(E0) },
+};
+
 static const struct intel_step_info tgl_uy_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
@@ -89,6 +96,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_TIGERLAKE(i915)) {
 		revids = tgl_revids;
 		size = ARRAY_SIZE(tgl_revids);
+	} else if (IS_BROXTON(i915)) {
+		revids = bxt_revids;
+		size = ARRAY_SIZE(bxt_revids);
 	} else if (IS_KABYLAKE(i915)) {
 		revids = kbl_revids;
 		size = ARRAY_SIZE(kbl_revids);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
