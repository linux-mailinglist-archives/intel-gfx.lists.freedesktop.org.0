Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A73DF300C6D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 20:29:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBE566EA3B;
	Fri, 22 Jan 2021 19:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A8F46EA01
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 19:29:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23675692-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 19:29:14 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 19:29:13 +0000
Message-Id: <20210122192913.4518-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210122192913.4518-1-chris@chris-wilson.co.uk>
References: <20210122192913.4518-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 10/10] drm/i915/gt: Replace 'return' with a
 fall-through
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

Checkpatch worries that the 'return' before an else clause might be
redundant. In this case, it is avoiding hitting the MISSING_CASE()
warning. Let us appease checkpatch by falling through to the end of the
function, which typically means that we then clean up the unused
wa_list.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 96edc76f5dcd..82e15c8c7a97 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -756,7 +756,7 @@ __intel_engine_init_ctx_wa(struct intel_engine_cs *engine,
 	else if (IS_GEN(i915, 6))
 		gen6_ctx_workarounds_init(engine, wal);
 	else if (INTEL_GEN(i915) < 8)
-		return;
+		;
 	else
 		MISSING_CASE(INTEL_GEN(i915));
 
@@ -1208,7 +1208,7 @@ gt_init_workarounds(struct drm_i915_private *i915, struct i915_wa_list *wal)
 	else if (IS_GEN(i915, 4))
 		gen4_gt_workarounds_init(i915, wal);
 	else if (INTEL_GEN(i915) <= 8)
-		return;
+		;
 	else
 		MISSING_CASE(INTEL_GEN(i915));
 }
@@ -1583,7 +1583,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 	else if (IS_SKYLAKE(i915))
 		skl_whitelist_build(engine);
 	else if (INTEL_GEN(i915) <= 8)
-		return;
+		;
 	else
 		MISSING_CASE(INTEL_GEN(i915));
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
