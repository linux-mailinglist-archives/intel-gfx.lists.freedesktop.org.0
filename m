Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8AD19F5DC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 14:36:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBEE898E4;
	Mon,  6 Apr 2020 12:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7200898E4
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 12:36:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20815658-1500050 
 for multiple; Mon, 06 Apr 2020 13:36:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 13:36:16 +0100
Message-Id: <20200406123616.7334-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Take DBG_FORCE_RELOC into account
 prior to using reloc_gpu
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

If we set the debug flag to force ourselves not to relocate via the gpu,
do not relocate via the gpu.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 9d11bad74e9a..fe66571cb84f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1299,6 +1299,17 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
 	return cmd;
 }
 
+static inline bool use_reloc_gpu(struct i915_vma *vma)
+{
+	if (DBG_FORCE_RELOC == FORCE_GPU_RELOC)
+		return true;
+
+	if (DBG_FORCE_RELOC)
+		return false;
+
+	return !dma_resv_test_signaled_rcu(vma->resv, true);
+}
+
 static u64
 relocate_entry(struct i915_vma *vma,
 	       const struct drm_i915_gem_relocation_entry *reloc,
@@ -1310,9 +1321,7 @@ relocate_entry(struct i915_vma *vma,
 	bool wide = eb->reloc_cache.use_64bit_reloc;
 	void *vaddr;
 
-	if (!eb->reloc_cache.vaddr &&
-	    (DBG_FORCE_RELOC == FORCE_GPU_RELOC ||
-	     !dma_resv_test_signaled_rcu(vma->resv, true))) {
+	if (!eb->reloc_cache.vaddr && use_reloc_gpu(vma)) {
 		const unsigned int gen = eb->reloc_cache.gen;
 		unsigned int len;
 		u32 *batch;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
