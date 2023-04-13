Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0146E0A82
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 11:48:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8DAF10EAA9;
	Thu, 13 Apr 2023 09:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0182010EAA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 09:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681379277; x=1712915277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9AXWlEe1sRRfl6zAMN+ioRMYBzjIB/1uwIeyVAjxaN8=;
 b=meY6IyGcV43fBDlNzaIWjbtEDyBnqjo3B19gWlvxXoJvhSMqXnYpHXkn
 9mrvY8yxWIMIulqc5Y0/FVeZs0N9qFZ3sFMADDRETEmBsymWRGtM8M1h6
 zAor+ojnZ+eF+Vzad9YkIlQ/5cVxsb1fCN4KmnwOE45ceSnWj+E23lJ4r
 M0Zk6vh1ddg9D2dgk8XnL9I15DiX4lNuJzWOtq1jHFy13QV1P0tJfWIEg
 vaowCHIMe/fD0Y0GH292XBC+g4hVU8ACbDc7F9100/CoPs0u1AT1Mtr6Y
 ouFRSVm70m7uwsCzdQefhp3BBpBtNrVXV2L6vMlbooEqE2blcs+TQCm0W w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371991316"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="371991316"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:47:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="639599148"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="639599148"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:47:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 12:47:30 +0300
Message-Id: <bf693fa96ff6bc38fbe78af2f76182117234be02.1681379167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/display: rename
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming conventions.

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

