Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7872D936D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 08:01:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05576E04E;
	Mon, 14 Dec 2020 07:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF506E04E
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 07:01:10 +0000 (UTC)
IronPort-SDR: yNub9764eC5lWW3w3dwELxU+cFWE26UCySebL5VYxXXx6JLt4DBCefG0/qtsvnI3U+UHSyOWyR
 UXck9gNwhflw==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="174776783"
X-IronPort-AV: E=Sophos;i="5.78,417,1599548400"; d="scan'208";a="174776783"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2020 23:01:09 -0800
IronPort-SDR: uVhybYdqJaBd5mU1f90PP9ihi1sepX8Dzk445i/LTh1bkoOgraXbs+2Hdt3A/SHxhm4fsYcsrY
 oHAjgVuRpHlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,417,1599548400"; d="scan'208";a="332202825"
Received: from test-optiplex-7040.bj.intel.com ([10.238.154.158])
 by fmsmga008.fm.intel.com with ESMTP; 13 Dec 2020 23:01:06 -0800
From: Xiong Zhang <xiong.y.zhang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 15:01:13 +0800
Message-Id: <20201214070113.16177-1-xiong.y.zhang@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Try to guess PCH type even without
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
Cc: jani.nikula@intel.com, chris@chris-wilson.co.uk
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Zhenyu Wang <zhenyuw@linux.intel.com>

Some vmm like hyperv and crosvm doesn't supply any ISA bridge to its guest,
when igd passthrough is equipped on these vmm, guest i915 display may
couldn't work as i915 detects pch type as PCH_NONE.

When i915 runs as guest, this patch guess pch type through gpu type even
without ISA bridge.

Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
 drivers/gpu/drm/i915/intel_pch.c | 37 +++++++++++++++++++++-----------
 2 files changed, 31 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 15be8debae54..1e7b1d33708a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1756,6 +1756,11 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
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
@@ -1764,7 +1769,7 @@ static inline bool intel_vtd_active(void)
 #endif
 
 	/* Running as a guest, we assume the host is enforcing VT'd */
-	return !hypervisor_is_type(X86_HYPER_NATIVE);
+	return run_as_guest();
 }
 
 static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index f31c0dabd0cc..ca5989700ecf 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -184,6 +184,23 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
 	return id;
 }
 
+void intel_detect_pch_virt(struct drm_i915_private *dev_priv)
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
@@ -246,8 +254,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 		dev_priv->pch_id = 0;
 	}
 
-	if (!pch)
-		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
+	if (!pch) {
+		if (run_as_guest()) {
+			drm_dbg_kms(&dev_priv->drm, "No PCH found in vm, try guess..\n");
+			intel_detect_pch_virt(dev_priv);
+		} else
+			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
+	}
 
 	pci_dev_put(pch);
 }
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
