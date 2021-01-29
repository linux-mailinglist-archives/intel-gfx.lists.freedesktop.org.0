Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C453082AC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 01:49:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9FD56EA64;
	Fri, 29 Jan 2021 00:49:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0F516EA64
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 00:49:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23731782-1500050 
 for multiple; Fri, 29 Jan 2021 00:49:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 00:49:33 +0000
Message-Id: <20210129004933.29755-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210129004933.29755-1-chris@chris-wilson.co.uk>
References: <20210129004933.29755-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gvt: Purge dev_priv->gt
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

Use the right intel_gt stored as a backpointer in intel_vgpu.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gvt/execlist.c  | 8 +++-----
 drivers/gpu/drm/i915/gvt/scheduler.c | 3 +--
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/execlist.c b/drivers/gpu/drm/i915/gvt/execlist.c
index 158873f269b1..c8dcda6d4f0d 100644
--- a/drivers/gpu/drm/i915/gvt/execlist.c
+++ b/drivers/gpu/drm/i915/gvt/execlist.c
@@ -522,12 +522,11 @@ static void init_vgpu_execlist(struct intel_vgpu *vgpu,
 static void clean_execlist(struct intel_vgpu *vgpu,
 			   intel_engine_mask_t engine_mask)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
-	struct intel_engine_cs *engine;
 	struct intel_vgpu_submission *s = &vgpu->submission;
+	struct intel_engine_cs *engine;
 	intel_engine_mask_t tmp;
 
-	for_each_engine_masked(engine, &dev_priv->gt, engine_mask, tmp) {
+	for_each_engine_masked(engine, vgpu->gvt->gt, engine_mask, tmp) {
 		kfree(s->ring_scan_buffer[engine->id]);
 		s->ring_scan_buffer[engine->id] = NULL;
 		s->ring_scan_buffer_size[engine->id] = 0;
@@ -537,11 +536,10 @@ static void clean_execlist(struct intel_vgpu *vgpu,
 static void reset_execlist(struct intel_vgpu *vgpu,
 			   intel_engine_mask_t engine_mask)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	struct intel_engine_cs *engine;
 	intel_engine_mask_t tmp;
 
-	for_each_engine_masked(engine, &dev_priv->gt, engine_mask, tmp)
+	for_each_engine_masked(engine, vgpu->gvt->gt, engine_mask, tmp)
 		init_vgpu_execlist(vgpu, engine);
 }
 
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 43f31c2eab14..a55ae50dbbe1 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -1015,13 +1015,12 @@ void intel_vgpu_clean_workloads(struct intel_vgpu *vgpu,
 				intel_engine_mask_t engine_mask)
 {
 	struct intel_vgpu_submission *s = &vgpu->submission;
-	struct drm_i915_private *dev_priv = vgpu->gvt->gt->i915;
 	struct intel_engine_cs *engine;
 	struct intel_vgpu_workload *pos, *n;
 	intel_engine_mask_t tmp;
 
 	/* free the unsubmited workloads in the queues. */
-	for_each_engine_masked(engine, &dev_priv->gt, engine_mask, tmp) {
+	for_each_engine_masked(engine, vgpu->gvt->gt, engine_mask, tmp) {
 		list_for_each_entry_safe(pos, n,
 			&s->workload_q_head[engine->id], list) {
 			list_del_init(&pos->list);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
