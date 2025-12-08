Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B64CADFB8
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:26:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41CDC10E194;
	Mon,  8 Dec 2025 18:26:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lqqI2jZo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E99810E194;
 Mon,  8 Dec 2025 18:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218406; x=1796754406;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lV/hGZ5lOWkSW1KJ1D8xk6TWbkn9/wGTZnYrnQxDGbs=;
 b=lqqI2jZoQpxZPR77D9G9l6qGVAMc7EZ2TzppJGx36roTxFuKdJaXI3oL
 mX2wa5GgkUF6ne84/uJzUGCK67YZJSGQlnyQVLA3zSdUkGp5XQfUrkATo
 ymxVlsLAU+/kBO6k2kDqeB6K3IfFaeZ+M+lopTn9eR//IDMGnYYUQUh8E
 kw6xUAokrok1GP06r3Ta70knLywP7FhPFulq2CxzVzk7EOMS9LZToq4aI
 f3rHXue953wMJG5TuC5aNcJx9TJyNYiMys2EzG18DLCSKF6ULz5i7HLFZ
 UtyZQkUFHHQWEPxtYR24ZLck8RZJ7d9GwUNXgKKzBfJ5ulcKWhBj1lWX7 w==;
X-CSE-ConnectionGUID: qmDXPrmRTuiBDwNp9XAawA==
X-CSE-MsgGUID: Qt+S9nljTbet5JKeaVOOBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="66348078"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="66348078"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:46 -0800
X-CSE-ConnectionGUID: gYUMtpLDQrWbGhpDDWVskQ==
X-CSE-MsgGUID: NgUpuEBlTgiZXg5FSOhfxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="200169471"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:44 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/19] drm/i915/vga: Register vgaarb client later
Date: Mon,  8 Dec 2025 20:26:19 +0200
Message-ID: <20251208182637.334-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we register to vgaarb way too early. Thus it is
possible that the entire VGA decode logic gets nuked via
GMCH_CTRL before intel_vga_disable() has even disabled the
VGA plane. This could even cause a system hang because
we'll be unable to turn off the VGA plane gracefully.

Move the vgaarb registration into intel_display_driver_register().
I suppose we could do it a bit earlier (after intel_vga_disable()),
but not convinced there's any point.

Also the error handling here is pointless since the
registration can't fail (unless the device isn't a VGA class
in which case all VGA decode logic should aleady be disabled
by the BIOS via GMCH_CTRL). But let's toss in a WARN to catch
any future breakage of vga_client_register().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_driver.c    | 18 +++++++-----------
 drivers/gpu/drm/i915/display/intel_vga.c       |  7 ++-----
 drivers/gpu/drm/i915/display/intel_vga.h       |  2 +-
 3 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 7e000ba3e08b..b149976f527b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -214,16 +214,12 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 
 	intel_bios_init(display);
 
-	ret = intel_vga_register(display);
-	if (ret)
-		goto cleanup_bios;
-
 	intel_psr_dc5_dc6_wa_init(display);
 
 	/* FIXME: completely on the wrong abstraction layer */
 	ret = intel_power_domains_init(display);
 	if (ret < 0)
-		goto cleanup_vga;
+		goto cleanup_bios;
 
 	intel_pmdemand_init_early(display);
 
@@ -235,7 +231,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	display->hotplug.dp_wq = alloc_ordered_workqueue("intel-dp", 0);
 	if (!display->hotplug.dp_wq) {
 		ret = -ENOMEM;
-		goto cleanup_vga_client_pw_domain_dmc;
+		goto cleanup_pw_domain_dmc;
 	}
 
 	display->wq.modeset = alloc_ordered_workqueue("i915_modeset", 0);
@@ -307,11 +303,9 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	destroy_workqueue(display->wq.modeset);
 cleanup_wq_dp:
 	destroy_workqueue(display->hotplug.dp_wq);
-cleanup_vga_client_pw_domain_dmc:
+cleanup_pw_domain_dmc:
 	intel_dmc_fini(display);
 	intel_power_domains_driver_remove(display);
-cleanup_vga:
-	intel_vga_unregister(display);
 cleanup_bios:
 	intel_bios_driver_remove(display);
 
@@ -566,6 +560,8 @@ void intel_display_driver_register(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	intel_vga_register(display);
+
 	/* Must be done after probing outputs */
 	intel_opregion_register(display);
 	intel_acpi_video_register(display);
@@ -658,8 +654,6 @@ void intel_display_driver_remove_nogem(struct intel_display *display)
 
 	intel_power_domains_driver_remove(display);
 
-	intel_vga_unregister(display);
-
 	intel_bios_driver_remove(display);
 }
 
@@ -687,6 +681,8 @@ void intel_display_driver_unregister(struct intel_display *display)
 
 	acpi_video_unregister();
 	intel_opregion_unregister(display);
+
+	intel_vga_unregister(display);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index c45c4bbc3f95..f13734cfd904 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -135,7 +135,7 @@ static unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_
 		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
 }
 
-int intel_vga_register(struct intel_display *display)
+void intel_vga_register(struct intel_display *display)
 {
 
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
@@ -150,10 +150,7 @@ int intel_vga_register(struct intel_display *display)
 	 * vga_client_register() fails with -ENODEV.
 	 */
 	ret = vga_client_register(pdev, intel_gmch_vga_set_decode);
-	if (ret && ret != -ENODEV)
-		return ret;
-
-	return 0;
+	drm_WARN_ON(display->drm, ret && ret != -ENODEV);
 }
 
 void intel_vga_unregister(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i915/display/intel_vga.h
index 16d699f3b641..80084265c6cd 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.h
+++ b/drivers/gpu/drm/i915/display/intel_vga.h
@@ -10,7 +10,7 @@ struct intel_display;
 
 void intel_vga_reset_io_mem(struct intel_display *display);
 void intel_vga_disable(struct intel_display *display);
-int intel_vga_register(struct intel_display *display);
+void intel_vga_register(struct intel_display *display);
 void intel_vga_unregister(struct intel_display *display);
 
 #endif /* __INTEL_VGA_H__ */
-- 
2.51.2

