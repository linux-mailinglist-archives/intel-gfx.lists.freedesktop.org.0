Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C532FCDE0
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 11:47:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104916E15D;
	Wed, 20 Jan 2021 10:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FCD6E15D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 10:47:22 +0000 (UTC)
IronPort-SDR: s7xTV/1xpDMjhvAn/OzuF0UCyQkzXUbYViKQnu5oSmFrPmLnHGQ9fV9eHO0GEeHCJDX2Z2dPkV
 RtBiQyygBUIQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="166746976"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="166746976"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 02:47:21 -0800
IronPort-SDR: 9CILEvtDx5JA9YtLGhVnINB2qAGPe66ri4IHTUsneJm03nDB0bcoYSn9hnvU0yOnvVhZ8549TF
 IbNect2WcGRg==
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="467037384"
Received: from vvujicic-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.22])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 02:47:20 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jan 2021 10:47:14 +0000
Message-Id: <20210120104714.112812-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/region: don't leak the object on error
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

Sanity check the object size before allocating a new gem object.

Fixes: 97d553963250 ("drm/i915/region: convert object_create into object_init")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_region.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index 4834a0b272f4..3e3dad22a683 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -161,10 +161,6 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
 	GEM_BUG_ON(!size);
 	GEM_BUG_ON(!IS_ALIGNED(size, I915_GTT_MIN_ALIGNMENT));
 
-	obj = i915_gem_object_alloc();
-	if (!obj)
-		return ERR_PTR(-ENOMEM);
-
 	/*
 	 * XXX: There is a prevalence of the assumption that we fit the
 	 * object's page count inside a 32bit _signed_ variable. Let's document
@@ -178,6 +174,10 @@ i915_gem_object_create_region(struct intel_memory_region *mem,
 	if (overflows_type(size, obj->base.size))
 		return ERR_PTR(-E2BIG);
 
+	obj = i915_gem_object_alloc();
+	if (!obj)
+		return ERR_PTR(-ENOMEM);
+
 	err = mem->ops->init_object(mem, obj, size, flags);
 	if (err)
 		goto err_object_free;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
