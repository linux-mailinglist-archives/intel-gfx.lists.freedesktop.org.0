Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MUT6AfpIMGpzQwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:48:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A89F68949D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 20:48:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=biBMgMax;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A2910E1BD;
	Mon, 15 Jun 2026 18:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB6C10E1BD;
 Mon, 15 Jun 2026 18:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781549303; x=1813085303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=86ZJNIecCBcwtm7549wq/TnIbO3L5G3WouuGyPWPVYQ=;
 b=biBMgMaxOdf5tj9bp7ZjGXpDYsYGU8SIHnyJHs5//mt7Wf1fV6BrDH/1
 o9+2i5zn3cQduG+lYzngfIDE2le4H8JV+j53n2XIArAdwA/eUoDLeQAU3
 j+FnylX6jEhQy+MFwhvnkBhHR93Hr4kNkO1eri2ixCYk2vj86Oh7IN99/
 sKIY2tZvfDl5QXOg9Rx0akZcsc9QQ0LX4Tx84IdYT8GhoboKXjUoGDkbA
 V7LrzPIt44O1oyYS9HQfgOpvYDTYclqUI+xpiZCvsAQHFQ5IgkmZLoZfC
 FFdZQECOoOy5PRNkBJztdgeN1v319lxVLhP96JjWHiiUKZaHlrQzf9QwR Q==;
X-CSE-ConnectionGUID: q5TCgLa/STqUR3OhB6VSWA==
X-CSE-MsgGUID: fLXOG+QeSBm8baGHKUkbuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81438585"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="81438585"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:48:22 -0700
X-CSE-ConnectionGUID: S+7whPNXTpC1yf0ZIFCsjA==
X-CSE-MsgGUID: 42O2LQBKQ3iLHfUm0TyaVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="247628602"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 11:48:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/6] drm/{i915,
 xe}: move opregion/dram/bw init to intel_display_driver_probe_noirq()
Date: Mon, 15 Jun 2026 21:48:00 +0300
Message-ID: <aa37d6443516ae660c2de53aba8ca42e6e6d1a5c.1781549229.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1781549229.git.jani.nikula@intel.com>
References: <cover.1781549229.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A89F68949D

The intel_opregion_setup(), intel_dram_detect(), and intel_bw_init_hw()
calls should really be in display. Move them at the beginning of
intel_display_driver_probe_noirq().

This is a completely non-functional change for xe.

For i915, the init order changes slightly:

- i915_pcode_init() will happen before intel_opregion_setup(). This
  should be of no consequence.

- The intel_gvt_init() calls will happen before the mentioned
  functions. There's a lot going on in intel_gvt_init(), but it does not
  look like this should have dependencies on them either.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 17 +++++++++++++++-
 drivers/gpu/drm/i915/i915_driver.c            | 20 ++-----------------
 drivers/gpu/drm/xe/display/xe_display.c       | 20 ++-----------------
 3 files changed, 20 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 462f78d5b020..15a61f171d73 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -43,6 +43,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
+#include "intel_dram.h"
 #include "intel_encoder.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
@@ -203,11 +204,23 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 {
 	int ret;
 
+	intel_opregion_setup(display);
+
+	/*
+	 * Fill the dram structure to get the system dram info. This will be
+	 * used for memory latency calculation.
+	 */
+	ret = intel_dram_detect(display);
+	if (ret)
+		goto cleanup_opregion;
+
+	intel_bw_init_hw(display);
+
 	if (HAS_DISPLAY(display)) {
 		ret = drm_vblank_init(display->drm,
 				      INTEL_NUM_PIPES(display));
 		if (ret)
-			return ret;
+			goto cleanup_opregion;
 	}
 
 	intel_bios_init(display);
@@ -306,6 +319,8 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	intel_display_power_driver_remove(display);
 cleanup_bios:
 	intel_bios_driver_remove(display);
+cleanup_opregion:
+	intel_opregion_cleanup(display);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d1d3f039483f..05fdcba7b2dc 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -51,7 +51,6 @@
 #include <drm/intel/intel_pcode_regs.h>
 
 #include "display/i9xx_display_sr.h"
-#include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
 #include "display/intel_display_device.h"
@@ -60,7 +59,6 @@
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
-#include "display/intel_dram.h"
 #include "display/intel_fbdev.h"
 #include "display/intel_gmbus.h"
 #include "display/intel_hotplug.h"
@@ -469,7 +467,6 @@ static int i915_pcode_init(struct drm_i915_private *i915)
  */
 static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	int ret;
 
@@ -563,26 +560,13 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 			drm_dbg(&dev_priv->drm, "can't enable MSI");
 	}
 
-	intel_opregion_setup(display);
-
 	ret = i915_pcode_init(dev_priv);
 	if (ret)
-		goto err_opregion;
-
-	/*
-	 * Fill the dram structure to get the system dram info. This will be
-	 * used for memory latency calculation.
-	 */
-	ret = intel_dram_detect(display);
-	if (ret)
-		goto err_opregion;
-
-	intel_bw_init_hw(display);
+		goto err_msi;
 
 	return 0;
 
-err_opregion:
-	intel_opregion_cleanup(display);
+err_msi:
 	pci_disable_msi(pdev);
 err_mem_regions:
 	intel_memory_regions_driver_release(dev_priv);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index a5768736dbbc..4a621779fc53 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -19,7 +19,6 @@
 
 #include "intel_acpi.h"
 #include "intel_audio.h"
-#include "intel_bw.h"
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_device.h"
@@ -29,7 +28,6 @@
 #include "intel_dmc.h"
 #include "intel_dmc_wl.h"
 #include "intel_dp.h"
-#include "intel_dram.h"
 #include "intel_fbdev.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
@@ -112,22 +110,9 @@ int xe_display_init_early(struct xe_device *xe)
 		return 0;
 	}
 
-	/* Early display init.. */
-	intel_opregion_setup(display);
-
-	/*
-	 * Fill the dram structure to get the system dram info. This will be
-	 * used for memory latency calculation.
-	 */
-	err = intel_dram_detect(display);
-	if (err)
-		goto err_opregion;
-
-	intel_bw_init_hw(display);
-
 	err = intel_display_driver_probe_noirq(display);
 	if (err)
-		goto err_opregion;
+		return err;
 
 	err = intel_display_driver_probe_nogem(display);
 	if (err)
@@ -137,8 +122,7 @@ int xe_display_init_early(struct xe_device *xe)
 err_noirq:
 	intel_display_driver_remove_noirq(display);
 	intel_display_power_cleanup(display);
-err_opregion:
-	intel_opregion_cleanup(display);
+
 	return err;
 }
 
-- 
2.47.3

