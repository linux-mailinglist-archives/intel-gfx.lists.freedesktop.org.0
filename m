Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9668E41035D
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Sep 2021 06:20:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2556F3A3;
	Sat, 18 Sep 2021 04:19:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77FAF6F3A1
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Sep 2021 04:19:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="222948820"
X-IronPort-AV: E=Sophos;i="5.85,303,1624345200"; d="scan'208";a="222948820"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 21:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,303,1624345200"; d="scan'208";a="652066392"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 17 Sep 2021 21:19:44 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 17 Sep 2021 21:19:54 -0700
Message-Id: <20210918042008.29468-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210918042008.29468-1-alan.previn.teres.alexis@intel.com>
References: <20210918042008.29468-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 03/17] drm/i915/pxp: define PXP device flag
 and kconfig
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Ahead of the PXP implementation, define the relevant define flag and
kconfig option.

v2: flip kconfig default to N. Some machines have IFWIs that do not
support PXP, so we need it to be an opt-in until we add support to query
the caps from the mei device.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Kconfig             | 11 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h          |  3 +++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 3 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index f960f5d7664e..8859444943a0 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -131,6 +131,17 @@ config DRM_I915_GVT_KVMGT
 	  Choose this option if you want to enable KVMGT support for
 	  Intel GVT-g.
 
+config DRM_I915_PXP
+	bool "Enable Intel PXP support for Intel Gen12 and newer platform"
+	depends on DRM_I915
+	depends on INTEL_MEI && INTEL_MEI_PXP
+	default n
+	help
+	  PXP (Protected Xe Path) is an i915 component, available on GEN12 and
+	  newer GPUs, that helps to establish the hardware protected session and
+	  manage the status of the alive software session, as well as its life
+	  cycle.
+
 menu "drm/i915 Debugging"
 depends on DRM_I915
 depends on EXPERT
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 37c1ca266bcd..447a248f14aa 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1678,6 +1678,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
 
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)
 
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d328bb95c49b..8e6f48d1eb7b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -133,6 +133,7 @@ enum intel_ppgtt_type {
 	func(has_logical_ring_elsq); \
 	func(has_mslices); \
 	func(has_pooled_eu); \
+	func(has_pxp); \
 	func(has_rc6); \
 	func(has_rc6p); \
 	func(has_rps); \
-- 
2.25.1

