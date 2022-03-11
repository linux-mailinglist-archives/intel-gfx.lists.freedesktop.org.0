Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C747B4D5F46
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:19:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0547310E8B1;
	Fri, 11 Mar 2022 10:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE7B110E883
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 10:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646993944; x=1678529944;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vHqu6i/VpxHibTuPWPHCMievxoqXjhnQsIwUjadZc9M=;
 b=hcB2RHMRN4jftsweUzVeHVKCg83PexBVmwBDe2sOT7Miyg34UEUyf7t3
 W5Ts+XqsLhwQDUp7BNjALtRezSCM8qERNOjCkk/Zm+Ley8NJJT6T4hTP0
 Nvh6A8mtjKPtRtTHvunSsLdIah1yxUSANsV/9qDBLRMqiaZbpC3V5tjRB
 5Hs52lgk2MbCtALMxtJech2vDFMEMh9Aj/YecaNfmbKOS1YKFNiUTF4mU
 Aa2YyZtbApJywjb6FeH/PVNC2paqGXSDDWJR91N61tSXiX+iEjB2wzA8k
 9bw3jxcxzTfwJG7jI+eobUostqzZlJ1EyZeGh7hTuWiTp5U52n0q3V2cG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="254373989"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="254373989"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:19:04 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="538953012"
Received: from cchitora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.187])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:19:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 12:18:53 +0200
Message-Id: <20220311101854.146911-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220311101854.146911-1-jani.nikula@intel.com>
References: <20220311101854.146911-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/pciids: use designated
 initializers for struct pci_device_id
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

Use designated initializers for struct pci_device_id to avoid the
dependency on struct pci_device_id remaining unchanged. Recently, commit
343b7258687e ("PCI: Add 'override_only' field to struct pci_device_id")
added a new member leading to warnings about missing field initializers.

Any userspace using this header should switch to defining their own
initializers. The old one is left in place for now.

References: https://lore.kernel.org/all/202108272322.EipbBEAp-lkp@intel.com
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 include/drm/i915_pciids.h | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 637333c9e1c0..2831614f8725 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -25,15 +25,18 @@
 #ifndef _I915_PCIIDS_H
 #define _I915_PCIIDS_H
 
+#ifdef __KERNEL__
+/* Initializer for struct pci_device_id */
+#define INTEL_VGA_DEVICE_INIT(__id, __subvendor, __subdevice, __info) { \
+		.vendor = 0x8086, .device = (__id),			\
+		.subvendor = (__subvendor), .subdevice = (__subdevice),	\
+		.class = 0x030000, .class_mask = 0xff0000,		\
+		.driver_data = (kernel_ulong_t)(__info),		\
+	}
+#else
 /*
- * A pci_device_id struct {
- *	__u32 vendor, device;
- *      __u32 subvendor, subdevice;
- *	__u32 class, class_mask;
- *	kernel_ulong_t driver_data;
- * };
- * Don't use C99 here because "class" is reserved and we want to
- * give userspace flexibility.
+ * Transitional, non-kernel users should define INTEL_VGA_DEVICE_INIT()
+ * themselves.
  */
 #define INTEL_VGA_DEVICE_INIT(__id, __subvendor, __subdevice, __info) { \
 		0x8086, (__id),						\
@@ -41,6 +44,7 @@
 		0x030000, 0xff0000,					\
 		(kernel_ulong_t)(__info),				\
 	}
+#endif
 
 #define INTEL_VGA_DEVICE(__id, __info)			\
 	INTEL_VGA_DEVICE_INIT(__id, ~0, ~0, __info)
-- 
2.30.2

