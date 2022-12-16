Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CB564EDF1
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 16:28:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6F310E5D5;
	Fri, 16 Dec 2022 15:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46C510E5D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 15:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671204472; x=1702740472;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Jrfg3RsSBwfGurv+ezQ5gWjCFDENgpjq//AEhOZG24A=;
 b=RCHTjAWEX62oV0zi1UL+SvuTIFC2/qrP3VGwP8s7ZuWf9rlMx1VA581h
 jmbWNDDnAG2lqdq6JEP3xYYPHERkCaPZTBODLcfqdJsVqXfH3aqxgpyVh
 GgFM90WrtEVTyNTKjYasd9Pg5L3pF1DWNuTPcjetqT8rR4KgQWW32Uf2k
 aNR+bARlbHMoTTm+ZXkNfkdQc8Z0Im6EmlAzHgUvERXtT+wMkV6dgq/jG
 VZ3UMttDaJ3tvDDzsBWKaZXaHuG5WnejjcZ4zaKlwo4hx0DNgggG6bWBy
 mBlR5CK0Vo3fIq8tjJxrOZL78tFlM/5JyJZDJ3gd3rijh62hjVEhqEfqC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="316625370"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="316625370"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 07:27:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="978640449"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="978640449"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 07:27:50 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 16:27:44 +0100
Message-Id: <20221216152744.18658-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use helper func to find out map type
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
Cc: matthew.auld@intel.com, andrzej.hajda@intel.com,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use i915_coherent_map_type() function to find out
map_type of the shmem obj.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/shmem_utils.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 402f085f3a02..e1a69803624f 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -8,6 +8,7 @@
 #include <linux/pagemap.h>
 #include <linux/shmem_fs.h>
 
+#include "i915_drv.h"
 #include "gem/i915_gem_object.h"
 #include "gem/i915_gem_lmem.h"
 #include "shmem_utils.h"
@@ -32,6 +33,8 @@ struct file *shmem_create_from_data(const char *name, void *data, size_t len)
 
 struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 {
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	enum i915_map_type map_type;
 	struct file *file;
 	void *ptr;
 
@@ -41,8 +44,8 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 		return file;
 	}
 
-	ptr = i915_gem_object_pin_map_unlocked(obj, i915_gem_object_is_lmem(obj) ?
-						I915_MAP_WC : I915_MAP_WB);
+	map_type = i915_coherent_map_type(i915, obj, false);
+	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
 	if (IS_ERR(ptr))
 		return ERR_CAST(ptr);
 
-- 
2.38.0

