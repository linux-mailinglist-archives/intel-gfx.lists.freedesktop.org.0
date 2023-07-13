Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1227525F9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 17:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A8A10E6FC;
	Thu, 13 Jul 2023 15:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0141510E6F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689260514; x=1720796514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/Ox1FOYmNjybJQM7aDIXqGUU7Fl8vYddjK9sMAZTkTA=;
 b=faie+hpsR8xZL3WbKs7S7IwWv073M4yhVD1x36DoSjw6r9ZEYH8i0OlE
 hCEbRYwWy0j5aKpIE/XS7aPhYl3MG9z8qkpeZhoCq7YDUxOhK+NiKSIKy
 vVeosmqCeu78Nc9cmggv+vyXrheRHmMSVMaBxdE8Fh65L/uvTYZ4jE5EF
 hOahZ9j2+V/um7/N1XwripAlTyou+bXosbv1R3dJsyjS163vdy8vEBnoQ
 GujW8tIknx01/tn6nlag6kcAbxeiVzCMVNNcpeEYjtfqV7f4wHjc35PLr
 AUiAtjbRXOMWgQ5VJfZXbY3l3syNgSCQWyvFD1cTPJ6nuUWBZhGGBI9LO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="345528072"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="345528072"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 08:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="751668903"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="751668903"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 08:01:51 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jul 2023 17:01:42 +0200
Message-Id: <20230713150142.12700-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230713150142.12700-1-nirmoy.das@intel.com>
References: <20230713150142.12700-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/display: Do not use stolen on
 MTL
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

v2 and v3: improve stolen skip detection(Andrzej)

Cc: Oak Zeng <oak.zeng@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Oak Zeng <oak.zeng@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c   | 4 +++-
 drivers/gpu/drm/i915/display/intel_overlay.c | 5 +++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 1cc0ddc6a310..491b6e22edad 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -187,8 +187,10 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
 		 * If the FB is too big, just don't use it since fbdev is not very
 		 * important and we should probably use that space with FBC or other
 		 * features.
+		 *
+		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
 		 */
-		if (size * 2 < dev_priv->dsm.usable_size)
+		if (!(IS_METEORLAKE(dev_priv)) && size * 2 < dev_priv->dsm.usable_size)
 			obj = i915_gem_object_create_stolen(dev_priv, size);
 		if (IS_ERR(obj))
 			obj = i915_gem_object_create_shmem(dev_priv, size);
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index d6fe2bbabe55..09c1aa1427ad 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1348,11 +1348,12 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
 static int get_registers(struct intel_overlay *overlay, bool use_phys)
 {
 	struct drm_i915_private *i915 = overlay->i915;
-	struct drm_i915_gem_object *obj;
+	struct drm_i915_gem_object *obj = ERR_PTR(-ENODEV);
 	struct i915_vma *vma;
 	int err;
 
-	obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
+	if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
+		obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
 	if (IS_ERR(obj))
 		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
 	if (IS_ERR(obj))
-- 
2.39.0

