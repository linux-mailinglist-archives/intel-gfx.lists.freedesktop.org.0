Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A20D43C3254
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 05:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE22E6EAD6;
	Sat, 10 Jul 2021 03:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 881286EACA
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Jul 2021 03:37:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="273639489"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="273639489"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="566571889"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 20:37:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jul 2021 20:37:13 -0700
Message-Id: <20210710033724.2459367-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210710033724.2459367-1-matthew.d.roper@intel.com>
References: <20210710033724.2459367-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 01/12] drm/i915/step:
 s/<platform>_revid_tbl/<platform>_revids
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Simplify the stepping info array name.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_step.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
index ba9479a67521..93ccd42f2514 100644
--- a/drivers/gpu/drm/i915/intel_step.c
+++ b/drivers/gpu/drm/i915/intel_step.c
@@ -26,7 +26,7 @@ static const struct intel_step_info kbl_revids[] = {
 	[7] = { .gt_step = STEP_G0, .display_step = STEP_C0 },
 };
 
-static const struct intel_step_info tgl_uy_revid_step_tbl[] = {
+static const struct intel_step_info tgl_uy_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_C0 },
 	[2] = { .gt_step = STEP_B1, .display_step = STEP_C0 },
@@ -34,12 +34,12 @@ static const struct intel_step_info tgl_uy_revid_step_tbl[] = {
 };
 
 /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
-static const struct intel_step_info tgl_revid_step_tbl[] = {
+static const struct intel_step_info tgl_revids[] = {
 	[0] = { .gt_step = STEP_A0, .display_step = STEP_B0 },
 	[1] = { .gt_step = STEP_B0, .display_step = STEP_D0 },
 };
 
-static const struct intel_step_info adls_revid_step_tbl[] = {
+static const struct intel_step_info adls_revids[] = {
 	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 },
 	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
@@ -47,7 +47,7 @@ static const struct intel_step_info adls_revid_step_tbl[] = {
 	[0xC] = { .gt_step = STEP_D0, .display_step = STEP_C0 },
 };
 
-static const struct intel_step_info adlp_revid_step_tbl[] = {
+static const struct intel_step_info adlp_revids[] = {
 	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
 	[0x4] = { .gt_step = STEP_B0, .display_step = STEP_B0 },
 	[0x8] = { .gt_step = STEP_C0, .display_step = STEP_C0 },
@@ -62,17 +62,17 @@ void intel_step_init(struct drm_i915_private *i915)
 	struct intel_step_info step = {};
 
 	if (IS_ALDERLAKE_P(i915)) {
-		revids = adlp_revid_step_tbl;
-		size = ARRAY_SIZE(adlp_revid_step_tbl);
+		revids = adlp_revids;
+		size = ARRAY_SIZE(adlp_revids);
 	} else if (IS_ALDERLAKE_S(i915)) {
-		revids = adls_revid_step_tbl;
-		size = ARRAY_SIZE(adls_revid_step_tbl);
+		revids = adls_revids;
+		size = ARRAY_SIZE(adls_revids);
 	} else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
-		revids = tgl_uy_revid_step_tbl;
-		size = ARRAY_SIZE(tgl_uy_revid_step_tbl);
+		revids = tgl_uy_revids;
+		size = ARRAY_SIZE(tgl_uy_revids);
 	} else if (IS_TIGERLAKE(i915)) {
-		revids = tgl_revid_step_tbl;
-		size = ARRAY_SIZE(tgl_revid_step_tbl);
+		revids = tgl_revids;
+		size = ARRAY_SIZE(tgl_revids);
 	} else if (IS_KABYLAKE(i915)) {
 		revids = kbl_revids;
 		size = ARRAY_SIZE(kbl_revids);
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
