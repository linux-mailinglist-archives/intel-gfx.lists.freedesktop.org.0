Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 016C9165C46
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 11:57:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59BB16ED2A;
	Thu, 20 Feb 2020 10:57:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E5366ED2A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 10:57:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 02:57:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="269543716"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.15.175])
 by fmsmga002.fm.intel.com with ESMTP; 20 Feb 2020 02:57:08 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 10:57:07 +0000
Message-Id: <20200220105707.344522-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: remove the other slab_dependencies
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

The real one can be found in i915_scheduler.c.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_request.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 6daf18dbb3d4..dbd882fe22ef 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -51,7 +51,6 @@ struct execute_cb {
 static struct i915_global_request {
 	struct i915_global base;
 	struct kmem_cache *slab_requests;
-	struct kmem_cache *slab_dependencies;
 	struct kmem_cache *slab_execute_cbs;
 } global;
 
@@ -1614,14 +1613,12 @@ long i915_request_wait(struct i915_request *rq,
 
 static void i915_global_request_shrink(void)
 {
-	kmem_cache_shrink(global.slab_dependencies);
 	kmem_cache_shrink(global.slab_execute_cbs);
 	kmem_cache_shrink(global.slab_requests);
 }
 
 static void i915_global_request_exit(void)
 {
-	kmem_cache_destroy(global.slab_dependencies);
 	kmem_cache_destroy(global.slab_execute_cbs);
 	kmem_cache_destroy(global.slab_requests);
 }
@@ -1651,16 +1648,9 @@ int __init i915_global_request_init(void)
 	if (!global.slab_execute_cbs)
 		goto err_requests;
 
-	global.slab_dependencies = KMEM_CACHE(i915_dependency,
-					      SLAB_HWCACHE_ALIGN |
-					      SLAB_RECLAIM_ACCOUNT);
-	if (!global.slab_dependencies)
-		goto err_execute_cbs;
-
 	i915_global_register(&global.base);
 	return 0;
 
-err_execute_cbs:
 	kmem_cache_destroy(global.slab_execute_cbs);
 err_requests:
 	kmem_cache_destroy(global.slab_requests);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
