Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 170666B0961
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 14:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79E8010E5D3;
	Wed,  8 Mar 2023 13:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83D910E5D3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678282593; x=1709818593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=icZMxeIEqWpxktmy/2WCiZgbBuxeqBENC7bQmCUbioY=;
 b=lxcSxSH2SRzkVq7YIkwxNsdqgJGOTScUFdXpj7FDcBXK3yrHv0pTZq4v
 ptHstJhWRXZw1YTriyfO3TpUp85LCvPo4+REzxhTZyN8c/34jd5y9Y/XH
 WmkZfmnLpeskFqB1ulxCrwtlYMPCM8T0Wp89OnVj/R/URA4VQ/o/WcDQF
 LKkc+xm2Rbwobi8EpHpRmLCS3rQ5PYkFaHdjClEDybLzI128D2YkacJvT
 wksvJVkQmHUVqyWJqvSnRvL+tzzPxutrbWSZH1PvEWFltn0FOUCnoD7oS
 0OF87Fa4ZjFWjrPpCB6syicLvemss912tZMBWNF/B8so4mVrYyaZC3KJd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="337668657"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="337668657"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 05:36:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="745906841"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="745906841"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 05:36:31 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 14:36:24 +0100
Message-Id: <20230308133624.2131582-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZAiKuulQBp0569s/@intel.com>
References: <ZAiKuulQBp0569s/@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: prevent forcewake releases
 during BAR resize
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 chris.p.wilson@linux.intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tests on DG2 machines show that releasing forcewakes during BAR resize
results later in forcewake ack timeouts. Since forcewakes can be realeased
asynchronously the simplest way to prevent it is to get all forcewakes
for duration of BAR resizing.

v2: hold rpm as well during resizing (Rodrigo)

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
Please ignore resend of v1, my mistake.

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 25 +++++++++++++++------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 89fdfc67f8d1e0..2a3217e2890fc7 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -54,6 +54,7 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
 	struct resource *root_res;
 	resource_size_t rebar_size;
 	resource_size_t current_size;
+	intel_wakeref_t wakeref;
 	u32 pci_cmd;
 	int i;
 
@@ -102,15 +103,25 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
 		return;
 	}
 
-	/* First disable PCI memory decoding references */
-	pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
-	pci_write_config_dword(pdev, PCI_COMMAND,
-			       pci_cmd & ~PCI_COMMAND_MEMORY);
+	/*
+	 * Releasing forcewake during BAR resizing results in later forcewake
+	 * ack timeouts and former can happen any time - it is asynchronous.
+	 * Grabbing all forcewakes prevents it.
+	 */
+	with_intel_runtime_pm(i915->uncore.rpm, wakeref) {
+		intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);
 
-	_resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
+		/* First disable PCI memory decoding references */
+		pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
+		pci_write_config_dword(pdev, PCI_COMMAND,
+				       pci_cmd & ~PCI_COMMAND_MEMORY);
 
-	pci_assign_unassigned_bus_resources(pdev->bus);
-	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
+		_resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
+
+		pci_assign_unassigned_bus_resources(pdev->bus);
+		pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
+		intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
+	}
 }
 #else
 static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size) {}
-- 
2.34.1

