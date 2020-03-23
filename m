Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE1318F540
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 14:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D09589E19;
	Mon, 23 Mar 2020 13:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3291189E19
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 13:08:24 +0000 (UTC)
IronPort-SDR: gvWuJ0dcdvIHGJYs5VLv+4KcMryrB7gVQ19vNhda1L1cH3Uaij2bStMYryx5b31gRzGuBJ4FLf
 FrKfH9qsrskg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 06:08:23 -0700
IronPort-SDR: 9HcljWaLx4g21dZynJBaJ8/f5gb9FirWX1MtDw4KEvHgAvYudSLLu27sdlVpPjNDeMBgUpOpjw
 p9QSb5So0tMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="419495092"
Received: from enamer-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.251.181.156])
 by orsmga005.jf.intel.com with ESMTP; 23 Mar 2020 06:08:22 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 13:08:21 +0000
Message-Id: <20200323130821.47914-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: mark huge_gem_object as not
 shrinkable
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

It looks like the callers expect a non-volatile object, but it looks the
shrinker will discard the object pages anyway, thinking that the pages
can be swapped out if the object is marked as WILLNEED. If that's true
then it might be better to mark it as volatile and fix the callers
instead, but on the other hand huge_gem_objects are fairly unique in
that they duplicate pages for the backing store, so maybe shrinking is
not that applicable.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
index fa16f2c3f3ac..2b46c6530da9 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
@@ -88,8 +88,7 @@ static void huge_put_pages(struct drm_i915_gem_object *obj,
 }
 
 static const struct drm_i915_gem_object_ops huge_ops = {
-	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
-		 I915_GEM_OBJECT_IS_SHRINKABLE,
+	.flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE,
 	.get_pages = huge_get_pages,
 	.put_pages = huge_put_pages,
 };
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
