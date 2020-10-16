Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49D929034C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 12:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC1966EC35;
	Fri, 16 Oct 2020 10:45:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C4ED6EABE
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Oct 2020 10:44:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 12:44:39 +0200
Message-Id: <20201016104444.1492028-57-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 56/61] drm/i915/selftests: Prepare
 i915_request tests for obj->mm.lock removal
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

Straightforward conversion by using unlocked versions.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/selftests/i915_request.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index 64bbb8288249..a677e6851573 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -619,7 +619,7 @@ static struct i915_vma *empty_batch(struct drm_i915_private *i915)
 	if (IS_ERR(obj))
 		return ERR_CAST(obj);
 
-	cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto err;
@@ -781,7 +781,7 @@ static struct i915_vma *recursive_batch(struct drm_i915_private *i915)
 	if (err)
 		goto err;
 
-	cmd = i915_gem_object_pin_map(obj, I915_MAP_WC);
+	cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WC);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto err;
@@ -816,7 +816,7 @@ static int recursive_batch_resolve(struct i915_vma *batch)
 {
 	u32 *cmd;
 
-	cmd = i915_gem_object_pin_map(batch->obj, I915_MAP_WC);
+	cmd = i915_gem_object_pin_map_unlocked(batch->obj, I915_MAP_WC);
 	if (IS_ERR(cmd))
 		return PTR_ERR(cmd);
 
@@ -1069,8 +1069,8 @@ static int live_sequential_engines(void *arg)
 		if (!request[idx])
 			break;
 
-		cmd = i915_gem_object_pin_map(request[idx]->batch->obj,
-					      I915_MAP_WC);
+		cmd = i915_gem_object_pin_map_unlocked(request[idx]->batch->obj,
+						       I915_MAP_WC);
 		if (!IS_ERR(cmd)) {
 			*cmd = MI_BATCH_BUFFER_END;
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
