Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B6A2FEA98
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 13:49:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBCE06E08A;
	Thu, 21 Jan 2021 12:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFB36E088
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 12:49:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23660111-1500050 
 for multiple; Thu, 21 Jan 2021 12:49:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jan 2021 12:49:32 +0000
Message-Id: <20210121124932.2143-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210121124932.2143-1-chris@chris-wilson.co.uk>
References: <20210121124932.2143-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gvt: Acutally use the map interface
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

Since we acquire the i915_gem_object_pin_map() to write into the shadow
buffer, we only need to flush the map after writing to ensure the buffer
is coherent.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 3fea967ee817..6b8eb9b92bdd 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -2982,23 +2982,16 @@ static int shadow_indirect_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 		goto put_obj;
 	}
 
-	i915_gem_object_lock(obj, NULL);
-	ret = i915_gem_object_set_to_cpu_domain(obj, false);
-	i915_gem_object_unlock(obj);
-	if (ret) {
-		gvt_vgpu_err("failed to set shadow indirect ctx to CPU\n");
-		goto unmap_src;
-	}
-
 	ret = copy_gma_to_hva(workload->vgpu,
-				workload->vgpu->gtt.ggtt_mm,
-				guest_gma, guest_gma + ctx_size,
-				map);
+			      workload->vgpu->gtt.ggtt_mm,
+			      guest_gma, guest_gma + ctx_size,
+			      map);
 	if (ret < 0) {
 		gvt_vgpu_err("fail to copy guest indirect ctx\n");
 		goto unmap_src;
 	}
 
+	i915_gem_object_flush_map(obj);
 	wa_ctx->indirect_ctx.obj = obj;
 	wa_ctx->indirect_ctx.shadow_va = map;
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
