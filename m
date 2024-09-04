Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A36D96B767
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 11:52:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA51410E724;
	Wed,  4 Sep 2024 09:52:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gxgeoq9j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07D810E723;
 Wed,  4 Sep 2024 09:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725443521; x=1756979521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bSoc9LcpdNSKLV6NElGcD24jaeV42e+lQS6eAz3dd14=;
 b=gxgeoq9jRB1abNrTCjO2asasyQfuY57k6es288TANzVslA8GkP4Ev04B
 nDhJFXF3G7oF0eMZR2TDxchyRgGEbbQQ8g93k6UX8BuAWghpT4BWkywX3
 gHjf4JQps7etbnF0ACzTEIOTAPM1gNFIMMBCcGd/DrRlv4z4zJQNo00LB
 ObkqKY1k7a/1SjMdEON/G68zSEtqy5OotjDWQ/JQaSOHISJFsf0HEvGdR
 RXDjVRlb+Qozhul0EbWuUUqOCOTyqBUPXxAnHpC5sAAzMDC6jb++PiFyF
 Tivw2wITboopeNQaIh8qQGAWdCdsi84c1rIMGR/cGYumSkU9mvtQ1l1JR w==;
X-CSE-ConnectionGUID: pyLc+nZ4SeamjYPZrlNd/A==
X-CSE-MsgGUID: XB5A1sFoRkWaib/V75ye4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="13365615"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="13365615"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:52:01 -0700
X-CSE-ConnectionGUID: Mlj39QOtTmWkcsiD7MBH+w==
X-CSE-MsgGUID: puS56Z9kTDy5FCoi1zRpUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65456998"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:51:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 1/2] drm/i915/pciids: use designated initializers in
 INTEL_VGA_DEVICE()
Date: Wed,  4 Sep 2024 12:51:32 +0300
Message-Id: <ce15f8f2a6b672155f9728c8e6a5f49d33fafd24.1725443418.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725443418.git.jani.nikula@intel.com>
References: <cover.1725443418.git.jani.nikula@intel.com>
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

With IGT no longer using INTEL_VGA_DEVICE(), we can make it kernel
specific and use designated initializers. Ditto for
INTEL_QUANTA_VGA_DEVICE(). Remove the superfluous comments while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

IGT INTEL_VGA_DEVICE removal:

https://lore.kernel.org/r/20240902134907.2186238-2-jani.nikula@intel.com
---
 include/drm/intel/i915_pciids.h | 35 +++++++++++++--------------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
index 2bf03ebfcf73..6a78df5687c5 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/i915_pciids.h
@@ -25,27 +25,20 @@
 #ifndef _I915_PCIIDS_H
 #define _I915_PCIIDS_H
 
-/*
- * A pci_device_id struct {
- *	__u32 vendor, device;
- *      __u32 subvendor, subdevice;
- *	__u32 class, class_mask;
- *	kernel_ulong_t driver_data;
- * };
- * Don't use C99 here because "class" is reserved and we want to
- * give userspace flexibility.
- */
-#define INTEL_VGA_DEVICE(id, info) { \
-	0x8086,	id, \
-	~0, ~0, \
-	0x030000, 0xff0000, \
-	(unsigned long) info }
-
-#define INTEL_QUANTA_VGA_DEVICE(info) { \
-	0x8086,	0x16a, \
-	0x152d,	0x8990, \
-	0x030000, 0xff0000, \
-	(unsigned long) info }
+#ifdef __KERNEL__
+#define INTEL_VGA_DEVICE(_id, _info) { \
+	PCI_DEVICE(PCI_VENDOR_ID_INTEL, (_id)), \
+	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \
+	.driver_data = (kernel_ulong_t)(_info), \
+}
+
+#define INTEL_QUANTA_VGA_DEVICE(_info) { \
+	.vendor = PCI_VENDOR_ID_INTEL, .device = 0x16a, \
+	.subvendor = 0x152d, .subdevice = 0x8990, \
+	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \
+	.driver_data = (kernel_ulong_t)(_info), \
+}
+#endif
 
 #define INTEL_I810_IDS(MACRO__, ...) \
 	MACRO__(0x7121, ## __VA_ARGS__), /* I810 */ \
-- 
2.39.2

