Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA89031182A
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 03:10:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A886F54C;
	Sat,  6 Feb 2021 02:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836E26E3C6
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Feb 2021 02:10:36 +0000 (UTC)
IronPort-SDR: G9OUUEvK5P5z5nG0a9NfM5x72TDPPguf8QzGIssvl0Pa3cKgRINFpBO+vdFfLoliVpcvZk3Zlq
 aekOJ9c1DL7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="181577451"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="181577451"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:36 -0800
IronPort-SDR: DKSdvd5JZdAzR54N+z5l+yrR20HL5yzmSdgUp1pYJeXb9pjdd2M69txxvWKZajdu+7QDaZDskN
 1YUvycoEEM4w==
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="394141283"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 18:10:36 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 18:09:14 -0800
Message-Id: <20210206020925.36729-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
References: <20210206020925.36729-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 03/14] drm/i915/pxp: define PXP device flag and
 kconfig
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

Ahead of the PXP implementation, define the relevant define flag and
kconfig option.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/Kconfig             | 11 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h          |  4 ++++
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 1e1cb245fca7..c55e58bdbe0b 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -130,6 +130,17 @@ config DRM_I915_GVT_KVMGT
 	  Choose this option if you want to enable KVMGT support for
 	  Intel GVT-g.
 
+config DRM_I915_PXP
+	bool "Enable Intel PXP support for Intel Gen12+ platform"
+	depends on DRM_I915
+	depends on INTEL_MEI && INTEL_MEI_PXP
+	default y
+	help
+	  PXP (Protected Xe Path) is an i915 component, available on GEN12+
+	  GPUs, that helps to establish the hardware protected session and
+	  manage the status of the alive software session, as well as its life
+	  cycle.
+
 menu "drm/i915 Debugging"
 depends on DRM_I915
 depends on EXPERT
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a2fd7e5039b3..fe1ff025f961 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1779,6 +1779,10 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 
 #define HAS_VRR(i915)	(INTEL_GEN(i915) >= 12)
 
+#define HAS_PXP(dev_priv) (IS_ENABLED(CONFIG_DRM_I915_PXP) && \
+			   INTEL_INFO(dev_priv)->has_pxp) && \
+			   VDBOX_MASK(&dev_priv->gt)
+
 /* Only valid when HAS_DISPLAY() is true */
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index e6ca1023ffcf..54891f7655e4 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -127,6 +127,7 @@ enum intel_ppgtt_type {
 	func(has_logical_ring_elsq); \
 	func(has_master_unit_irq); \
 	func(has_pooled_eu); \
+	func(has_pxp); \
 	func(has_rc6); \
 	func(has_rc6p); \
 	func(has_rps); \
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
