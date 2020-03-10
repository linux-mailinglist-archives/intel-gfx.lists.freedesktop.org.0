Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B7617ED6F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 01:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C279F6E5D2;
	Tue, 10 Mar 2020 00:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 670BB6E5CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 00:49:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 17:49:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="235886339"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2020 17:49:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 17:49:08 -0700
Message-Id: <20200310004911.1723239-5-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200310004911.1723239-1-matthew.d.roper@intel.com>
References: <20200310004911.1723239-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] drm/i915: Add Wa_1406306137:icl,ehl
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

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 1cf931dde0ca..bd90dc5fb35d 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1484,6 +1484,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		/* Wa_1407352427:icl,ehl */
 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
 			    PSDUNIT_CLKGATE_DIS);
+
+		/* Wa_1406306137:icl,ehl */
+		wa_masked_en(wal, GEN9_ROW_CHICKEN4, GEN11_DIS_PICK_2ND_EU);
 	}
 
 	if (IS_GEN_RANGE(i915, 9, 12)) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 92ae96cf5b64..b6941da3b588 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9151,6 +9151,7 @@ enum {
 
 #define GEN9_ROW_CHICKEN4		_MMIO(0xe48c)
 #define   GEN12_DISABLE_TDL_PUSH	REG_BIT(9)
+#define   GEN11_DIS_PICK_2ND_EU		REG_BIT(7)
 
 #define HSW_ROW_CHICKEN3		_MMIO(0xe49c)
 #define  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE    (1 << 6)
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
