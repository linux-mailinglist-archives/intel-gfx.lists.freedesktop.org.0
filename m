Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E83471B6A1B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 01:48:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 336406EA5B;
	Thu, 23 Apr 2020 23:48:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587B26EA5B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 23:48:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21001920-1500050 
 for multiple; Fri, 24 Apr 2020 00:47:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 00:47:29 +0100
Message-Id: <20200423234729.7993-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add engine scratch register to
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mika Kuoppala <mika.kuoppala@linux.intel.com>

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
index 090be5981b55..dba6af7a6fe8 100644
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
index ae0a0a692498..6e47c88c4b74 100644
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
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
