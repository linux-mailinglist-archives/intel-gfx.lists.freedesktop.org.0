Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A4885FE9B
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 18:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4670310E53C;
	Thu, 22 Feb 2024 17:05:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D9dQ2xmh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8510810E53C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 17:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708621557; x=1740157557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FgvZABVdcDQjiW6UTsk7+nZcUDYDiqk6G+wQrxlYAhY=;
 b=D9dQ2xmhwYkOOLaoGW7TwX6k5WBRvNf/AmBs8VF/OpUA4kmOr+cHasN6
 XHCSYR0YcnT8hOKC+6JC1V/uM40g9qIMBg7LUjWQ17ffnab632bHm1x3X
 +5B5oECP0QqDxfTcuSIRPDlrMgb8hDQ3DZrZ2f8C5bWqetnTMJzDGIXyi
 g4Th/s4p8xA+YdizT9Vxdm4x2K4ArvYI/2930qLnPvdBX84C+AYLfXYI/
 YgJqQuOB/KNqjfwvjZVgA/Kp+7mcfVWTzSvwr/GARJQDg7vUWabcnigYb
 2nBIM4KI+XNdaJCihVl3+VHP5Di0kSfl6jiVptv3VV/3449pUlK+am3M0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="20299202"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="20299202"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 09:04:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="827575236"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="827575236"
Received: from crojewsk-ctrl.igk.intel.com ([10.102.9.28])
 by orsmga001.jf.intel.com with ESMTP; 22 Feb 2024 09:04:53 -0800
From: Cezary Rojewski <cezary.rojewski@intel.com>
To: broonie@kernel.org
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, tiwai@suse.com,
 perex@perex.cz, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, intel-gfx@lists.freedesktop.org,
 amadeuszx.slawinski@linux.intel.com, pierre-louis.bossart@linux.intel.com,
 hdegoede@redhat.com, Cezary Rojewski <cezary.rojewski@intel.com>
Subject: [PATCH 1/4] ALSA: hda: Skip i915 initialization on CNL/LKF-based
 platforms
Date: Thu, 22 Feb 2024 18:06:11 +0100
Message-Id: <20240222170614.884413-2-cezary.rojewski@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240222170614.884413-1-cezary.rojewski@intel.com>
References: <20240222170614.884413-1-cezary.rojewski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Commit 78f613ba1efb ("drm/i915: finish removal of CNL") and its friends
removed support for i915 for all CNL-based platforms. HDAudio library,
however, still treats such platforms as valid candidates for i915
binding. Update query mechanism to reflect changes made in drm tree.

At the same time, i915 support for LKF-based platforms has not been
provided so remove them from valid binding candidates.

Link: https://lore.kernel.org/all/20210728215946.1573015-1-lucas.demarchi@intel.com/
Signed-off-by: Cezary Rojewski <cezary.rojewski@intel.com>
---
 include/drm/i915_pciids.h |  4 ++++
 sound/hda/hdac_i915.c     | 18 +++++++++++++++---
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index fcf1849aa47c..04172b541ee7 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -582,6 +582,10 @@
 	INTEL_VGA_DEVICE(0x8A51, info), \
 	INTEL_VGA_DEVICE(0x8A5D, info)
 
+/* LKF */
+#define INTEL_LKF_IDS(info) \
+	INTEL_VGA_DEVICE(0x9840, info)
+
 /* EHL */
 #define INTEL_EHL_IDS(info) \
 	INTEL_VGA_DEVICE(0x4541, info), \
diff --git a/sound/hda/hdac_i915.c b/sound/hda/hdac_i915.c
index 365c36fdf205..07861f9fc491 100644
--- a/sound/hda/hdac_i915.c
+++ b/sound/hda/hdac_i915.c
@@ -6,6 +6,7 @@
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/pci.h>
+#include <drm/i915_pciids.h>
 #include <sound/core.h>
 #include <sound/hdaudio.h>
 #include <sound/hda_i915.h>
@@ -127,15 +128,26 @@ static int i915_component_master_match(struct device *dev, int subcomponent,
 /* check whether Intel graphics is present and reachable */
 static int i915_gfx_present(struct pci_dev *hdac_pci)
 {
+	/* List of known platforms with no i915 support. */
+	static struct pci_device_id denylist[] = {
+		INTEL_CNL_IDS(NULL),
+		INTEL_LKF_IDS(NULL),
+		{ 0 }
+	};
 	struct pci_dev *display_dev = NULL;
 
 	if (!gpu_bind || (gpu_bind < 0 && video_firmware_drivers_only()))
 		return false;
 
 	for_each_pci_dev(display_dev) {
-		if (display_dev->vendor == PCI_VENDOR_ID_INTEL &&
-		    (display_dev->class >> 16) == PCI_BASE_CLASS_DISPLAY &&
-		    connectivity_check(display_dev, hdac_pci)) {
+		if (display_dev->vendor != PCI_VENDOR_ID_INTEL ||
+		    (display_dev->class >> 16) != PCI_BASE_CLASS_DISPLAY)
+			continue;
+
+		if (pci_match_id(denylist, display_dev))
+			continue;
+
+		if (connectivity_check(display_dev, hdac_pci)) {
 			pci_dev_put(display_dev);
 			return true;
 		}
-- 
2.25.1

