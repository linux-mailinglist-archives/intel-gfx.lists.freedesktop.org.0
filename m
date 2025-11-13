Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C9BC57B64
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 14:38:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF0E10E819;
	Thu, 13 Nov 2025 13:38:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PpvFeXXq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 442E810E819;
 Thu, 13 Nov 2025 13:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763041092; x=1794577092;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FSmxZIcIdJ/Ddj9HkWxErk4tbRnzAlXEy3+m41j2YHQ=;
 b=PpvFeXXqAO0GPgqA4LzcZvJcpxmStRzgL4COWsz7HmZGGhSVbS3SqSjJ
 W91OKijnNTGFUWgD/VHZeoImrP71PHD/woxQdq5gaJozYfPWvSggafmXJ
 HdCjU4KGBag4db+5P4JUQuHeSPQ+uNxbgRPdhDkN6zDyIFDncK7zmA8aX
 RpFWSwMh/PPaei8R7HdCX6i1UPDosR0YCjeEKjtQqlYQZ/4o/j+QNWtGx
 e0CIw5MMDssfJf5j+LfenC8Hqu805ylQ9xA5adHFcFGjBIAzJ9j9pdzz7
 yi5YQPrcaos6kgGQ1N2IIsZqdsqincvElrDd/3RTkJYO4Oe+Kl4TM+HnW w==;
X-CSE-ConnectionGUID: mjGIrQxDTJSzjBZp0nq7dA==
X-CSE-MsgGUID: 0ZJJx+ZkSkKkylIJPHWV+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64828907"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="64828907"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:38:12 -0800
X-CSE-ConnectionGUID: p1KhIn/TT1ilo4pNRcb9sg==
X-CSE-MsgGUID: eDqZLnI9Q4ix8Mej/YzX+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="188770950"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:38:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	uma.shankar@intel.com
Subject: [PATCH] drm/i915/gmch: find bridge device locally
Date: Thu, 13 Nov 2025 15:38:06 +0200
Message-ID: <20251113133806.696869-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
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

We don't really need the cached i915->gmch.pdev reference. Look up the
bridge device locally, and remove the final dependency on struct
drm_i915_private and i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmch.c | 25 ++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_gmch.c b/drivers/gpu/drm/i915/display/intel_gmch.c
index 475f2b6ce39e..9bf36f02a062 100644
--- a/drivers/gpu/drm/i915/display/intel_gmch.c
+++ b/drivers/gpu/drm/i915/display/intel_gmch.c
@@ -9,7 +9,6 @@
 #include <drm/drm_print.h>
 #include <drm/intel/i915_drm.h>
 
-#include "i915_drv.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_gmch.h"
@@ -17,18 +16,26 @@
 
 static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	struct pci_dev *bridge = i915->gmch.pdev;
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
+	struct pci_dev *bridge;
 	unsigned int reg = DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 	u16 gmch_ctrl;
+	int ret = 0;
+
+	bridge = pci_get_domain_bus_and_slot(pci_domain_nr(pdev->bus), 0, PCI_DEVFN(0, 0));
+	if (!bridge) {
+		drm_err(display->drm, "bridge device not found\n");
+		return -EIO;
+	}
 
 	if (pci_read_config_word(bridge, reg, &gmch_ctrl)) {
 		drm_err(display->drm, "failed to read control word\n");
-		return -EIO;
+		ret = -EIO;
+		goto out;
 	}
 
 	if (!!(gmch_ctrl & INTEL_GMCH_VGA_DISABLE) == !enable_decode)
-		return 0;
+		goto out;
 
 	if (enable_decode)
 		gmch_ctrl &= ~INTEL_GMCH_VGA_DISABLE;
@@ -37,10 +44,14 @@ static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_d
 
 	if (pci_write_config_word(bridge, reg, gmch_ctrl)) {
 		drm_err(display->drm, "failed to write control word\n");
-		return -EIO;
+		ret = -EIO;
+		goto out;
 	}
 
-	return 0;
+out:
+	pci_dev_put(bridge);
+
+	return ret;
 }
 
 unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enable_decode)
-- 
2.47.3

