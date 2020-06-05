Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EDD1F00AD
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 22:04:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0BB56E976;
	Fri,  5 Jun 2020 20:04:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 184C76E976
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 20:04:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21411266-1500050 
 for multiple; Fri, 05 Jun 2020 21:03:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jun 2020 21:03:57 +0100
Message-Id: <20200605200357.13069-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Delete unused code
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

Unused as of commit 9e0f9464e2ab ("drm/i915/gem: Async GPU relocations
only"), but left behind.

>> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:933:21: error: unused function 'unmask_page' [-Werror,-Wunused-function]
static inline void *unmask_page(unsigned long p)
^
>> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:938:28: error: unused function 'unmask_flags' [-Werror,-Wunused-function]
static inline unsigned int unmask_flags(unsigned long p)
^
>> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:945:33: error: unused function 'cache_to_ggtt' [-Werror,-Wunused-function]
static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cfe6d2cdbef1..23db79b806db 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -930,25 +930,6 @@ static void reloc_cache_init(struct reloc_cache *cache,
 	cache->target = NULL;
 }
 
-static inline void *unmask_page(unsigned long p)
-{
-	return (void *)(uintptr_t)(p & PAGE_MASK);
-}
-
-static inline unsigned int unmask_flags(unsigned long p)
-{
-	return p & ~PAGE_MASK;
-}
-
-#define KMAP 0x4 /* after CLFLUSH_FLAGS */
-
-static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
-{
-	struct drm_i915_private *i915 =
-		container_of(cache, struct i915_execbuffer, reloc_cache)->i915;
-	return &i915->ggtt;
-}
-
 #define RELOC_TAIL 4
 
 static int reloc_gpu_chain(struct reloc_cache *cache)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
