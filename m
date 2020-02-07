Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23191155B22
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 16:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A96F6FD09;
	Fri,  7 Feb 2020 15:51:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41CB16FD09
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 15:51:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 07:51:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="404858244"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 07 Feb 2020 07:51:49 -0800
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 43812840877; Fri,  7 Feb 2020 17:51:39 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 17:51:38 +0200
Message-Id: <20200207155138.30978-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200207155138.30978-1-mika.kuoppala@linux.intel.com>
References: <20200207155138.30978-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Implement Wa_1607090982
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

SIMD16 with Src0 scalar might conflict between Src1/Src2 and cause
GRF read issue. Workaround this issue by setting bit 14 in 0xe4f4
which will disable early read/src swap of Src0.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 drivers/gpu/drm/i915/i915_reg.h             | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 4bbea781c142..62b43f538a56 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -598,6 +598,9 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK, val,
 	       IS_TGL_REVID(engine->i915, TGL_REVID_A0, TGL_REVID_A0) ? 0 :
 			    FF_MODE2_TDS_TIMER_MASK);
+
+	/* Wa_1606931601:tgl */
+	WA_SET_BIT_MASKED(GEN7_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b62029a10ed6..590eff9f03d5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9148,6 +9148,8 @@ enum {
 #define   DISABLE_EARLY_EOT			(1 << 1)
 
 #define GEN7_ROW_CHICKEN2		_MMIO(0xe4f4)
+#define GEN12_DISABLE_EARLY_READ	BIT(14)
+
 #define GEN7_ROW_CHICKEN2_GT2		_MMIO(0xf4f4)
 #define   DOP_CLOCK_GATING_DISABLE	(1 << 0)
 #define   PUSH_CONSTANT_DEREF_DISABLE	(1 << 8)
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
