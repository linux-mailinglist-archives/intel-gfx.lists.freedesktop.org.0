Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E181166846
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 21:25:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF8E6EE0D;
	Thu, 20 Feb 2020 20:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A3E6EE0D
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 20:25:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 12:25:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; d="scan'208";a="408903496"
Received: from msatwood-mobl.jf.intel.com (HELO msatwood-mobl.intel.com)
 ([10.24.15.21])
 by orsmga005.jf.intel.com with ESMTP; 20 Feb 2020 12:25:40 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 12:25:30 -0500
Message-Id: <20200220172530.8201-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200220171952.7966-1-matthew.s.atwood@intel.com>
References: <20200220171952.7966-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1409085225, Wa_14010229206
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

Disable Push Constant buffer addition for TGL.

v2: typos, add additional Wa reference
v3: use REG_BIT macro, move to rcs_engine_wa_init, clean up commit
message.

Bspec: 52890
Cc: Rafael Antognolli <rafael.antognolli@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h             | 3 +++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 7cc8a7fc53c7..5db9a9fa9ca5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1334,6 +1334,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_masked_en(wal,
 			     GEN7_ROW_CHICKEN2,
 			     GEN12_DISABLE_EARLY_READ);
+		/*
+		* Wa_1409085225:tgl
+		* Wa_14010229206:tgl
+		*/
+		WA_SET_BIT_MASKED(GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
 	}
 
 	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b09c1d6dc0aa..4d6342a2883e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9153,6 +9153,9 @@ enum {
 #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
 #define   GEN11_TDL_CLOCK_GATING_FIX_DISABLE	(1 << 1)
 
+#define GEN9_ROW_CHICKEN4		_MMIO(0xe48c)
+#define  GEN12_DISABLE_TDL_PUSH		REG_BIT(9)
+
 #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
 #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
 
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
