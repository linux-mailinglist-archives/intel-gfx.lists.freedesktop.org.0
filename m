Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B5217ADF3
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 19:17:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AEF16E365;
	Thu,  5 Mar 2020 18:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D36716E365
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 18:17:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 10:17:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="229786740"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by orsmga007.jf.intel.com with ESMTP; 05 Mar 2020 10:17:10 -0800
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Mar 2020 10:12:04 -0800
Message-Id: <20200305181204.28856-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Make wa_1606700617 permanent
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

This workaround is to disable FF DOP Clock gating. The fix
in B0 was backed out due to timing reasons and decided to
be made permanent.
Bspec: 52890

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cb7d85c42f13..a9d1975b5245 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1337,11 +1337,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 	struct drm_i915_private *i915 = engine->i915;
 
 	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
-		/* Wa_1606700617:tgl */
-		wa_masked_en(wal,
-			     GEN9_CS_DEBUG_MODE1,
-			     FF_DOP_CLOCK_GATE_DISABLE);
-
 		/*
 		 * Wa_1607138336:tgl
 		 * Wa_1607063988:tgl
@@ -1393,6 +1388,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		/* Wa_1409804808:tgl */
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
 			     GEN12_PUSH_CONST_DEREF_HOLD_DIS);
+
+		/* Wa_1606700617:tgl */
+		wa_masked_en(wal,
+			     GEN9_CS_DEBUG_MODE1,
+			     FF_DOP_CLOCK_GATE_DISABLE);
 	}
 
 	if (IS_GEN(i915, 11)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
