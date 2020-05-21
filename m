Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CC61DC3D3
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A23B6E8D1;
	Thu, 21 May 2020 00:38:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68AB86E8C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:09 +0000 (UTC)
IronPort-SDR: 319DRAQ+qcBJPZbjSPOLVwhuaeRU5QOpzyrEiO1onvxkJVlE+eWnbLyd/P2KwhHExG0VBAVWx1
 LE36tS6zKQ5A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:09 -0700
IronPort-SDR: DFWgJCqDsaRQAgl+4wwIiOh3B+dUoFOx4bBOb7XNokxMnZHAgNhC0GwtLBvP6JkUEWvacrJ+D6
 4gffVyOD3C8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720883"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:36 -0700
Message-Id: <20200521003803.18936-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/37] drm/i915: add pcie snoop flag
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Auld <matthew.auld@intel.com>

Gen 12 dgfx devices are coherent with system memory even over PCIe.
Therefore supporting coherent userptr should be possible.

Cc: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 ++-
 drivers/gpu/drm/i915/i915_drv.h             | 1 +
 drivers/gpu/drm/i915/i915_pci.c             | 3 ++-
 drivers/gpu/drm/i915/intel_device_info.h    | 1 +
 4 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
index 8b0708708671..0a375befd893 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
@@ -757,7 +757,8 @@ i915_gem_userptr_ioctl(struct drm_device *dev,
 	int ret;
 	u32 handle;
 
-	if (!HAS_LLC(dev_priv) && !HAS_SNOOP(dev_priv)) {
+	if (!HAS_LLC(dev_priv) && !HAS_SNOOP(dev_priv) &&
+	    !HAS_SNOOP_PCIE(dev_priv)) {
 		/* We cannot support coherent userptr objects on hw without
 		 * LLC and broken snooping.
 		 */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 162b1ead88d3..a9846205a5e2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1566,6 +1566,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_LLC(dev_priv)	(INTEL_INFO(dev_priv)->has_llc)
 #define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
+#define HAS_SNOOP_PCIE(dev_priv)(INTEL_INFO(dev_priv)->has_snoop_pcie)
 #define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
 #define HAS_SECURE_BATCHES(dev_priv) (INTEL_GEN(dev_priv) < 6)
 #define HAS_WT(dev_priv)	((IS_HASWELL(dev_priv) || \
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 7e3252fbad8e..be52d1b76b2e 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -874,7 +874,8 @@ static const struct intel_device_info rkl_info = {
 
 #define GEN12_DGFX_FEATURES \
 	GEN12_FEATURES, \
-	.is_dgfx = 1
+	.is_dgfx = 1, \
+	.has_snoop_pcie = 1
 
 #undef GEN
 #undef PLATFORM
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index ced979c9b366..4bcaa0d6a9e6 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -128,6 +128,7 @@ enum intel_ppgtt_type {
 	func(has_rps); \
 	func(has_runtime_pm); \
 	func(has_snoop); \
+	func(has_snoop_pcie); \
 	func(has_coherent_ggtt); \
 	func(unfenced_needs_alignment); \
 	func(hws_needs_physical);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
