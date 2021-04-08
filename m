Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B6D357B7A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 06:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB00A6E9F5;
	Thu,  8 Apr 2021 04:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C606E9F4
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 04:52:39 +0000 (UTC)
IronPort-SDR: j1bQzN3i0ADVEI7D99AwN8BL/WY+mPmkUaIcP2i5iIwe7zHCqTKGJeGq7ygkr06jm6UCFMWhbq
 Mj/wVRwq03wg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="193573089"
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="193573089"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 21:52:37 -0700
IronPort-SDR: mvJ6j8ZeczPR266rt8s8XQNQwQyjaWvGmHRqxjs9h7Jl7sK4/kDVDLGc94xJ3gyOngFKrndplu
 VxV1o3Hc3dHw==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="422064219"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 21:52:37 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Apr 2021 21:52:17 -0700
Message-Id: <20210408045227.985408-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408045227.985408-1-lucas.demarchi@intel.com>
References: <20210408045227.985408-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/12] drm/i915: add macros for graphics and
 media versions
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

Like it was done in
commit 01eb15c9165e ("drm/i915: Add DISPLAY_VER() and related macros")
add the correspondent macros for graphics and media. Going forward we
will prefer checking the versions for the specific IPs (graphics, media
and display) rather than grouping everything under a "gen" version.

For consistency and to make the maintenance easier, it'd be preferred
not to mix the *GEN* macros with the new ones. For older platforms we
can simply consider that the previous "gen" number will extend to all
3 IPs. Then we can start replacing its use in the driver. Right now this
replacement is not done and only the infrastructure is put in place.
We also leave gen and gen_mask inside struct intel_device_info while
it's still being used throughout the code.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 17 ++++++++++++++++-
 drivers/gpu/drm/i915/i915_pci.c          |  7 ++++++-
 drivers/gpu/drm/i915/intel_device_info.h |  3 +++
 3 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8c62bb2abd31..97cbd019f2e9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1234,9 +1234,24 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
 #define RUNTIME_INFO(dev_priv)	(&(dev_priv)->__runtime)
 #define DRIVER_CAPS(dev_priv)	(&(dev_priv)->caps)
 
-#define INTEL_GEN(dev_priv)	(INTEL_INFO(dev_priv)->gen)
 #define INTEL_DEVID(dev_priv)	(RUNTIME_INFO(dev_priv)->device_id)
 
+/*
+ * Deprecated: this will be replaced by individual IP checks:
+ * GRAPHICS_VER(), MEDIA_VER and DISPLAY_VER()
+ */
+#define INTEL_GEN(dev_priv)		(INTEL_INFO(dev_priv)->gen)
+
+#define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics_ver)
+#define IS_GRAPHICS_RANGE(i915, from, until) \
+	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
+#define IS_GRAPHICS_VER(i915, v)	(GRAPHICS_VER(i915) == (v))
+
+#define MEDIA_VER(i915)			(INTEL_INFO(i915)->media_ver)
+#define IS_MEDIA_RANGE(i915, from, until) \
+	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
+#define IS_MEDIA_VER(i915, v)		(MEDIA_VER(i915) == (v))
+
 #define DISPLAY_VER(i915)	(INTEL_INFO(i915)->display.ver)
 #define IS_DISPLAY_RANGE(i915, from, until) \
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index ce5cbeaf036d..97ab73276334 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -36,7 +36,12 @@
 #include "i915_selftest.h"
 
 #define PLATFORM(x) .platform = (x)
-#define GEN(x) .gen = (x), .gen_mask = BIT((x) - 1), .display.ver = (x)
+#define GEN(x) \
+	.gen_mask = BIT((x) - 1), \
+	.gen = (x), \
+	.graphics_ver = (x), \
+	.media_ver = (x), \
+	.display.ver = (x)
 
 #define I845_PIPE_OFFSETS \
 	.pipe_offsets = { \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b16c75927a12..405883a8cc84 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -162,6 +162,9 @@ enum intel_ppgtt_type {
 struct intel_device_info {
 	u16 gen_mask;
 
+	u8 graphics_ver;
+	u8 media_ver;
+
 	u8 gen;
 	u8 gt; /* GT number, 0 if undefined */
 	intel_engine_mask_t platform_engine_mask; /* Engines supported by the HW */
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
