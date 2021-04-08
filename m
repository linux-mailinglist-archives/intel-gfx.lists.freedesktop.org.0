Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD40357926
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 02:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A6B6E9C3;
	Thu,  8 Apr 2021 00:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B0B6E3D6
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 00:42:10 +0000 (UTC)
IronPort-SDR: E4fjYNYlkjIcGWE3PFO/j2tKG93TBxyVTyfjtCwg3QHDMEEitbj7dpF6mCxVVyy2EBm3CibxH3
 A40NbKTSG3Bg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="172900157"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="172900157"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:10 -0700
IronPort-SDR: DpjgKiVUW0Be4ZZ9mg4XDO7se/tiROVrBTo0Ip/Vt/Flui7yC2ELaAD7Od3rRGW3DIRrpPiauO
 PlgaIOX0VFzg==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="519634229"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 17:42:09 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Apr 2021 17:41:54 -0700
Message-Id: <20210408004200.984176-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408004200.984176-1-lucas.demarchi@intel.com>
References: <20210408004200.984176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: finish removal of gen_mask
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

Now that it's not used anywhere, remove it from struct
intel_device_info. To allow a period in which code will be converted to
the new macro, keep IS_GEN_RANGE() around, just redefining it to use
the new fields. The size advantage from IS_GEN_RANGE() using a mask is
not that big as it has pretty limited use througout the driver:

   text    data     bss     dec     hex filename
2758497   95965    6496 2860958  2ba79e drivers/gpu/drm/i915/i915.ko.old
2758586   95953    6496 2861035  2ba7eb drivers/gpu/drm/i915/i915.ko.new

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c          |  2 --
 drivers/gpu/drm/i915/i915_drv.h          | 13 ++++---------
 drivers/gpu/drm/i915/i915_pci.c          |  1 -
 drivers/gpu/drm/i915/intel_device_info.h |  2 --
 4 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 2483447ff8dc..8f953a0b7e36 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -768,8 +768,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	memcpy(device_info, match_info, sizeof(*device_info));
 	RUNTIME_INFO(i915)->device_id = pdev->device;
 
-	BUG_ON(device_info->gen > BITS_PER_TYPE(device_info->gen_mask));
-
 	return i915;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 97cbd019f2e9..317249f47198 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1241,6 +1241,10 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
  * GRAPHICS_VER(), MEDIA_VER and DISPLAY_VER()
  */
 #define INTEL_GEN(dev_priv)		(INTEL_INFO(dev_priv)->gen)
+/*
+ * Deprecated: use IS_GRAPHICS_RANGE()
+ */
+#define IS_GEN_RANGE(dev_priv, s, e)	IS_GRAPHICS_RANGE(dev_priv, (s), (e))
 
 #define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
 #define IS_GRAPHICS_RANGE(i915, from, until) \
@@ -1260,15 +1264,6 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define REVID_FOREVER		0xff
 #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
 
-#define INTEL_GEN_MASK(s, e) ( \
-	BUILD_BUG_ON_ZERO(!__builtin_constant_p(s)) + \
-	BUILD_BUG_ON_ZERO(!__builtin_constant_p(e)) + \
-	GENMASK((e) - 1, (s) - 1))
-
-/* Returns true if Gen is in inclusive range [Start, End] */
-#define IS_GEN_RANGE(dev_priv, s, e) \
-	(!!(INTEL_INFO(dev_priv)->gen_mask & INTEL_GEN_MASK((s), (e))))
-
 #define IS_GEN(dev_priv, n) \
 	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(n)) + \
 	 INTEL_INFO(dev_priv)->gen == (n))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 97ab73276334..3b9cd1af0f28 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -37,7 +37,6 @@
 
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
-	.gen_mask = BIT((x) - 1), \
 	.gen = (x), \
 	.graphics_ver = (x), \
 	.media_ver = (x), \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 405883a8cc84..b8f7b996f140 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -160,8 +160,6 @@ enum intel_ppgtt_type {
 	func(supports_tv);
 
 struct intel_device_info {
-	u16 gen_mask;
-
 	u8 graphics_ver;
 	u8 media_ver;
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
