Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 542073C1BD8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 01:18:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A0EC6E942;
	Thu,  8 Jul 2021 23:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA9F6E936
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 23:18:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="209578465"
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="209578465"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 16:18:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,225,1620716400"; d="scan'208";a="482707939"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jul 2021 16:18:27 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jul 2021 16:18:19 -0700
Message-Id: <20210708231821.9163-9-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708231821.9163-1-anusha.srivatsa@intel.com>
References: <20210708231821.9163-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/bxt: Use revid->stepping tables
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
platforms going forward.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index c4ce02d22828..99c0d3df001b 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -31,6 +31,15 @@ static const struct intel_step_info skl_revid_step_tbl[] = {
 	[0xA] = { .gt_step = STEP_I1, .display_step = STEP_I1 },
 };
 
+static const struct intel_step_info bxt_revids[] = {
+	[0] = { .gt_step = STEP_A0 },
+	[1] = { .gt_step = STEP_A1 },
+	[2] = { .gt_step = STEP_A2 },
+	[6] = { .gt_step = STEP_B0 },
+	[7] = { .gt_step = STEP_B1 },
+	[8] = { .gt_step = STEP_B2 },
+};
+
 static const struct intel_step_info kbl_revid_step_tbl[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
@@ -129,6 +138,9 @@ void intel_step_init(struct drm_i915_private *i915)
 	} else if (IS_KABYLAKE(i915)) {
 		revids = kbl_revid_step_tbl;
 		size = ARRAY_SIZE(kbl_revid_step_tbl);
+	} else if (IS_BROXTON(i915)) {
+		revids = bxt_revids;
+		size = ARRAY_SIZE(bxt_revids);
 	} else if (IS_SKYLAKE(i915)) {
 		revids = skl_revid_step_tbl;
 		size = ARRAY_SIZE(skl_revid_step_tbl);
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
