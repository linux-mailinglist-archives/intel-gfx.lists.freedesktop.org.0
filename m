Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAFE9D953C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2024 11:12:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B879810E811;
	Tue, 26 Nov 2024 10:12:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4niLKIm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F9C910E811
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2024 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732615954; x=1764151954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B3QiT1yGMiC/m24vM52zl83YABzHXF04oNwsOB1RZAA=;
 b=b4niLKImP28Tmjp/eQgb/EtV8angSe2HnRq84V+xQ4nH5luENEJyIsAB
 qSrIoRr81BMwHydHuW5KyrAnqo+AtjnvUdw/Pk2BOJpayo9PnPBoMFwXO
 N+OzsnoXMBIn7PYKjkm5PHlHaFQlP9kcYQMjMMHJhRNH1FsKsOBtgrAQ5
 wED92HCwzn5/LZnNRRK86APDuu0rnxSRoIO5supJ1iSwis0eI1zUKTMfA
 7KS52sX7jdwkuXO01f5i+I7qFDxYYJLV3QhK/qhQCo4PFJZz4PW+Z7KbR
 xYNcjXA7x6PyLFb1Xdu9Sf1QRBTMYTSBE4Em1k1tQT6AEsurVB5uShZ9W g==;
X-CSE-ConnectionGUID: 1f9F8RcsTXywzJEf6v13BA==
X-CSE-MsgGUID: nRRyNDWGTSifHZaLHs2kew==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="58173001"
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="58173001"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 02:12:33 -0800
X-CSE-ConnectionGUID: eGjGOGO5SQK+RJW7S3Kdkw==
X-CSE-MsgGUID: 9M/acNehTdy6JZZLLBSU5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,185,1728975600"; d="scan'208";a="129084056"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 02:12:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 2/2] drm/i915/dislay: convert i9xx_display_sr.[ch] to struct
 intel_display
Date: Tue, 26 Nov 2024 12:12:22 +0200
Message-Id: <20241126101222.2671224-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241126101222.2671224-1-jani.nikula@intel.com>
References: <20241126101222.2671224-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main device data structure
for display. Switch to it.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/i9xx_display_sr.c    | 76 +++++++++----------
 .../gpu/drm/i915/display/i9xx_display_sr.h    |  6 +-
 drivers/gpu/drm/i915/i915_driver.c            |  4 +-
 3 files changed, 41 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
index e0e8044f9bcb..f6b8333f6339 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.c
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -10,90 +10,86 @@
 #include "intel_gmbus.h"
 #include "intel_pci_config.h"
 
-static void i9xx_display_save_swf(struct drm_i915_private *i915)
+static void i9xx_display_save_swf(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	int i;
 
 	/* Scratch space */
-	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
+	if (DISPLAY_VER(display) == 2 && display->platform.mobile) {
 		for (i = 0; i < 7; i++) {
-			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));
-			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(display, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(display, i));
 		}
 		for (i = 0; i < 3; i++)
-			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));
-	} else if (DISPLAY_VER(i915) == 2) {
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(display, i));
+	} else if (DISPLAY_VER(display) == 2) {
 		for (i = 0; i < 7; i++)
-			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
-	} else if (HAS_GMCH(i915)) {
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(display, i));
+	} else if (HAS_GMCH(display)) {
 		for (i = 0; i < 16; i++) {
-			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(i915, i));
-			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(i915, i));
+			display->restore.saveSWF0[i] = intel_de_read(display, SWF0(display, i));
+			display->restore.saveSWF1[i] = intel_de_read(display, SWF1(display, i));
 		}
 		for (i = 0; i < 3; i++)
-			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(i915, i));
+			display->restore.saveSWF3[i] = intel_de_read(display, SWF3(display, i));
 	}
 }
 
