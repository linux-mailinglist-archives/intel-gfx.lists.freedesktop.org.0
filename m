Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DE94A63AC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 19:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1575A10E121;
	Tue,  1 Feb 2022 18:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3F3D10E121;
 Tue,  1 Feb 2022 18:24:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id EB0AB1F42EBA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1643739880;
 bh=wakhSFcVMZevZPcycdryY+hpEED54NWm/zeUvW6H0hU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Yg6gQ7FRyxRGZmcy4Md1ayTNrznAdxBSClNHjdWfPNwAaFnK0sD+DFVWQesjXgHqy
 OKwuoTw6kQHeCVy+qmFzowNJFFgixoYlJkhF0gjjj7Efy9cXxyaaiCB7S3gutXrswh
 5W8cQY/iNM/PB/8o2cWRllUHYbLJv5nXiUb2ibb8Q2PxmFhmNUg8fpI714R+TBKt8H
 xfEIHPevbWR9D6F/wsjuPAdYNB5Od0VJ4UORX9y2K9r3BlSePL3v/t08+KrKoXDAbh
 8VjEcYsg5luyOMUvbF1yuj0yVH66x6H9vKG+3WC64jM9O7H8qJod7JVIRFH1eAwAnC
 ZY6ebwlnBAfKg==
From: Robert Beckett <bob.beckett@collabora.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Date: Tue,  1 Feb 2022 18:24:17 +0000
Message-Id: <20220201182422.1548863-2-bob.beckett@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220201182422.1548863-1-bob.beckett@collabora.com>
References: <20220201182422.1548863-1-bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 1/5] drm/i915: add needs_compact_pt flag
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ramalingam C <ramalingam.c@intel.com>

Add a new platform flag, needs_compact_pt, to mark the requirement of
compact pt layout support for the ppGTT when using 64K GTT pages.

With this flag has_64k_pages will only indicate requirement of 64K
GTT page sizes or larger for device local memory access.

v6:
	* minor doc formatting

Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 11 ++++++++---
 drivers/gpu/drm/i915/i915_pci.c          |  2 ++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 00e7594b59c9..4afdfa5fd3b3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1512,12 +1512,17 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 /*
  * Set this flag, when platform requires 64K GTT page sizes or larger for
- * device local memory access. Also this flag implies that we require or
- * at least support the compact PT layout for the ppGTT when using the 64K
- * GTT pages.
+ * device local memory access.
  */
 #define HAS_64K_PAGES(dev_priv) (INTEL_INFO(dev_priv)->has_64k_pages)
 
+/*
+ * Set this flag when platform doesn't allow both 64k pages and 4k pages in
+ * the same PT. this flag means we need to support compact PT layout for the
+ * ppGTT when using the 64K GTT pages.
+ */
+#define NEEDS_COMPACT_PT(dev_priv) (INTEL_INFO(dev_priv)->needs_compact_pt)
+
 #define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
 
 #define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 2df2db0a5d70..ce6ae6a3cbdf 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1028,6 +1028,7 @@ static const struct intel_device_info xehpsdv_info = {
 	PLATFORM(INTEL_XEHPSDV),
 	.display = { },
 	.has_64k_pages = 1,
+	.needs_compact_pt = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
@@ -1046,6 +1047,7 @@ static const struct intel_device_info dg2_info = {
 	PLATFORM(INTEL_DG2),
 	.has_guc_deprivilege = 1,
 	.has_64k_pages = 1,
+	.needs_compact_pt = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) |
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index abf1e103c558..d8da40d01dca 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -130,6 +130,7 @@ enum intel_ppgtt_type {
 	/* Keep has_* in alphabetical order */ \
 	func(has_64bit_reloc); \
 	func(has_64k_pages); \
+	func(needs_compact_pt); \
 	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
 	func(has_global_mocs); \
-- 
2.25.1

