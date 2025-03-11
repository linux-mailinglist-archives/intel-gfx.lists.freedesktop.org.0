Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBEFA5D013
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 20:56:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AAD010E689;
	Tue, 11 Mar 2025 19:56:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P9S1Qe30";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0EC410E680
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 19:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741723002; x=1773259002;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IcUOV48Y5TJIZtwyMwfTMidOHxmBb0v5Wg2LPstZPgo=;
 b=P9S1Qe30kvz7J9HDVcRNMY6nFmmIoKMs+MV5DK7/Xw6oDfCLSzDKQBef
 8Lxt9KU5AzY6jnQ4cxhQdYq78dxLnDpJFgYr6/pmum5I02ejLUtA9/BXQ
 dVY5SG0ZGAnZ562BShF7o8SxX+ozkadKfv+W1IwecZFUGi092ApnldR6i
 xK2skghwBTvfyFqg3qUAGOxIhnv2Qch+p1s+vNhUmjNVXGYHfYoPxFr+l
 sdqcP910G5JkPDfnI+EKpfBxeY0lrWF4AvFWpVxYbSfPXol70QXRVj28E
 f3GJ6JBDFIywpY6tWVHZ/FE8MjP3mNjsGxRShLyAgFHEvCTMzERd5wssT w==;
X-CSE-ConnectionGUID: 7QBUm+E3TxCTJJvqtan5cQ==
X-CSE-MsgGUID: tjegkNACSRypOvCW9n7KPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60183859"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60183859"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 12:56:42 -0700
X-CSE-ConnectionGUID: vwBl3tjWTH+TribYKlpYoA==
X-CSE-MsgGUID: mkxtI/RfRVOIPAj8ZXM21g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="125617233"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 11 Mar 2025 12:56:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Mar 2025 21:56:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 5/6] drm/i915/pm: Allow drivers/pci to manage our pci state
 normally
Date: Tue, 11 Mar 2025 21:56:23 +0200
Message-ID: <20250311195624.22420-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a199e21c7bb4..503f1b6b694f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1154,9 +1154,8 @@ static int i915_drm_suspend_noirq(struct drm_device *dev, bool hibernation)
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
@@ -1164,6 +1163,7 @@ static int i915_drm_suspend_noirq(struct drm_device *dev, bool hibernation)
 int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
 				   pm_message_t state)
 {
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	int error;
 
 	if (drm_WARN_ON_ONCE(&i915->drm, state.event != PM_EVENT_SUSPEND &&
@@ -1181,9 +1181,8 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
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
2.45.3

