Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8532D6300
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 18:06:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124CD6EAAE;
	Thu, 10 Dec 2020 17:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55B76EAAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 17:06:49 +0000 (UTC)
IronPort-SDR: 0lNu7uzgikLjBAq9PVBZGTD6p9fH8CdHZmJq+fbeT22y2ilnxI8fKUUsllHdE4nYTKpQorDPKY
 wtOXVus7HBZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="162050486"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="162050486"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 09:06:48 -0800
IronPort-SDR: AnVAMiT708jbSXzbXNJqT3rWA/9NL/Dj91489plAlVmPV8x6iFo9ki+uBrUD6iKT746cUnJx3c
 rUta5zkm861Q==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="439159801"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 09:06:48 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Dec 2020 09:06:15 -0800
Message-Id: <20201210170615.3107266-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Correct location of Wa_1408615072
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
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b5339a36d256..52f12a6d66b9 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1279,6 +1279,11 @@ tgl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
+
+	/* Wa_1408615072:tgl[a0] */
+	if (IS_TGL_UY_GT_REVID(i915, TGL_REVID_A0, TGL_REVID_A0))
+		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
+			    VSUNIT_CLKGATE_DIS_TGL);
 }
 
 static void
@@ -1771,10 +1776,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    GEN7_SARCHKMD,
 			    GEN7_DISABLE_SAMPLER_PREFETCH);
-
-		/* Wa_1408615072:tgl */
-		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
-			    VSUNIT_CLKGATE_DIS_TGL);
 	}
 
 	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
