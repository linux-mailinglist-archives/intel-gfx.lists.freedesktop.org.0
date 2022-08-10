Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A5458ECFF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 15:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EB60B0A29;
	Wed, 10 Aug 2022 13:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F686B086D
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137563; x=1691673563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ajKCPhHIsaUyzlQgYToAHPyUuWi54oyIMx/UF7W2cas=;
 b=VZ3z6CU+HN1qklUGvwHNKddBWSNKqFSMkwn8eLne5e5WRE4MLrJg05IC
 IhV3BIfnWOC+42QPiCvFJ80Mxymwn9l5+BolNKnAmeXQXFXN7uUveoT6z
 Rc2amDQTqp/Hv7DnZPfXcc6jlCY+C/FyOlh9rkzQEw53D/S9wAhutTdPe
 l+OBk8JF7eyA6kzmWi01f7ND5oLVtITsRIErNBor3W64uZ+kELT/0gz2u
 28TwPo6oRl/EUrxKWrV3vErqL4O/xPKFg6/kg9qVE9kdRkzfjk8VyPcuF
 gCAaUYuCOwYHCqME/fglOi0aX5seHfTQm+BQom9S8fByqs6bgBzmq8Oqk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="288645248"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="288645248"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="781228663"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:18:19 +0300
Message-Id: <e6062990cdeea46d73745fb448d0721c65b09ff6.1660137416.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660137416.git.jani.nikula@intel.com>
References: <cover.1660137416.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/15] drm/i915: make device info a pointer
 to static const data
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
index 1332c70370a6..ec391f293e94 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -811,9 +811,6 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 static struct drm_i915_private *
 i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 {
-	const struct intel_device_info *match_info =
-		(struct intel_device_info *)ent->driver_data;
-	struct intel_device_info *device_info;
 	struct intel_runtime_info *runtime;
 	struct drm_i915_private *i915;
 
@@ -827,9 +824,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
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
index 4c0104d84c1b..7425ca8435c1 100644
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
 
@@ -1437,13 +1437,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
 
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
2.34.1

