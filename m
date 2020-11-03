Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB8D2A3A42
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 03:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FED36E82B;
	Tue,  3 Nov 2020 02:11:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769256E82B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 02:11:33 +0000 (UTC)
IronPort-SDR: SeDPIoUqcZWJ/K+d6cjvlGvAp/MgpKTwK7YpYwqQVMC0lwkJ51lM/NK05NfQVq17sI7Qd+lWTz
 zz1tqcrxDxvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="186827079"
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; d="scan'208";a="186827079"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 18:11:33 -0800
IronPort-SDR: 0iIEkaclcNiY1wftzZwpTphLUPGsUpG5FbaycaPvdNmic+ReB2uWjXDMwpbrw4dpCuxVMCEOnr
 NJwehiB58+xg==
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; d="scan'208";a="362810118"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 18:11:33 -0800
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Nov 2020 17:59:35 -0800
Message-Id: <20201103015935.3398-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl, rkl,
 dg1: Apply WA_1406941453 to TGL, RKL and DG1
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

This workaround is applicable only for tgl,rkl and dg1.

Bspec: 52890, 53273, 53508.

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index fed9503a7c4e..45c082070bd9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1768,6 +1768,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 */
 		wa_write_or(wal, GEN7_FF_THREAD_MODE,
 			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
+
+		/* Wa_1406941453:tgl,rkl,dg1 */
+		wa_masked_en(wal,
+			     GEN10_SAMPLER_MODE,
+			     ENABLE_SMALLPL);
 	}
 
 	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
@@ -1806,13 +1811,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     FF_DOP_CLOCK_GATE_DISABLE);
 	}
 
-	if (IS_GEN(i915, 12)) {
-		/* Wa_1406941453:gen12 */
-		wa_masked_en(wal,
-			     GEN10_SAMPLER_MODE,
-			     ENABLE_SMALLPL);
-	}
-
 	if (IS_GEN(i915, 11)) {
 		/* This is not an Wa. Enable for better image quality */
 		wa_masked_en(wal,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
