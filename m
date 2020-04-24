Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C51BE1B7BCF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10CFF6EADC;
	Fri, 24 Apr 2020 16:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22BD46EAD6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 16:39:20 +0000 (UTC)
IronPort-SDR: PZVE3RhIN3Egfw1qMmAanc6MV6Wq/Yturx6CWCS/RCSU6NjDXQdjP7I+471GoocpBs+kHlXf3f
 h9cAiyl2yksQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 09:39:19 -0700
IronPort-SDR: Isyt1JpTK29NyjrOWNRIh2aRd03NYIhNw/0Gr4Qp+Ohj6SrxLGkSOmZ1+WkcKaFql0vDdj/TIc
 92uAguN2RToA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="457405938"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga005.fm.intel.com with ESMTP; 24 Apr 2020 09:39:14 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id C25B5843AD2; Fri, 24 Apr 2020 19:38:44 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 19:38:40 +0300
Message-Id: <20200424163843.16585-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Add engine scratch register to
 live_lrc_fixed
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

General purpose registers are per engine and
in a fixed location. Add to live_lrc_fixed.

Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c    | 12 ++++++++++++
 drivers/gpu/drm/i915/gt/selftest_lrc.c |  5 +++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 214ea2a34693..c1f30fe12d5d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -250,6 +250,18 @@ static int lrc_ring_mi_mode(const struct intel_engine_cs *engine)
 		return -1;
 }
 
+static int lrc_ring_gpr0(const struct intel_engine_cs *engine)
+{
+	if (INTEL_GEN(engine->i915) >= 12)
+		return 0x74;
+	else if (INTEL_GEN(engine->i915) >= 9)
+		return 0x68;
+	else if (engine->class == RENDER_CLASS)
+		return 0xd8;
+	else
+		return -1;
+}
+
 static int lrc_ring_wa_bb_per_ctx(const struct intel_engine_cs *engine)
 {
 	if (INTEL_GEN(engine->i915) >= 12)
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
index e964c1402d29..d10c38aec500 100644
--- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
@@ -4613,6 +4613,11 @@ static int live_lrc_fixed(void *arg)
 				CTX_TIMESTAMP - 1,
 				"RING_CTX_TIMESTAMP"
 			},
+			{
+				i915_mmio_reg_offset(GEN8_RING_CS_GPR(engine->mmio_base, 0)),
+				lrc_ring_gpr0(engine),
+				"RING_CS_GPR0"
+			},
 			{ },
 		}, *t;
 		u32 *hw;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
