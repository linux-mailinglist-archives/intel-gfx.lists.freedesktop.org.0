Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1537DB8AFD0
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C1310EA77;
	Fri, 19 Sep 2025 18:50:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QCZJVNqc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0012C10EA72
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 18:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758307847; x=1789843847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qwSOdT6lnTay9U7fCwmG5lMRfKmXAQAgGr85iCGq7dA=;
 b=QCZJVNqcm1dm5QDcFlMkvzzlwARYTW7pyrrgMwoC3+eylcqIlWUl8NRh
 KE1tVdI2oSNm5dzHv9lfresdVYZoAs+DBDNdBSX4/lIIqxQAYoB9qw04F
 X0MVit5DjiZ6MA5W5gSmh4jbxqMD6noLyzGNz4HqnJkXXLBBJRiQ3oEDw
 iZfYENrlDSOfVdNAV9yPE7q2NgtPe8qzO0wFbX/ueO+alg1JSSxV5ZC4m
 cUu6yqc7BOhCoXyNAeT0sYLNcLgRj48kMVh0oxUbxe6+F7REWtqae5w9h
 Cnkpw82nvRPjLw20H7E9YbeIOo/ATThMKpnb8g+cPDwXl5gFO4Xwe9G6p A==;
X-CSE-ConnectionGUID: Kcdb4ADNT4qxOdwahNAI8g==
X-CSE-MsgGUID: On98HgjVQd6JTWuPnoJgDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60551389"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60551389"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:43 -0700
X-CSE-ConnectionGUID: vpCYp86fTJSzWRGTxako7Q==
X-CSE-MsgGUID: q6EurMWAQQ2TesAQsfNzaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="180310322"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:50:40 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Badal Nilawar <badal.nilawar@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 5/6] drm/i915/pm: Allow drivers/pci to manage our pci state
 normally
Date: Fri, 19 Sep 2025 21:50:14 +0300
Message-ID: <20250919185015.14561-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250919185015.14561-1-ville.syrjala@linux.intel.com>
References: <20250919185015.14561-1-ville.syrjala@linux.intel.com>
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

Stop doing the pci_save_state(), except when we need to prevent
D3 due to BIOS bugs, so that the code in drivers/pci is allowed
to manage the state of the PCI device. Less chance something
getting left by the wayside by i915 if/when the things change in
drivers/pci.

Cc: Badal Nilawar <badal.nilawar@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 009f4e27cf49..0cb874e64971 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1162,9 +1162,8 @@ static int i915_drm_suspend_noirq(struct drm_device *dev, bool hibernation)
 	 * pci_save_state() prevents drivers/pci from
 	 * automagically putting the device into D3.
 	 */
-	pci_save_state(pdev);
-	if (!(hibernation && GRAPHICS_VER(dev_priv) < 6))
-		pci_set_power_state(pdev, PCI_D3hot);
+	if (hibernation && GRAPHICS_VER(dev_priv) < 6)
+		pci_save_state(pdev);
 
 	return 0;
 }
@@ -1172,6 +1171,7 @@ static int i915_drm_suspend_noirq(struct drm_device *dev, bool hibernation)
 int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
 				   pm_message_t state)
 {
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	int error;
 
 	if (drm_WARN_ON_ONCE(&i915->drm, state.event != PM_EVENT_SUSPEND &&
@@ -1189,9 +1189,8 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
 	if (error)
 		return error;
 
-	error = i915_drm_suspend_noirq(&i915->drm, false);
-	if (error)
-		return error;
+	pci_save_state(pdev);
+	pci_set_power_state(pdev, PCI_D3hot);
 
 	return 0;
 }
-- 
2.49.1

