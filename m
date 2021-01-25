Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3397F30262B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756986E1FB;
	Mon, 25 Jan 2021 14:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA266E21D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:18:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23693938-1500050 
 for multiple; Mon, 25 Jan 2021 14:18:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:17:57 +0000
Message-Id: <20210125141803.14378-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210125141803.14378-1-chris@chris-wilson.co.uk>
References: <20210125141803.14378-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/selftests: Use a coherent map to
 setup scratch batch buffers
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

Instead of manipulating the object's cache domain, just use the device
coherent map to write the batch buffer.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../drm/i915/gem/selftests/i915_gem_context.c    | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index d3f87dc4eda3..e02299fffe60 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1622,7 +1622,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		if (err)
 			goto out_vm;
 
-		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		cmd = i915_gem_object_pin_map(obj, I915_MAP_WC);
 		if (IS_ERR(cmd)) {
 			err = PTR_ERR(cmd);
 			goto out;
@@ -1658,7 +1658,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		if (err)
 			goto out_vm;
 
-		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		cmd = i915_gem_object_pin_map(obj, I915_MAP_WC);
 		if (IS_ERR(cmd)) {
 			err = PTR_ERR(cmd);
 			goto out;
@@ -1707,15 +1707,17 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 
 	i915_vma_unpin(vma);
 
+	i915_request_get(rq);
 	i915_request_add(rq);
 
-	i915_gem_object_lock(obj, NULL);
-	err = i915_gem_object_set_to_cpu_domain(obj, false);
-	i915_gem_object_unlock(obj);
-	if (err)
+	if (i915_request_wait(rq, 0, HZ / 5) < 0) {
+		i915_request_put(rq);
+		err = -ETIME;
 		goto out_vm;
+	}
+	i915_request_put(rq);
 
-	cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	cmd = i915_gem_object_pin_map(obj, I915_MAP_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto out_vm;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
