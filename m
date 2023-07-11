Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD6B74FAA3
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 00:07:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A7D10E445;
	Tue, 11 Jul 2023 22:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E3D810E449
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 22:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689113222; x=1720649222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rgKtrtPRAEpQkkpZFcpjrEcPUs3kQezcG1/9FugP9Mk=;
 b=A1bgzbRVCzVHRET94j6Dl54g07oiSqnpV9wHWixeyoYguLwOQYe1b349
 jJ6cJZMn1iF35DKBf/7C78ftBN6rRGhedU/1ky5k4vGeL7Tx3D6Z/eRM3
 4u/8ynuc+VQBwiPnuluRYlutASmfukRc+O8EcstdXKob3Z3oBDW/SPAY4
 tK3zbsW+GCCRkyxd7qm51B3UlbtfbWN4105Z3+PzNHLDip86e8GO690iS
 dZ/de3DvNygEvDdvxef9mCNOBZbyQabZg1bP9cEFCj3J0z06YLXIa7nxi
 UhTJj6QQNQg3hU36y7gdjwdbwzkn2Qr49kMFMbztoffb2JORQMKPbYSyU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="368283956"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="368283956"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 15:07:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="967982056"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="967982056"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 15:06:58 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jul 2023 00:06:48 +0200
Message-Id: <20230711220648.17108-2-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230711220648.17108-1-nirmoy.das@intel.com>
References: <20230711220648.17108-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/display: Do not use stolen on
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

v2: improve stolen skip detection(Andrzej)

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
 drivers/gpu/drm/i915/display/intel_fbdev.c   | 5 ++++-
 drivers/gpu/drm/i915/display/intel_overlay.c | 5 +++--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 1cc0ddc6a310..e019bbcd474e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -187,8 +187,11 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
 		 * If the FB is too big, just don't use it since fbdev is not very
 		 * important and we should probably use that space with FBC or other
 		 * features.
+		 *
+		 * Also skip stolen on MTL as Wa_22018444074 mitigation.
 		 */
-		if (size * 2 < dev_priv->dsm.usable_size)
+		if (size * 2 < dev_priv->dsm.usable_size ||
+		    !(IS_METEORLAKE(dev_priv)))
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

