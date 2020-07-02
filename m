Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D05211EE8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 10:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DAD36EAA8;
	Thu,  2 Jul 2020 08:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F40086EAA7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 08:32:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21685233-1500050 
 for multiple; Thu, 02 Jul 2020 09:32:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 09:32:11 +0100
Message-Id: <20200702083225.20044-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200702083225.20044-1-chris@chris-wilson.co.uk>
References: <20200702083225.20044-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/23] drm/i915/gem: Rename execbuf.bind_link to
 unbound_link
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

Rename the current list of unbound objects so that we can track of all
objects that we need to bind, as well as the list of currently unbound
[unprocessed] objects.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 5e59b4a689b5..6abbd8e80f05 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -33,7 +33,7 @@ struct eb_vma {
 
 	/** This vma's place in the execbuf reservation list */
 	struct drm_i915_gem_exec_object2 *exec;
-	struct list_head bind_link;
+	struct list_head unbound_link;
 	struct list_head reloc_link;
 
 	struct hlist_node node;
@@ -594,7 +594,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 		}
 	} else {
 		eb_unreserve_vma(ev);
-		list_add_tail(&ev->bind_link, &eb->unbound);
+		list_add_tail(&ev->unbound_link, &eb->unbound);
 	}
 }
 
@@ -699,7 +699,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		if (mutex_lock_interruptible(&eb->i915->drm.struct_mutex))
 			return -EINTR;
 
-		list_for_each_entry(ev, &eb->unbound, bind_link) {
+		list_for_each_entry(ev, &eb->unbound, unbound_link) {
 			err = eb_reserve_vma(eb, ev, pin_flags);
 			if (err)
 				break;
@@ -725,15 +725,15 @@ static int eb_reserve(struct i915_execbuffer *eb)
 
 			if (flags & EXEC_OBJECT_PINNED)
 				/* Pinned must have their slot */
-				list_add(&ev->bind_link, &eb->unbound);
+				list_add(&ev->unbound_link, &eb->unbound);
 			else if (flags & __EXEC_OBJECT_NEEDS_MAP)
 				/* Map require the lowest 256MiB (aperture) */
-				list_add_tail(&ev->bind_link, &eb->unbound);
+				list_add_tail(&ev->unbound_link, &eb->unbound);
 			else if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
 				/* Prioritise 4GiB region for restricted bo */
-				list_add(&ev->bind_link, &last);
+				list_add(&ev->unbound_link, &last);
 			else
-				list_add_tail(&ev->bind_link, &last);
+				list_add_tail(&ev->unbound_link, &last);
 		}
 		list_splice_tail(&last, &eb->unbound);
 		mutex_unlock(&eb->i915->drm.struct_mutex);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