-static void i9xx_display_restore_swf(struct drm_i915_private *i915)
+static void i9xx_display_restore_swf(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	int i;
 
 	/* Scratch space */
-	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
+	if (DISPLAY_VER(display) == 2 && display->platform.mobile) {
 		for (i = 0; i < 7; i++) {
-			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
-			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
+			intel_de_write(display, SWF0(display, i), display->restore.saveSWF0[i]);
+			intel_de_write(display, SWF1(display, i), display->restore.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
-	} else if (DISPLAY_VER(i915) == 2) {
+			intel_de_write(display, SWF3(display, i), display->restore.saveSWF3[i]);
+	} else if (DISPLAY_VER(display) == 2) {
 		for (i = 0; i < 7; i++)
-			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
-	} else if (HAS_GMCH(i915)) {
+			intel_de_write(display, SWF1(display, i), display->restore.saveSWF1[i]);
+	} else if (HAS_GMCH(display)) {
 		for (i = 0; i < 16; i++) {
-			intel_de_write(display, SWF0(i915, i), display->restore.saveSWF0[i]);
-			intel_de_write(display, SWF1(i915, i), display->restore.saveSWF1[i]);
+			intel_de_write(display, SWF0(display, i), display->restore.saveSWF0[i]);
+			intel_de_write(display, SWF1(display, i), display->restore.saveSWF1[i]);
 		}
 		for (i = 0; i < 3; i++)
-			intel_de_write(display, SWF3(i915, i), display->restore.saveSWF3[i]);
+			intel_de_write(display, SWF3(display, i), display->restore.saveSWF3[i]);
 	}
 }
 
-void i9xx_display_sr_save(struct drm_i915_private *i915)
+void i9xx_display_sr_save(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
 	/* Display arbitration control */
-	if (DISPLAY_VER(i915) <= 4)
-		display->restore.saveDSPARB = intel_de_read(display, DSPARB(i915));
+	if (DISPLAY_VER(display) <= 4)
+		display->restore.saveDSPARB = intel_de_read(display, DSPARB(display));
 
-	if (DISPLAY_VER(i915) == 4)
+	if (DISPLAY_VER(display) == 4)
 		pci_read_config_word(pdev, GCDGMBUS, &display->restore.saveGCDGMBUS);
 
-	i9xx_display_save_swf(i915);
+	i9xx_display_save_swf(display);
 }
 
-void i9xx_display_sr_restore(struct drm_i915_private *i915)
+void i9xx_display_sr_restore(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 
-	if (!HAS_DISPLAY(i915))
+	if (!HAS_DISPLAY(display))
 		return;
 
-	i9xx_display_restore_swf(i915);
+	i9xx_display_restore_swf(display);
 
-	if (DISPLAY_VER(i915) == 4)
+	if (DISPLAY_VER(display) == 4)
 		pci_write_config_word(pdev, GCDGMBUS, display->restore.saveGCDGMBUS);
 
 	/* Display arbitration */
-	if (DISPLAY_VER(i915) <= 4)
-		intel_de_write(display, DSPARB(i915), display->restore.saveDSPARB);
+	if (DISPLAY_VER(display) <= 4)
+		intel_de_write(display, DSPARB(display), display->restore.saveDSPARB);
 }
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.h b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
index 30383758f97e..39b8c18fe738 100644
--- a/drivers/gpu/drm/i915/display/i9xx_display_sr.h
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
@@ -6,9 +6,9 @@
 #ifndef __I9XX_DISPLAY_SR_H__
 #define __I9XX_DISPLAY_SR_H__
 
-struct drm_i915_private;
+struct intel_display;
 
-void i9xx_display_sr_save(struct drm_i915_private *i915);
-void i9xx_display_sr_restore(struct drm_i915_private *i915);
+void i9xx_display_sr_save(struct intel_display *display);
+void i9xx_display_sr_restore(struct intel_display *display);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 2013962e446c..ff99d45bdfda 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1052,7 +1052,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_dpt_suspend(dev_priv);
 	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
 
-	i9xx_display_sr_save(dev_priv);
+	i9xx_display_sr_save(display);
 
 	opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
 	intel_opregion_suspend(display, opregion_target_state);
@@ -1169,7 +1169,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_dmc_resume(display);
 
-	i9xx_display_sr_restore(dev_priv);
+	i9xx_display_sr_restore(display);
 
 	intel_vga_redisable(display);
 
-- 
2.39.5

