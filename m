Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A47382F55AF
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 01:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F9E897DC;
	Thu, 14 Jan 2021 00:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF22897DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 00:57:31 +0000 (UTC)
IronPort-SDR: 1qiIxoOTvmnukFiX/0W9r2cZK/PkWGtwhouVHLFRwERQn1EqEmmMYAQWgRXx8TdaaQbmfKeYKB
 K9ctSD9WNTMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="175711215"
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="175711215"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 16:57:28 -0800
IronPort-SDR: 5Lur7wJwbcYlrIJDpFl2G/ndzVW7kkv85o0QQjeNkid3+XrDb0z5E2EEB2SmSeaLxRyci9pD5/
 rsnp4HU+EREQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,345,1602572400"; d="scan'208";a="353688844"
Received: from test-optiplex-7040.bj.intel.com ([10.238.154.158])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jan 2021 16:57:25 -0800
From: Xiong Zhang <xiong.y.zhang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Jan 2021 08:58:19 +0800
Message-Id: <20210114005819.4290-1-xiong.y.zhang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <87im8soq2w.fsf@intel.com>
References: <87im8soq2w.fsf@intel.com>
Subject: [Intel-gfx] [PATCH v4] drm/i915: Try to guess PCH type even without
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
v3: Add HAS_DISPLAY()= true condition beforce guessing virt pch, then
    refactori.
v4: Fix CI warning

Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
Signed-off-by: Xiong Zhang <xiong.y.zhang@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
 drivers/gpu/drm/i915/intel_pch.c | 39 ++++++++++++++++++--------------
 2 files changed, 28 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2688f3e3e349..266dec627fa2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1754,6 +1754,11 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
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
@@ -1762,7 +1767,7 @@ static inline bool intel_vtd_active(void)
 #endif
 
 	/* Running as a guest, we assume the host is enforcing VT'd */
-	return !hypervisor_is_type(X86_HYPER_NATIVE);
+	return run_as_guest();
 }
 
 static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index f31c0dabd0cc..ecaf314d60b6 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -143,8 +143,9 @@ static bool intel_is_virt_pch(unsigned short id,
 		 sdevice == PCI_SUBDEVICE_ID_QEMU));
 }
 
-static unsigned short
-intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
+static void
+intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
+		      unsigned short *pch_id, enum intel_pch *pch_type)
 {
 	unsigned short id = 0;
 
@@ -181,12 +182,21 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
 	else
 		drm_dbg_kms(&dev_priv->drm, "Assuming no PCH\n");
 
-	return id;
+	*pch_type = intel_pch_type(dev_priv, id);
+
+	/* Sanity check virtual PCH id */
+	if (drm_WARN_ON(&dev_priv->drm,
+			id && *pch_type == PCH_NONE))
+		id = 0;
+
+	*pch_id = id;
 }
 
 void intel_detect_pch(struct drm_i915_private *dev_priv)
 {
 	struct pci_dev *pch = NULL;
+	unsigned short id;
+	enum intel_pch pch_type;
 
 	/* DG1 has south engine display on the same PCI device */
 	if (IS_DG1(dev_priv)) {
@@ -206,9 +216,6 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	 * of only checking the first one.
 	 */
 	while ((pch = pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pch))) {
-		unsigned short id;
-		enum intel_pch pch_type;
-
 		if (pch->vendor != PCI_VENDOR_ID_INTEL)
 			continue;
 
@@ -221,14 +228,7 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
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
+			intel_virt_detect_pch(dev_priv, &id, &pch_type);
 			dev_priv->pch_type = pch_type;
 			dev_priv->pch_id = id;
 			break;
@@ -244,10 +244,15 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 			    "Display disabled, reverting to NOP PCH\n");
 		dev_priv->pch_type = PCH_NOP;
 		dev_priv->pch_id = 0;
+	} else if (!pch) {
+		if (run_as_guest() && HAS_DISPLAY(dev_priv)) {
+			intel_virt_detect_pch(dev_priv, &id, &pch_type);
+			dev_priv->pch_type = pch_type;
+			dev_priv->pch_id = id;
+		} else {
+			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
+		}
 	}
 
-	if (!pch)
-		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
-
 	pci_dev_put(pch);
 }
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
