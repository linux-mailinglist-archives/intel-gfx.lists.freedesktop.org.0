Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C691EBB64
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jun 2020 14:16:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A8B6E135;
	Tue,  2 Jun 2020 12:16:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E70D06E120
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2020 12:16:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21372760-1500050 
 for multiple; Tue, 02 Jun 2020 13:16:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jun 2020 13:15:57 +0100
Message-Id: <20200602121557.3888-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200602121557.3888-1-chris@chris-wilson.co.uk>
References: <20200602121557.3888-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Make the CTX_TIMESTAMP
 readable on !rcs
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

For reasons that be, the HW only allows usersace to read its own
CTX_TIMESTAMP [context local HW runtime] on rcs. Make it available for
all by adding it to the whitelists.

v2: The change took effect from Cometlake.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 25 ++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6e1accbcc045..0731bbcef06c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1206,6 +1206,18 @@ static void cfl_whitelist_build(struct intel_engine_cs *engine)
 			  RING_FORCE_TO_NONPRIV_RANGE_4);
 }
 
+static void cml_whitelist_build(struct intel_engine_cs *engine)
+{
+	struct i915_wa_list *w = &engine->whitelist;
+
+	if (engine->class != RENDER_CLASS)
+		whitelist_reg_ext(w,
+				  RING_CTX_TIMESTAMP(engine->mmio_base),
+				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
+
+	cfl_whitelist_build(engine);
+}
+
 static void cnl_whitelist_build(struct intel_engine_cs *engine)
 {
 	struct i915_wa_list *w = &engine->whitelist;
@@ -1256,9 +1268,15 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 		/* hucStatus2RegOffset */
 		whitelist_reg_ext(w, _MMIO(0x23B0 + engine->mmio_base),
 				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
+		whitelist_reg_ext(w,
+				  RING_CTX_TIMESTAMP(engine->mmio_base),
+				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
 		break;
 
 	default:
+		whitelist_reg_ext(w,
+				  RING_CTX_TIMESTAMP(engine->mmio_base),
+				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
 		break;
 	}
 }
@@ -1290,6 +1308,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 		whitelist_reg(w, HIZ_CHICKEN);
 		break;
 	default:
+		whitelist_reg_ext(w,
+				  RING_CTX_TIMESTAMP(engine->mmio_base),
+				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
 		break;
 	}
 }
@@ -1307,7 +1328,9 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 		icl_whitelist_build(engine);
 	else if (IS_CANNONLAKE(i915))
 		cnl_whitelist_build(engine);
-	else if (IS_COFFEELAKE(i915) || IS_COMETLAKE(i915))
+	else if (IS_COMETLAKE(i915))
+		cml_whitelist_build(engine);
+	else if (IS_COFFEELAKE(i915))
 		cfl_whitelist_build(engine);
 	else if (IS_GEMINILAKE(i915))
 		glk_whitelist_build(engine);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
