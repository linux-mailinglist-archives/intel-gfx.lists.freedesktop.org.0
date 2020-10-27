Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE12729A3A4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 05:32:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A536E288;
	Tue, 27 Oct 2020 04:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0B956E185
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 04:32:49 +0000 (UTC)
IronPort-SDR: PZtkpru6y2csBwSnUfGRvbbMVIBH+NUI8ed2C6qynEesGMcxyOxNRE59dDl6NlRpjf7fqiAGVh
 3iFO9ibcnjGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="165435005"
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="165435005"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 21:32:49 -0700
IronPort-SDR: kmMAyb9AYAaO7B8jhZtxDbQuJy2YIaixbZeYHAO5XUkMlqah088CL630xMUxbol7bc9oaKEVXr
 s1Nr5AQax+qQ==
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="361244352"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 21:32:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Oct 2020 21:32:28 -0700
Message-Id: <20201027043228.696518-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201027043228.696518-1-lucas.demarchi@intel.com>
References: <20201027043228.696518-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/dg1: make Wa_22010271021 permanent
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

Just like for rkl and tgl, this should be permanent as well for dg1
instead just for A0. The commit making it permanent for those platforms
ended up "racing" with the commit adding the DG1 WAs, so now fix that up.

v2: Add "tgl,dg1" to WA comment (Matt)

Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index fed9503a7c4e..8a12fc488ad1 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1768,6 +1768,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		 */
 		wa_write_or(wal, GEN7_FF_THREAD_MODE,
 			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
+
+		/*
+		 * Wa_1606700617:tgl,dg1
+		 * Wa_22010271021:tgl,rkl,dg1
+		 */
+		wa_masked_en(wal,
+			     GEN9_CS_DEBUG_MODE1,
+			     FF_DOP_CLOCK_GATE_DISABLE);
 	}
 
 	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
@@ -1796,14 +1804,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN6_RC_SLEEP_PSMI_CONTROL,
 			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
-
-		/*
-		 * Wa_1606700617:tgl
-		 * Wa_22010271021:tgl,rkl
-		 */
-		wa_masked_en(wal,
-			     GEN9_CS_DEBUG_MODE1,
-			     FF_DOP_CLOCK_GATE_DISABLE);
 	}
 
 	if (IS_GEN(i915, 12)) {
-- 
2.29.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
