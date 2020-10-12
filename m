Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA0128BB0E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Oct 2020 16:47:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4CB6E4A6;
	Mon, 12 Oct 2020 14:47:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 588B36E497
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Oct 2020 14:47:09 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Oct 2020 16:46:07 +0200
Message-Id: <20201012144706.555345-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
References: <20201012144706.555345-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/61] drm/i915: Add missing -EDEADLK
 handling to execbuf pinning
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

i915_vma_pin may fail with -EDEADLK when we start locking page tables,
so ensure we handle this correctly.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 23 +++++++++++++++----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 63e2f16204da..2fbe6fbe043a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -419,13 +419,14 @@ static u64 eb_pin_flags(const struct drm_i915_gem_exec_object2 *entry,
 	return pin_flags;
 }
 
-static inline bool
+static inline int
 eb_pin_vma(struct i915_execbuffer *eb,
 	   const struct drm_i915_gem_exec_object2 *entry,
 	   struct eb_vma *ev)
 {
 	struct i915_vma *vma = ev->vma;
 	u64 pin_flags;
+	int err;
 
 	if (vma->node.size)
 		pin_flags = vma->node.start;
@@ -438,16 +439,24 @@ eb_pin_vma(struct i915_execbuffer *eb,
 
 	/* Attempt to reuse the current location if available */
 	/* TODO: Add -EDEADLK handling here */
-	if (unlikely(i915_vma_pin_ww(vma, &eb->ww, 0, 0, pin_flags))) {
+	err = i915_vma_pin_ww(vma, &eb->ww, 0, 0, pin_flags);
+	if (err == -EDEADLK)
+		return err;
+
+	if (unlikely(err)) {
 		if (entry->flags & EXEC_OBJECT_PINNED)
 			return false;
 
 		/* Failing that pick any _free_ space if suitable */
-		if (unlikely(i915_vma_pin_ww(vma, &eb->ww,
+		err = i915_vma_pin_ww(vma, &eb->ww,
 					     entry->pad_to_size,
 					     entry->alignment,
 					     eb_pin_flags(entry, ev->flags) |
-					     PIN_USER | PIN_NOEVICT)))
+					     PIN_USER | PIN_NOEVICT);
+		if (err == -EDEADLK)
+			return err;
+
+		if (unlikely(err))
 			return false;
 	}
 
@@ -896,7 +905,11 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
 		if (err)
 			return err;
 
-		if (eb_pin_vma(eb, entry, ev)) {
+		err = eb_pin_vma(eb, entry, ev);
+		if (err < 0)
+			return err;
+
+		if (err > 0) {
 			if (entry->offset != vma->node.start) {
 				entry->offset = vma->node.start | UPDATE;
 				eb->args->flags |= __EXEC_HAS_RELOC;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
