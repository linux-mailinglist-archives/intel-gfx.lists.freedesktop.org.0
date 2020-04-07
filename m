Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5331A09A8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 10:59:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA39F6E5D4;
	Tue,  7 Apr 2020 08:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A2176E5D4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 08:59:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20824601-1500050 
 for multiple; Tue, 07 Apr 2020 09:59:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 09:59:30 +0100
Message-Id: <20200407085930.19421-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Promote 'remain' to unsigned long
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

Tidy the code by casting remain to unsigned long once for the duration
of eb_relocate_vma()

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d9ab517bbce9..c95dc09c4c93 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1508,11 +1508,11 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry stack[N_RELOC(512)];
 	struct drm_i915_gem_relocation_entry __user *urelocs;
 	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
-	unsigned int remain;
+	unsigned long remain;
 
 	urelocs = u64_to_user_ptr(entry->relocs_ptr);
 	remain = entry->relocation_count;
-	if (unlikely((unsigned long)remain > N_RELOC(ULONG_MAX)))
+	if (unlikely(remain > N_RELOC(ULONG_MAX)))
 		return -EINVAL;
 
 	/*
@@ -1520,13 +1520,12 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	 * to read. However, if the array is not writable the user loses
 	 * the updated relocation values.
 	 */
-	if (unlikely(!access_ok(urelocs, remain*sizeof(*urelocs))))
+	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
 		return -EFAULT;
 
 	do {
 		struct drm_i915_gem_relocation_entry *r = stack;
-		unsigned int count =
-			min_t(unsigned int, remain, ARRAY_SIZE(stack));
+		unsigned int count = min(remain, ARRAY_SIZE(stack));
 		unsigned int copied;
 
 		/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
