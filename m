Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D341E194D97
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 00:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5ABB6E969;
	Thu, 26 Mar 2020 23:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4566E969
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 23:54:48 +0000 (UTC)
IronPort-SDR: YKA5aWC+bxvXg1IgcZ9JSeZTGQifv9VIn4CPR/yd9W50ousk2odM7KdfKz4CRC+VUA8FjzyL59
 p2A0PmAzLo1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 16:54:46 -0700
IronPort-SDR: 3xQHjNfcybxsUAmbJ8WiWAO7sl2zHLNCojrNCWyLFypcZkwScGtV1WxOhEb1R+dbuqd7FXa5Ut
 WRPu+p7HapLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,310,1580803200"; d="scan'208";a="271367042"
Received: from sdhanava-desk2.jf.intel.com ([10.165.21.144])
 by fmsmga004.fm.intel.com with ESMTP; 26 Mar 2020 16:54:46 -0700
From: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 16:49:55 -0700
Message-Id: <20200326234955.16155-1-swathi.dhanavanthri@intel.com>
X-Mailer: git-send-email 2.20.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workaround now applies to all steppings, not just A0.
Wa_1409085225 is a temporary A0-only W/A however it is
identical to Wa_14010229206 and hence the combined workaround
is made permanent.
Bspec: 52890

Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e96cc7fa0936..c3c42cf614a9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1380,12 +1380,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
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
@@ -1403,6 +1397,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_masked_en(wal,
 			     GEN9_CS_DEBUG_MODE1,
 			     FF_DOP_CLOCK_GATE_DISABLE);
+		/*
+		 * Wa_1409085225:tgl
+		 * Wa_14010229206:tgl
+		 */
+		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
 	}
 
 	if (IS_GEN(i915, 11)) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
