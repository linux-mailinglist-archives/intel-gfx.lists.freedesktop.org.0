Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBEA281380
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C656E997;
	Fri,  2 Oct 2020 13:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0B16E97E
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:52 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:59:26 +0200
Message-Id: <20201002125939.50817-49-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 48/61] drm/i915/selftests: Prepare object blit
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

Use some unlocked versions where we're not holding the ww lock.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
index 23b6e11bbc3e..ee9496f3d11d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_object_blt.c
@@ -262,7 +262,7 @@ static int igt_fill_blt_thread(void *arg)
 			goto err_flush;
 		}
 
-		vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 		if (IS_ERR(vaddr)) {
 			err = PTR_ERR(vaddr);
 			goto err_put;
@@ -380,7 +380,7 @@ static int igt_copy_blt_thread(void *arg)
 			goto err_flush;
 		}
 
-		vaddr = i915_gem_object_pin_map(src, I915_MAP_WB);
+		vaddr = i915_gem_object_pin_map_unlocked(src, I915_MAP_WB);
 		if (IS_ERR(vaddr)) {
 			err = PTR_ERR(vaddr);
 			goto err_put_src;
@@ -400,7 +400,7 @@ static int igt_copy_blt_thread(void *arg)
 			goto err_put_src;
 		}
 
-		vaddr = i915_gem_object_pin_map(dst, I915_MAP_WB);
+		vaddr = i915_gem_object_pin_map_unlocked(dst, I915_MAP_WB);
 		if (IS_ERR(vaddr)) {
 			err = PTR_ERR(vaddr);
 			goto err_put_dst;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
