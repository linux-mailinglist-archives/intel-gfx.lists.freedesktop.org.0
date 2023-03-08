Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 526316B05E3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 12:24:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A38A310E5B9;
	Wed,  8 Mar 2023 11:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 779F910E5B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 11:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678274646; x=1709810646;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=128pKHju1glcK2Y4aZZFsdU96kC+W/FZzjPR30K+2eg=;
 b=gQAvvyOC+2123lVmXBQm2ZW/WBCKnH18mZO9jE0184E+a0e4NQiMIWa3
 szU+6Szk0vhlYxK3wLC5r2j2qiD5Fx2EC7EkSl5UFpKZw4Q+jQ+Iao44k
 QNLUUkGk2yq19ut6NC8TFk1aqKEaKvcgvVkrvTrHJQZcndhFE1/MWgt7F
 6iN+msKO8ZaC6YZO7NBQENIPfrSE6fyooJauEZjpRuvD4sxoT334s4dj5
 WN0ny813Sw6MoIG3S6wDeTvdNyf5Rl1p/1+lvLgX9KY6upffY9iW3llKO
 /3w/Di/N3o5vOYPK5ISWu3OobjAVtANlmF8msxu/hJc18DheLlTGtRFct g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="400955197"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="400955197"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 03:24:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="820176650"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="820176650"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 03:24:03 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 12:23:49 +0100
Message-Id: <20230308112349.1882182-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: prevent forcewake releases during
 BAR resize
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

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_region_lmem.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
index 89fdfc67f8d1e0..5a01dc6ca08324 100644
--- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
+++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
@@ -54,6 +54,7 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
 	struct resource *root_res;
 	resource_size_t rebar_size;
 	resource_size_t current_size;
+	intel_wakeref_t wakeref;
 	u32 pci_cmd;
 	int i;
 
@@ -102,6 +103,14 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
 		return;
 	}
 
+	/*
+	 * Releasing forcewake during BAR resizing results in later forcewake
+	 * ack timeouts and former can happen any time - it is asynchronous.
+	 * Grabbing all forcewakes prevents it.
+	 */
+	with_intel_runtime_pm(i915->uncore.rpm, wakeref)
+		intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);
+
 	/* First disable PCI memory decoding references */
 	pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
 	pci_write_config_dword(pdev, PCI_COMMAND,
@@ -111,6 +120,9 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
 
 	pci_assign_unassigned_bus_resources(pdev->bus);
 	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
+
+	with_intel_runtime_pm(i915->uncore.rpm, wakeref)
+		intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
 }
 #else
 static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size) {}
-- 
2.34.1

