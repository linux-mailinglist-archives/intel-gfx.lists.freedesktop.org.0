Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F3F6E1F87
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCE9610ECA6;
	Fri, 14 Apr 2023 09:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8027C10ECA6
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465345; x=1713001345;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p5nAR+iTQPZ55cE84jN42Cpx1A8voyAfXiQWROgYGbg=;
 b=ElwBm5OR+/jYH1nFgxoFIHpHsXJWz5xKsT5JvYjsVvNMIKENxMMfhTlU
 19kXyCXTt/gv6wVOdlIQzQsQ/jdosd0rPsCH9AiH7ftDYW9wcWRYA74Dg
 IA6kZDz/YQ+D9fv6ZvlKCdJPnrS1AJv7QkJwIgBveC5uptnaYgBxw3GDC
 q2zZUTk64GFvNbp5ytFA/rooX6zoukQqjQOBDAOewneW3J/eeuJ/8NIAU
 eK07L1qNNCF3406B1eJ1WolqCRNgeDM2TDreGTLVsn/mCfyWNmTbMKOTm
 9V2ueYvoNcsyX3LHjQsLZ0AN1zdu4MIdZqCvKAHqobsAGQf5Mwn5Fgcdc g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="324054427"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="324054427"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="754397543"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="754397543"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:41:56 +0300
Message-Id: <ab5023570d8ae55c0d9c98c78f588e51c0790b6c.1681465222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/10] drm/i915/display: rename
 intel_modeset_probe_defer() -> intel_display_driver_probe_defer()
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming conventions.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_driver.h | 2 +-
 drivers/gpu/drm/i915/i915_pci.c                     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 1386f2001613..882a2586aba4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -21,7 +21,7 @@
 #include "intel_fbdev.h"
 #include "intel_opregion.h"
 
-bool intel_modeset_probe_defer(struct pci_dev *pdev)
+bool intel_display_driver_probe_defer(struct pci_dev *pdev)
 {
 	struct drm_privacy_screen *privacy_screen;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 4c18792fcafd..744117b04ed4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -11,7 +11,7 @@
 struct drm_i915_private;
 struct pci_dev;
 
-bool intel_modeset_probe_defer(struct pci_dev *pdev);
+bool intel_display_driver_probe_defer(struct pci_dev *pdev);
 void intel_display_driver_register(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index bda5caa33f12..d64e074d7457 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1355,7 +1355,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		return -ENXIO;
 
 	/* Detect if we need to wait for other drivers early on */
-	if (intel_modeset_probe_defer(pdev))
+	if (intel_display_driver_probe_defer(pdev))
 		return -EPROBE_DEFER;
 
 	err = i915_driver_probe(pdev, ent);
-- 
2.39.2

