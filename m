Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D94BE523244
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 13:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E619310E2D7;
	Wed, 11 May 2022 11:59:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 432 seconds by postgrey-1.36 at gabe;
 Wed, 11 May 2022 11:59:46 UTC
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1D4510E126;
 Wed, 11 May 2022 11:59:46 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 13:52:19 +0200
Message-Id: <20220511115219.46507-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use i915_gem_object_ggtt_pin_ww for
 reloc_iomap
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
Cc: =?UTF-8?q?Mateusz=20Jo=C5=84czyk?= <mat.jonczyk@o2.pl>,
 Matthew Auld <matthew.auld@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of its own path, use the common path when it doesn't result
in evicting any vma. This fixes the case where we don't wait for
binding.

Fixes: b5cfe6f7a6e1 ("drm/i915: Remove short-term pins from execbuf, v6.")
Cc: Matthew Auld <matthew.auld@intel.com>
Reported-by: Mateusz Jończyk <mat.jonczyk@o2.pl>
Tested-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 498b458fd784..919d01082909 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1262,14 +1262,12 @@ static void *reloc_iomap(struct i915_vma *batch,
 		 * Only attempt to pin the batch buffer to ggtt if the current batch
 		 * is not inside ggtt, or the batch buffer is not misplaced.
 		 */
-		if (!i915_is_ggtt(batch->vm)) {
+		if (!i915_is_ggtt(batch->vm) ||
+		    !i915_vma_misplaced(batch, 0, 0, PIN_MAPPABLE)) {
 			vma = i915_gem_object_ggtt_pin_ww(obj, &eb->ww, NULL, 0, 0,
 							  PIN_MAPPABLE |
 							  PIN_NONBLOCK /* NOWARN */ |
 							  PIN_NOEVICT);
-		} else if (i915_vma_is_map_and_fenceable(batch)) {
-			__i915_vma_pin(batch);
-			vma = batch;
 		}
 
 		if (vma == ERR_PTR(-EDEADLK))
-- 
2.36.1

