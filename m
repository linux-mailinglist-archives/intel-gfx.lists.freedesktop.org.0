Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5606B0945
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 14:34:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A99410E5DB;
	Wed,  8 Mar 2023 13:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88FDF10E5D3
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 13:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678282466; x=1709818466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=128pKHju1glcK2Y4aZZFsdU96kC+W/FZzjPR30K+2eg=;
 b=aV8sshRKkcaalNlqI0V2QFPz/fLf5/EIKPp5L+nwTskgBlsD4cAbR6Bg
 JCg2R9+D1xSVvV2wXjxMIXXligbk0tqE5XvdOoSnOzaDLIHqGCx3Aa/qS
 0E215yJMZxeBmJNpta7WXrXrq7J0g6joQMH4dfidGPadsmEN8Kr/ZHqgO
 /UIbKCC3bwhlUsw//SQUlu3sRrCziUvO84nGvQTkQ1iLv9my0ACzhUS9e
 IYIYfpSzBOPzQ5EKqMB5opIOLt1InyxROBwI5HuxtAYBvE0qjHuZwCpgZ
 77d7VTQV7e/i5fAKhEOqxMjI7WN9LW5pAImvAAMHdM/5+acoiXEf2wPxw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="363787820"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="363787820"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 05:34:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="670336609"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="670336609"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 05:34:21 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 14:34:09 +0100
Message-Id: <20230308133409.2127638-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZAiKuulQBp0569s/@intel.com>
References: <ZAiKuulQBp0569s/@intel.com>
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

