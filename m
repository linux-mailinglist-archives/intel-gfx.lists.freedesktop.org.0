Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB3B55133F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219AA10E61E;
	Mon, 20 Jun 2022 08:50:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23DD810E61B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655715004; x=1687251004;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+opN7eXYl1Fux2lUhgbDZacj0ETLwo/1TvqjqeNjOGA=;
 b=UE3bke5HKafwrOnIjiW+Ne+7AS21P3QY2sM/EydZmSe2noIXp05y4YGs
 vj5fWnSx5H7Q1yxrmfbyBHv1uapHBSPnIoKic8zexyLrMLCobvTfkIdCc
 7a6PMx7w6TGIwSlTtrfj5v4QiQE7gU/KXdVCk3SGx8MROQ4MInUTcDM9A
 KIs8jJgj3JllaZ8FVDZ6IaaC+a2IEiCcn4rn0pci4bvUBkC+igsc4eLm+
 hiq9rPReDP5iKT8ulSJzSbLQAoRS9izMwrUqfJ3ib/gIrYekYKAR7TYMM
 pRw5+cDPsBA90kMY46OOy43ZmLG8nQ7NZAUhhieWBIAdfW+2BonDjs3Jy w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280571630"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="280571630"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:50:03 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="913562157"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:50:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:36 +0300
Message-Id: <a0422f0a8ac055f65b7922bcd3119b180a41e79e.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/16] drm/i915: make device info a pointer to
 static const data
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that the device info is no longer modified runtime, we don't need to
make a copy of it, and we can convert i915->__info into a pointer to
static const data. Also remove mkwrite_device_info().

This does increase the text size slightly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

An alternative is to keep copying device info, but casting away the
const only once at the copy time, removing mkwrite_device_info().
---
 drivers/gpu/drm/i915/i915_driver.c |  8 ++------
 drivers/gpu/drm/i915/i915_drv.h    | 11 ++---------
 2 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 5969cc7805d3..9c9c492e97a8 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -793,9 +793,6 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 static struct drm_i915_private *
 i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
-	const struct intel_device_info *match_info =
-		(struct intel_device_info *)ent->driver_data;
-	struct intel_device_info *device_info;
 	struct intel_runtime_info *runtime;
 	struct drm_i915_private *i915;
 
@@ -809,9 +806,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Device parameters start as a copy of module parameters. */
 	i915_params_copy(&i915->params, &i915_modparams);
 
-	/* Setup the write-once "constant" device info */
-	device_info = mkwrite_device_info(i915);
-	memcpy(device_info, match_info, sizeof(*device_info));
+	/* Static const device info. */
+	i915->__info = (const struct intel_device_info *)ent->driver_data;
 
 	/* Initialize initial runtime info from static const data and pdev. */
 	runtime = RUNTIME_INFO(i915);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 89472440947c..a2a57f07c5be 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -380,7 +380,7 @@ struct drm_i915_private {
 	/* i915 device parameters */
 	struct i915_params params;
 
-	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
+	const struct intel_device_info *__info; /* Use INTEL_INFO() to access. */
 	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
 	struct intel_driver_caps caps;
 
@@ -848,7 +848,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	GENMASK(INTEL_FRONTBUFFER_BITS_PER_PIPE * ((pipe) + 1) - 1, \
 		INTEL_FRONTBUFFER_BITS_PER_PIPE * (pipe))
 
-#define INTEL_INFO(dev_priv)	(&(dev_priv)->__info)
+#define INTEL_INFO(__i915)	(__i915->__info)
 #define RUNTIME_INFO(dev_priv)	(&(dev_priv)->__runtime)
 #define DRIVER_CAPS(dev_priv)	(&(dev_priv)->caps)
 
@@ -1432,13 +1432,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 
-/* intel_device_info.c */
-static inline struct intel_device_info *
-mkwrite_device_info(struct drm_i915_private *dev_priv)
-{
-	return (struct intel_device_info *)INTEL_INFO(dev_priv);
-}
-
 static inline enum i915_map_type
 i915_coherent_map_type(struct drm_i915_private *i915,
 		       struct drm_i915_gem_object *obj, bool always_coherent)
-- 
2.30.2

