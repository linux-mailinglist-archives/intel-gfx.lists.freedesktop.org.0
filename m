Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 997DF21BF42
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 23:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F10206ED14;
	Fri, 10 Jul 2020 21:32:15 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 732526ED14
 for <Intel-GFX@lists.freedesktop.org>; Fri, 10 Jul 2020 21:32:14 +0000 (UTC)
IronPort-SDR: VVubvYQly88QUsMZVjpOn+pOfecL6mJ8tRNS2HOMkDIXmfcLckhldHAJghw9aqzhlMNh2dM/YV
 3XgLJb2Ayl8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="149776910"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="149776910"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:32:13 -0700
IronPort-SDR: Jj5PQy9APyNaoEbC8SRK+7oHCjgkj0f34iPkDFRBLcm8iajAQhN9fUaJne7Ek27bknME+9ssG7
 LwnGKw1Z7UWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="284629683"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 10 Jul 2020 14:32:13 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Fri, 10 Jul 2020 14:32:46 -0700
Message-Id: <20200710213246.222179-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Correct location of Wa_1408615072
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

From: John Harrison <John.C.Harrison@Intel.com>

The above workaround was added as an engine workaround not a GT
workaround. Moved it to the correct location.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5726cd0a37e0..a6548a77439c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1191,6 +1191,12 @@ tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
+
+	/* Wa_1408615072:tgl[a0] */
+	/* Empirical testing shows this register is unaffected by engine reset. */
+	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
+		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
+			    VSUNIT_CLKGATE_DIS_TGL);
 }
 
 static void
@@ -1648,10 +1654,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    GEN7_SARCHKMD,
 			    GEN7_DISABLE_SAMPLER_PREFETCH);
-
-		/* Wa_1408615072:tgl */
-		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
-			    VSUNIT_CLKGATE_DIS_TGL);
 	}
 
 	if (IS_TIGERLAKE(i915)) {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
