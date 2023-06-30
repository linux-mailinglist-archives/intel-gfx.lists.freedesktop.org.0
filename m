Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D637440BC
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 19:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2EE10E4C7;
	Fri, 30 Jun 2023 17:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A3E010E4C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 17:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688144554; x=1719680554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kQxVfL2EpccIxpXmi0itTz3YmEgLQgQsYTRPvC+59zk=;
 b=IRG3R3kHuQezizxngK8C6NGNhljYj4PxLlA82qc2XGA5tqnr72YJeRf+
 ZoNeWqL10kz2a9NFizi/i3jxV6nvLlLvmwdbiwU6OYShzSIHtut2Lo7MN
 kKDx0RLgRsyqSdcU/C+dbadIqMaC1bb1WEPvYB1tCaIobx0O2ef/M0ogz
 cpZSByylsU5Yb3uJmlJQJUt2FqnXKskmxDZuVQ2GKcfyC+bSVtiu0Xq4W
 paag/wWnWAs2R/eMTwRSBMQLEUUesKi/waLq29njrD8GfOwld+oSDdXhi
 7f4U2lWXeJH2hzyyIr0X+LqhGajt2R7vISHwquNue129pOms0aiDLnAZY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="342026915"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="342026915"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 10:01:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="841916179"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="841916179"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 10:01:50 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 19:01:40 +0200
Message-Id: <20230630170140.17319-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230630170140.17319-1-nirmoy.das@intel.com>
References: <20230630170140.17319-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Do not use stolen on MTL
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use smem on MTL due to a HW bug in MTL that prevents
reading from stolen memory using LMEM BAR.

Cc: Oak Zeng <oak.zeng@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c   | 2 ++
 drivers/gpu/drm/i915/display/intel_overlay.c | 7 ++++---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 1cc0ddc6a310..10e38d60f9ef 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -182,6 +182,8 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
 		obj = i915_gem_object_create_lmem(dev_priv, size,
 						  I915_BO_ALLOC_CONTIGUOUS |
 						  I915_BO_ALLOC_USER);
+	} else if (IS_METEORLAKE(dev_priv)) { /* Wa_22018444074 */
+		obj = i915_gem_object_create_shmem(dev_priv, size);
 	} else {
 		/*
 		 * If the FB is too big, just don't use it since fbdev is not very
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index d6fe2bbabe55..05ae446c8a56 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1348,12 +1348,13 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 static int get_registers(struct intel_overlay *overlay, bool use_phys)
 {
 	struct drm_i915_private *i915 = overlay->i915;
-	struct drm_i915_gem_object *obj;
+	struct drm_i915_gem_object *obj = NULL;
 	struct i915_vma *vma;
 	int err;
 
-	obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
-	if (IS_ERR(obj))
+	if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
+		obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
+	if (IS_ERR_OR_NULL(obj))
 		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
-- 
2.39.0

