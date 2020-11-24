Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF372C305A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 20:02:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4FD6E51B;
	Tue, 24 Nov 2020 19:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37996E51B
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 19:02:37 +0000 (UTC)
IronPort-SDR: 6ssDrIAyacr6GHeq2PMqECmK42s3Mlen0Ers8W8PQDOMzKXBJPRYfPthiz9fh+/OOLkRLPlqhF
 8TkuRlq1Y4SA==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="151840340"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="151840340"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:02:36 -0800
IronPort-SDR: CdPX6l5lptl6irEoPZ3N5GrKyr1Sez0sGpJoaM1laX+8Gximt0s+aiAyIn8jF7dldlbO6kCA6T
 f11G02EcL6uw==
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="546946630"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 11:02:36 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 11:02:24 -0800
Message-Id: <20201124190224.1591757-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/tgl, rkl, dg1: Apply WA_1406941453 to TGL,
 RKL and DG1
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

From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

This workaround is applicable only for tgl,rkl and dg1.

Bspec: 52890, 53273, 53508.

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index a82554baa6ac..7c6b21ced56f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1778,6 +1778,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_masked_en(wal,
 			     GEN9_CS_DEBUG_MODE1,
 			     FF_DOP_CLOCK_GATE_DISABLE);
+
+		/* Wa_1406941453:tgl,rkl,dg1 */
+		wa_masked_en(wal,
+			     GEN10_SAMPLER_MODE,
+			     ENABLE_SMALLPL);
 	}
 
 	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
@@ -1808,13 +1813,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
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
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
