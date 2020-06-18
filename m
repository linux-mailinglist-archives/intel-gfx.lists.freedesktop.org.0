Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 634561FFC7C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 22:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9391B6EBCB;
	Thu, 18 Jun 2020 20:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0A3B6EBCB
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 20:29:18 +0000 (UTC)
IronPort-SDR: JJM6lUxzcqLbkVcSaz+Rs0xipFOE+lxIEpVUWjzhhuSKoA7P2IFQd2AW1tvw0PuwIRki+I/BpX
 2mLDAPI/s98g==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="130090343"
X-IronPort-AV: E=Sophos;i="5.75,252,1589266800"; d="scan'208";a="130090343"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 13:29:17 -0700
IronPort-SDR: mUPA4RGvkOlj+3E87uSmjqXZKpywcjo7iuNFSWb7OcRlB9fv2yslUe1hWCEMvBzckuJoWlOQSe
 EPSyXGktJcZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,252,1589266800"; d="scan'208";a="477318158"
Received: from rdvivi-losangeles.jf.intel.com ([10.165.21.202])
 by fmsmga006.fm.intel.com with ESMTP; 18 Jun 2020 13:29:17 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: stable@vger.kernel.org
Date: Thu, 18 Jun 2020 13:27:00 -0700
Message-Id: <20200618202701.729-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Make Wa_14010229206 permanent
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

commit 63d0f3ea8ebb67160eca281320d255c72b0cb51a upstream.

This workaround now applies to all steppings, not just A0.
Wa_1409085225 is a temporary A0-only W/A however it is
identical to Wa_14010229206 and hence the combined workaround
is made permanent.
Bspec: 52890

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Tested-by: Rafael Antognolli <rafael.antognolli@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
[mattrope: added missing blank line]
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20200326234955.16155-1-swathi.dhanavanthri@intel.com
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5176ad1a3976..092a42367851 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1379,12 +1379,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    GEN7_FF_THREAD_MODE,
 			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
 
-		/*
-		 * Wa_1409085225:tgl
-		 * Wa_14010229206:tgl
-		 */
-		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
-
 		/* Wa_1408615072:tgl */
 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
 			    VSUNIT_CLKGATE_DIS_TGL);
@@ -1402,6 +1396,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_masked_en(wal,
 			     GEN9_CS_DEBUG_MODE1,
 			     FF_DOP_CLOCK_GATE_DISABLE);
+
+		/*
+		 * Wa_1409085225:tgl
+		 * Wa_14010229206:tgl
+		 */
+		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
 	}
 
 	if (IS_GEN(i915, 11)) {
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
