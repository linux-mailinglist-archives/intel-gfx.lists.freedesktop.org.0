Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7C831394F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 17:25:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8DC6E945;
	Mon,  8 Feb 2021 16:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F9486E944
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 16:25:17 +0000 (UTC)
IronPort-SDR: D51whdV+6HtYmPFurX/+iA+rBCSqRj+S2kLptyoAS3ztvFmSvXuh1FXkiY3YICyJunDc2pGpPa
 xD1cZN871owg==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="266571489"
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="266571489"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 08:25:17 -0800
IronPort-SDR: 6a1L7GNJ9RMUSFsr6SV+AC/QvU1lP4PPEZxRbW0oI6NTkGSkEsg+ylFIIWIrsmi2AvD60HRR7I
 lCb5NyD6qI1Q==
X-IronPort-AV: E=Sophos;i="5.81,162,1610438400"; d="scan'208";a="395544512"
Received: from jjcunnix-mobl2.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.0.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2021 08:25:16 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 16:24:50 +0000
Message-Id: <20210208162450.108067-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210208162450.108067-1-matthew.auld@intel.com>
References: <20210208162450.108067-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/stolen: pass the allocation flags
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

From: CQ Tang <cq.tang@intel.com>

Stolen memory is always allocated as physically contiguous pages, mark
the object flags as such.

Signed-off-by: CQ Tang <cq.tang@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 0722b909cd09..b903ba95cf8f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -637,7 +637,8 @@ static const struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
 
 static int __i915_gem_object_create_stolen(struct intel_memory_region *mem,
 					   struct drm_i915_gem_object *obj,
-					   struct drm_mm_node *stolen)
+					   struct drm_mm_node *stolen,
+					   unsigned int flags)
 {
 	static struct lock_class_key lock_class;
 	unsigned int cache_level;
@@ -655,7 +656,7 @@ static int __i915_gem_object_create_stolen(struct intel_memory_region *mem,
 	if (err)
 		return err;
 
-	i915_gem_object_init_memory_region(obj, mem, 0);
+	i915_gem_object_init_memory_region(obj, mem, flags);
 
 	return 0;
 }
@@ -684,7 +685,7 @@ static int _i915_gem_object_stolen_init(struct intel_memory_region *mem,
 	if (ret)
 		goto err_free;
 
-	ret = __i915_gem_object_create_stolen(mem, obj, stolen);
+	ret = __i915_gem_object_create_stolen(mem, obj, stolen, flags);
 	if (ret)
 		goto err_remove;
 
@@ -842,7 +843,8 @@ i915_gem_object_create_stolen_for_preallocated(struct drm_i915_private *i915,
 		goto err_stolen;
 	}
 
-	ret = __i915_gem_object_create_stolen(mem, obj, stolen);
+	ret = __i915_gem_object_create_stolen(mem, obj, stolen,
+					      I915_BO_ALLOC_CONTIGUOUS);
 	if (ret)
 		goto err_object_free;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
