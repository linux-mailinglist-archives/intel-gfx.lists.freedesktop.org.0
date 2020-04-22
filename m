Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7601B452B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 14:29:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4220D6E9E9;
	Wed, 22 Apr 2020 12:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803316E9ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 12:29:43 +0000 (UTC)
IronPort-SDR: SuqjgPFTNF3Scb8SgJS7rpPQogC4KhcquP3wl9Dat5TSJzg38+i0vAzojjhU6qPXANnJMqIPzF
 ogk46ggNykMg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 05:29:42 -0700
IronPort-SDR: 0f4dYpNQ7OBIOxzPCwFYHvyGiQ8u48X6aa/QGC/G/HFyGEgDcNZY+CGgNcZJfdArsMDIIm1+fQ
 35wpv2tkbPcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,414,1580803200"; d="scan'208";a="255624382"
Received: from invictus.jf.intel.com ([10.165.21.212])
 by orsmga003.jf.intel.com with ESMTP; 22 Apr 2020 05:29:42 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 05:30:37 -0700
Message-Id: <20200422123037.25414-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200422123037.25414-1-radhakrishna.sripada@intel.com>
References: <20200422123037.25414-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Apply Wa_1406680159 as a
 clk_gating workaround
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

The workaround is moved from render engine context to intel_pm
clk gating functions like the previous platforms.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1222
Fixes: fb899dd8ea9c ("drm/i915: Apply Wa_1406680159:icl,ehl as an engine workaround")
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----
 drivers/gpu/drm/i915/intel_pm.c             | 4 ++++
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index adddc5c93b48..a9a75e9b670d 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1486,11 +1486,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
 			    PSDUNIT_CLKGATE_DIS);
 
-		/* Wa_1406680159:icl,ehl */
-		wa_write_or(wal,
-			    SUBSLICE_UNIT_LEVEL_CLKGATE,
-			    GWUNIT_CLKGATE_DIS);
-
 		/*
 		 * Wa_1408767742:icl[a2..forever],ehl[all]
 		 * Wa_1605460711:icl[a0..c0]
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 6f40bfee7304..19293ac001e2 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6859,6 +6859,10 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
 	/*Wa_14010594013:icl, ehl */
 	intel_uncore_rmw(&dev_priv->uncore, GEN8_CHICKEN_DCPR_1,
 			 0, CNL_DELAY_PMRSP);
+
+	/* Wa_1406680159:icl,ehl */
+	I915_WRITE(SUBSLICE_UNIT_LEVEL_CLKGATE,
+		   I915_READ(SUBSLICE_UNIT_LEVEL_CLKGATE) | GWUNIT_CLKGATE_DIS);
 }
 
 static void tgl_init_clock_gating(struct drm_i915_private *dev_priv)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
