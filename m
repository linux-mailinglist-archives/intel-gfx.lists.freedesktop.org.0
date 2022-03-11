Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A94E4D5F1B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:06:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C0110E88B;
	Fri, 11 Mar 2022 10:06:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC9C210E88B
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 10:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646993208; x=1678529208;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tcb0awIFqKevEQXb7Bu45BtCNoGl1aqkIfpE0YCMK60=;
 b=W7FVYzhik+drYNHVQ6kpGCFfneYMhMs4rOKoJcWqtdBSv9QWA4UOuY54
 8sySEq346EBurSgIDQxl/SBtvkyEDdjxPh97ZMTnXBJIfOfWaWHuZ6gie
 BgF0CxQgUHYxSkzk11wGYf56J680okXuJv6GVygQuYfy7imphfu6Gg9oB
 Ri0jFw1ejpHyDNlCrCYbA1kKfiX6eSk2gvQpV/RChvc7dDZ1516HwnP75
 FTbkQkkLGgtQa7Cy0+++AuHA5ecZ9ov7sB1eoemgFaCAFN7wGL2rEmbRt
 5x+I8QF1cqZwToJ2PEG3ZlC7lcAU0z0GAHxQfltLe52Io16cGzxEhBG4k Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="237717724"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="237717724"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:06:48 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="555245657"
Received: from cchitora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.187])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:06:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 12:06:38 +0200
Message-Id: <20220311100639.114685-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] x86/gpu: include drm/i915_pciids.h directly
 in early quirks
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 jani.nikula@intel.com, x86@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

early-quirks.c is the only user of drm/i915_drm.h that also needs
drm/i915_pciids.h. Include the masses of PCI ID macros only where
needed.

Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
Cc: x86@kernel.org
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I'm hoping to merge this via drm-intel with the other patch.
---
 arch/x86/kernel/early-quirks.c | 1 +
 include/drm/i915_drm.h         | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
index bd6dad83c65b..805596736e20 100644
--- a/arch/x86/kernel/early-quirks.c
+++ b/arch/x86/kernel/early-quirks.c
@@ -18,6 +18,7 @@
 #include <linux/bcma/bcma_regs.h>
 #include <linux/platform_data/x86/apple.h>
 #include <drm/i915_drm.h>
+#include <drm/i915_pciids.h>
 #include <asm/pci-direct.h>
 #include <asm/dma.h>
 #include <asm/io_apic.h>
diff --git a/include/drm/i915_drm.h b/include/drm/i915_drm.h
index 6722005884db..afbf3ef5643e 100644
--- a/include/drm/i915_drm.h
+++ b/include/drm/i915_drm.h
@@ -26,7 +26,6 @@
 #ifndef _I915_DRM_H_
 #define _I915_DRM_H_
 
-#include <drm/i915_pciids.h>
 #include <uapi/drm/i915_drm.h>
 
 /* For use by IPS driver */
-- 
2.30.2

