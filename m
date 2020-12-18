Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A783B2DE03A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 10:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF9889E5B;
	Fri, 18 Dec 2020 09:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD4BE89E36
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Dec 2020 09:06:24 +0000 (UTC)
IronPort-SDR: xKk1EjJNcPzqelpTzViabt1rNGEJo4JW+cnLQyU9e9aI5b2pfv77WzzKbOEN1rwVVvzvFMHDZK
 TqWV3XB6UGGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="260134532"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="260134532"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 01:06:24 -0800
IronPort-SDR: XO3BBCpN6O+dkaGAUnuhlCvq/Yjng94huwz+XrtNuc3mwMxLfbbogNdGrfvV3ob5IKEKnjWr48
 zrD+v8yuE+0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="340294378"
Received: from test-optiplex-7040.bj.intel.com ([10.238.154.158])
 by fmsmga008.fm.intel.com with ESMTP; 18 Dec 2020 01:06:22 -0800
From: Xiong Zhang <xiong.y.zhang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Dec 2020 17:05:31 +0800
Message-Id: <20201218090531.23241-1-xiong.y.zhang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <160793037629.28163.3135436538881981223@emeril.freedesktop.org>
References: <160793037629.28163.3135436538881981223@emeril.freedesktop.org>
Subject: [Intel-gfx] [PATCH v2] drm/i915: Try to guess PCH type even without
 ISA bridge
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
Cc: chris@chris-wilson.co.uk
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Zhenyu Wang <zhenyuw@linux.intel.com>

Some vmm like hyperv and crosvm don't supply any ISA bridge to their guest,
when igd passthrough is equipped on these vmm, guest i915 display may
couldn't work as guest i915 detects PCH_NONE pch type.

When i915 runs as guest, this patch guess pch type through gpu type even
without ISA bridge.

v2: Fix CI warning

Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
 drivers/gpu/drm/i915/intel_pch.c | 38 ++++++++++++++++++++++----------
 2 files changed, 32 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5a7df5621aa3..df0b8f9268b2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1758,6 +1758,11 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
 
+static inline bool run_as_guest(void)
+{
+	return !hypervisor_is_type(X86_HYPER_NATIVE);
+}
+
 static inline bool intel_vtd_active(void)
 {
 #ifdef CONFIG_INTEL_IOMMU
@@ -1766,7 +1771,7 @@ static inline bool intel_vtd_active(void)
 #endif
 
 	/* Running as a guest, we assume the host is enforcing VT'd */
-	return !hypervisor_is_type(X86_HYPER_NATIVE);
+	return run_as_guest();
 }
 
 static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index f31c0dabd0cc..a73c60bf349e 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -184,6 +184,23 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
 	return id;
 }
 
+static void intel_detect_pch_virt(struct drm_i915_private *dev_priv)
+{
+	unsigned short id;
+	enum intel_pch pch_type;
+
+	id = intel_virt_detect_pch(dev_priv);
+	pch_type = intel_pch_type(dev_priv, id);
+
+	/* Sanity check virtual PCH id */
+	if (drm_WARN_ON(&dev_priv->drm,
+			id && pch_type == PCH_NONE))
+		id = 0;
+
+	dev_priv->pch_type = pch_type;
+	dev_priv->pch_id = id;
+}
+
 void intel_detect_pch(struct drm_i915_private *dev_priv)
 {
 	struct pci_dev *pch = NULL;
@@ -221,16 +238,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 			break;
 		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
 					     pch->subsystem_device)) {
-			id = intel_virt_detect_pch(dev_priv);
-			pch_type = intel_pch_type(dev_priv, id);
-
-			/* Sanity check virtual PCH id */
-			if (drm_WARN_ON(&dev_priv->drm,
-					id && pch_type == PCH_NONE))
-				id = 0;
-
-			dev_priv->pch_type = pch_type;
-			dev_priv->pch_id = id;
+			intel_detect_pch_virt(dev_priv);
 			break;
 		}
 	}
@@ -246,8 +254,14 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 		dev_priv->pch_id = 0;
 	}
 
-	if (!pch)
-		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
+	if (!pch) {
+		if (run_as_guest()) {
+			drm_dbg_kms(&dev_priv->drm, "No PCH found in vm, try guess..\n");
+			intel_detect_pch_virt(dev_priv);
+		} else {
+			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
+		}
+	}
 
 	pci_dev_put(pch);
 }
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
