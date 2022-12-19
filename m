Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECD0650AB9
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Dec 2022 12:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F205510E29C;
	Mon, 19 Dec 2022 11:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A5C410E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Dec 2022 11:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671449381; x=1702985381;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LMns0MOuz+dsOESqHXTlUbnn6KPUI7Q9P3DOSigK0uE=;
 b=BZCaQXfR2L+XOSXTzRRTuM6ctq9HNxqFHlCu5C/BpaZ8sqU/gnM1TISV
 DOHXlLJyiwe5G9FbunElBt9E9nLgQcSGsMhm1BclGfiolWqPsy6s126a3
 QBFhYOD4xAG4pIG8QDsWtziSS+LUNUFLNYyFJZB6kTfm3DuiD7FLA8qYP
 S/1qN8oeS2va13I0N0YrRrUH59kj7SsWg8gk5Pz0Jqv6lG12z0Y81wIpp
 80AUWrx8nMO2WX6gHppsfr7OkN5IOTyvZFDj6S7Qpui8liTOHpB2hb5gT
 3nyldNxootNjXX58nF2fdlpB4E5baSo6aSnc9kRCl96aCkPrf23my7KW3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="307004722"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="307004722"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 03:29:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="824819583"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="824819583"
Received: from nirmoyda-desk.igk.intel.com ([10.102.13.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 03:29:38 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Dec 2022 12:29:33 +0100
Message-Id: <20221219112933.21417-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Use helper func to find out map
 type
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

v2: handle non-llc platform(Matt)

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/shmem_utils.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 402f085f3a02..449c9ed44382 100644
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
+	map_type = i915_coherent_map_type(i915, obj, true);
+	ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
 	if (IS_ERR(ptr))
 		return ERR_CAST(ptr);
 
-- 
2.38.0

