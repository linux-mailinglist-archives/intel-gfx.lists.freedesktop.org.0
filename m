Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6100F28BB27
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C01A26E4C9;
	Mon, 12 Oct 2020 14:47:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28BB6E4F1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:14 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:48 +0200
Message-Id: <20201012144706.555345-44-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 43/61] drm/i915/selftests: Prepare context
 tests for obj->mm.lock removal.
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

Straightforward conversion, just convert a bunch of calls to
unlocked versions.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index d3f87dc4eda3..5fef592390cb 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1094,7 +1094,7 @@ __read_slice_count(struct intel_context *ce,
 	if (ret < 0)
 		return ret;
 
-	buf = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	buf = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 	if (IS_ERR(buf)) {
 		ret = PTR_ERR(buf);
 		return ret;
@@ -1511,7 +1511,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
-	cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto out;
@@ -1622,7 +1622,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		if (err)
 			goto out_vm;
 
-		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 		if (IS_ERR(cmd)) {
 			err = PTR_ERR(cmd);
 			goto out;
@@ -1658,7 +1658,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 		if (err)
 			goto out_vm;
 
-		cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 		if (IS_ERR(cmd)) {
 			err = PTR_ERR(cmd);
 			goto out;
@@ -1715,7 +1715,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	if (err)
 		goto out_vm;
 
-	cmd = i915_gem_object_pin_map(obj, I915_MAP_WB);
+	cmd = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 	if (IS_ERR(cmd)) {
 		err = PTR_ERR(cmd);
 		goto out_vm;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
