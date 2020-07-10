Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5B521B48D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEAE6EC1E;
	Fri, 10 Jul 2020 12:01:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACCC56EC1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:01:03 +0000 (UTC)
IronPort-SDR: pke/VBIt0szxcOWNnbvLXwxlqjSpZMeLzPEjfGe8fROphVyqAaZu0TWtifV2pp3k9nxCKA//ND
 2DNWpQ0eYPnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716725"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716725"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:03 -0700
IronPort-SDR: CzTOXFUwJDch0cDdoUQkJDkttMxVB3O5KHxWT5aJXKdsD8R8DIKz332ri8v3uh4Q5S0pyQT9At
 Yxg00ZIBDxhA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458258140"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:01:01 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:43 +0100
Message-Id: <20200710115757.290984-47-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 46/60] drm/i915: Provide a way to disable PCIe
 relaxed write ordering
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>

For performance writes over PCIe may not be strictly ordered by default.
This provides an option to expose a kernel configuration option to disable
relaxed ordering and turn on strict ordering instead for debug purposes.

Signed-off-by: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug         | 11 +++++++++++
 drivers/gpu/drm/i915/intel_memory_region.c | 12 ++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 206882e154bc..114240e890aa 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -221,3 +221,14 @@ config DRM_I915_DEBUG_RUNTIME_PM
 	  driver loading, suspend and resume operations.
 
 	  If in doubt, say "N"
+
+config DRM_I915_PCIE_STRICT_WRITE_ORDERING
+	bool "Enable PCIe strict ordering "
+	depends on DRM_I915
+	default n
+	help
+	  Relaxed ordering in writes is enabled by default to improve system
+	  performance. Strict ordering can be selected instead to assist in
+	  debugging.
+
+	  If in doubt, say "N".
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index eeea520f97ba..d564b596efda 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -280,6 +280,18 @@ int intel_memory_regions_hw_probe(struct drm_i915_private *i915)
 {
 	int err, i;
 
+	/* All platforms currently have system memory */
+	GEM_BUG_ON(!HAS_REGION(i915, REGION_SMEM));
+
+	if (IS_DGFX(i915)) {
+		if (IS_ENABLED(CONFIG_DRM_I915_PCIE_STRICT_WRITE_ORDERING))
+			pcie_capability_clear_word(i915->drm.pdev, PCI_EXP_DEVCTL,
+						   PCI_EXP_DEVCTL_RELAX_EN);
+		else
+			pcie_capability_set_word(i915->drm.pdev, PCI_EXP_DEVCTL,
+						 PCI_EXP_DEVCTL_RELAX_EN);
+	}
+
 	for (i = 0; i < ARRAY_SIZE(i915->mm.regions); i++) {
 		struct intel_memory_region *mem = ERR_PTR(-ENODEV);
 		u16 type, instance;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
