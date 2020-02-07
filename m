Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE83A155B21
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 16:51:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 119336FD11;
	Fri,  7 Feb 2020 15:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED06A6FD09
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 15:51:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 07:51:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="220831303"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga007.jf.intel.com with ESMTP; 07 Feb 2020 07:51:49 -0800
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 41DBD840D6B; Fri,  7 Feb 2020 17:51:39 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 17:51:37 +0200
Message-Id: <20200207155138.30978-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Disable tesselation clock gating
 on tgl A0
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disable TEDOP clock gating flow by programming 0x20A0[19] = 1

References: HSDES#1407928979
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
 drivers/gpu/drm/i915/i915_reg.h             | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 61106129287f..4bbea781c142 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1352,6 +1352,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    GEN7_SARCHKMD,
 			    GEN7_DISABLE_SAMPLER_PREFETCH);
+
+		/* Wa_1407928979:tgl */
+		wa_write_or(wal,
+			    GEN7_FF_THREAD_MODE,
+			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
 	}
 
 	if (IS_GEN(i915, 11)) {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index dc206723f25e..b62029a10ed6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3165,6 +3165,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN7_FF_THREAD_MODE		_MMIO(0x20a0)
 #define   GEN7_FF_SCHED_MASK		0x0077070
 #define   GEN8_FF_DS_REF_CNT_FFME	(1 << 19)
+#define   GEN12_FF_TESSELATION_DOP_GATE_DISABLE BIT(19)
 #define   GEN7_FF_TS_SCHED_HS1		(0x5 << 16)
 #define   GEN7_FF_TS_SCHED_HS0		(0x3 << 16)
 #define   GEN7_FF_TS_SCHED_LOAD_BALANCE	(0x1 << 16)
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
