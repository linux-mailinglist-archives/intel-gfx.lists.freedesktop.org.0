Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7657928138C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 15:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA1D6E999;
	Fri,  2 Oct 2020 13:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354896E962
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 12:59:50 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 14:59:19 +0200
Message-Id: <20201002125939.50817-42-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
References: <20201002125939.50817-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 41/61] drm/i915/selftests: Prepare client blit
 for obj->mm.lock removal.
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
 drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 4e36d4897ea6..cc782569765f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -47,7 +47,7 @@ static int __igt_client_fill(struct intel_engine_cs *engine)
 			goto err_flush;
 		}
 
-		vaddr = i915_gem_object_pin_map(obj, I915_MAP_WB);
+		vaddr = i915_gem_object_pin_map_unlocked(obj, I915_MAP_WB);
 		if (IS_ERR(vaddr)) {
 			err = PTR_ERR(vaddr);
 			goto err_put;
@@ -159,7 +159,7 @@ static int prepare_blit(const struct tiled_blits *t,
 	u32 src_pitch, dst_pitch;
 	u32 cmd, *cs;
 
-	cs = i915_gem_object_pin_map(batch, I915_MAP_WC);
+	cs = i915_gem_object_pin_map_unlocked(batch, I915_MAP_WC);
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
@@ -379,7 +379,7 @@ static int verify_buffer(const struct tiled_blits *t,
 	y = i915_prandom_u32_max_state(t->height, prng);
 	p = y * t->width + x;
 
-	vaddr = i915_gem_object_pin_map(buf->vma->obj, I915_MAP_WC);
+	vaddr = i915_gem_object_pin_map_unlocked(buf->vma->obj, I915_MAP_WC);
 	if (IS_ERR(vaddr))
 		return PTR_ERR(vaddr);
 
@@ -566,7 +566,7 @@ static int tiled_blits_prepare(struct tiled_blits *t,
 	int err;
 	int i;
 
-	map = i915_gem_object_pin_map(t->scratch.vma->obj, I915_MAP_WC);
+	map = i915_gem_object_pin_map_unlocked(t->scratch.vma->obj, I915_MAP_WC);
 	if (IS_ERR(map))
 		return PTR_ERR(map);
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
