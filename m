Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C351357923
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 02:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F21C46E3D6;
	Thu,  8 Apr 2021 00:42:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13DB06E9B8
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 00:42:11 +0000 (UTC)
IronPort-SDR: jf1F8WLrNtsWQKpJmwVI638LZ3jeICoZreTxiKYdmTPmjKsaxRJhDRhirCr3wAoaho78SG6mAX
 cZTuUZjkHzFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="172900159"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="172900159"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:10 -0700
IronPort-SDR: PixSXPD5MVtpWrwbNeJYq3hvPPFgaZY3Hm0jRjJxfuMnZhy67PTH+GsC1vqfQvlT7LocEav8BG
 dYL0nWcEjTHw==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="519634236"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Apr 2021 17:41:56 -0700
Message-Id: <20210408004200.984176-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408004200.984176-1-lucas.demarchi@intel.com>
References: <20210408004200.984176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/12] drm/i915: finish removal of gen from
 intel_device_info
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

Now that it's not being used anymore, finish its removal. Like for
gen_mask, we replace INTEL_GEN() and IS_GEN()  macros to use the new
field.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h                  | 10 +++++-----
 drivers/gpu/drm/i915/i915_pci.c                  |  1 -
 drivers/gpu/drm/i915/intel_device_info.h         |  1 -
 drivers/gpu/drm/i915/selftests/mock_gem_device.c |  2 +-
 4 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 317249f47198..b65a4e4e4eea 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1240,11 +1240,15 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
  * Deprecated: this will be replaced by individual IP checks:
  * GRAPHICS_VER(), MEDIA_VER and DISPLAY_VER()
  */
-#define INTEL_GEN(dev_priv)		(INTEL_INFO(dev_priv)->gen)
+#define INTEL_GEN(dev_priv)		GRAPHICS_VER(dev_priv)
 /*
  * Deprecated: use IS_GRAPHICS_RANGE()
  */
 #define IS_GEN_RANGE(dev_priv, s, e)	IS_GRAPHICS_RANGE(dev_priv, (s), (e))
+/*
+ * Deprecated: use IS_GRAPHICS_VER()
+ */
+#define IS_GEN(dev_priv, n)		IS_GRAPHICS_VER(dev_priv, (n))
 
 #define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
 #define IS_GRAPHICS_RANGE(i915, from, until) \
@@ -1264,10 +1268,6 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define REVID_FOREVER		0xff
 #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
 
-#define IS_GEN(dev_priv, n) \
-	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(n)) + \
-	 INTEL_INFO(dev_priv)->gen == (n))
-
 #define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
 
 /*
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 3b9cd1af0f28..1453c1436f31 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -37,7 +37,6 @@
 
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
-	.gen = (x), \
 	.graphics_ver = (x), \
 	.media_ver = (x), \
 	.display.ver = (x)
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b8f7b996f140..8ab4fa6c7fdd 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -163,7 +163,6 @@ struct intel_device_info {
 	u8 graphics_ver;
 	u8 media_ver;
 
-	u8 gen;
 	u8 gt; /* GT number, 0 if undefined */
 	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
 
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 0188f877cab2..2ffc763fe90d 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -162,7 +162,7 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Using the global GTT may ask questions about KMS users, so prepare */
 	drm_mode_config_init(&i915->drm);
 
-	mkwrite_device_info(i915)->gen = -1;
+	mkwrite_device_info(i915)->graphics_ver = -1;
 
 	mkwrite_device_info(i915)->page_sizes =
 		I915_GTT_PAGE_SIZE_4K |
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
