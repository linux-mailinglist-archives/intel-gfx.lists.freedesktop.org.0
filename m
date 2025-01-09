Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D8CA073BA
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 11:50:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C5D10ED65;
	Thu,  9 Jan 2025 10:50:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PGuYDfxS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0CB510ED63;
 Thu,  9 Jan 2025 10:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736419841; x=1767955841;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M495vlM1pJuhdYy4sbisk8emK4gXwFOie0rSbf5Cr7g=;
 b=PGuYDfxStmsStH3hU/fSZyNvhcLMD02w8YTPaflGZ+jzkqnplFV2WKhB
 qtrOD0+2bzaav6geqDx5c37EmrBIqYO1jDyqG8U+rAwXUuu66VlBdA4Pb
 mNKtmTAPxD6EDFThMLa+a/QjBdh3Nhd1xnpApgJE1mo8ZFM5cNxLN2hA3
 76sf5VMfnDI5bLf5lQE7dAxGuLwxVVMK0P54256isq8bYmA/3Vcd6F0W9
 RNzWtyw8UenlyeDSqsR2Hc7O/9FUNTk1N4Bw0pKYpj4lKWWwuq5jOHiEl
 nNvf47s7tSrwV10ttaR/XDadXyJtIKJ9lx2KIAB2Z6GufSJxDkOll9BTP Q==;
X-CSE-ConnectionGUID: IeLVll5gQqaNS3yUaTd2aA==
X-CSE-MsgGUID: fGwzjHHhQHS2Sqy+WJ1NLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36694838"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="36694838"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:50:41 -0800
X-CSE-ConnectionGUID: Ya/bI54YTWG20OJmIJ/7rw==
X-CSE-MsgGUID: znezrM5WSgi1GlJ/GQ2OJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="103440411"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.206])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 02:50:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Matt Atwood <matthew.s.atwood@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] drm/xe: remove unused xe_pciids.h harder, add missing PCI ID
Date: Thu,  9 Jan 2025 12:50:32 +0200
Message-Id: <20250109105032.2585416-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Commit 493454445c95 ("drm/xe: switch to common PCI ID macros") removed
xe_pciids.h via drm-intel-next. In the mean time, commit ae78ec0a52c4
("drm/xe/ptl: Add another PTL PCI ID") added to xe_pciids.h via
drm-xe-next.

The two commits were merged in commit 8f109f287fdc ("Merge drm/drm-next
into drm-xe-next"), but xe_pciids.h wasn't removed, and the PCI ID
wasn't added to pciids.h.

Remove xe_pciids.h, and add the PCI ID to pciids.h.

Cc: Matt Atwood <matthew.s.atwood@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Fixes: 8f109f287fdc ("Merge drm/drm-next into drm-xe-next")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Closes: https://lore.kernel.org/r/20241125120921.1bbc1930@canb.auug.org.au
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

The problem has now percolated to at least drm-xe-next, drm-intel-next,
and drm-next. The conflict resolution in drm-tip adds the missing PCI ID
to pciids.h, which also means this patch won't apply to drm-tip, only to
the actual upstream branches.
---
 include/drm/intel/pciids.h    |   3 +-
 include/drm/intel/xe_pciids.h | 235 ----------------------------------
 2 files changed, 2 insertions(+), 236 deletions(-)
 delete mode 100644 include/drm/intel/xe_pciids.h

diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index c6518b0992cf..77c826589ec1 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -858,6 +858,7 @@
 	MACRO__(0xB092, ## __VA_ARGS__), \
 	MACRO__(0xB0A0, ## __VA_ARGS__), \
 	MACRO__(0xB0A1, ## __VA_ARGS__), \
-	MACRO__(0xB0A2, ## __VA_ARGS__)
+	MACRO__(0xB0A2, ## __VA_ARGS__), \
+	MACRO__(0xB0B0, ## __VA_ARGS__)
 
 #endif /* __PCIIDS_H__ */
diff --git a/include/drm/intel/xe_pciids.h b/include/drm/intel/xe_pciids.h
deleted file mode 100644
index 16d4b8bb590a..000000000000
--- a/include/drm/intel/xe_pciids.h
+++ /dev/null
@@ -1,235 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2022 Intel Corporation
- */
-
-#ifndef _XE_PCIIDS_H_
-#define _XE_PCIIDS_H_
-
-/*
- * Lists below can be turned into initializers for a struct pci_device_id
- * by defining INTEL_VGA_DEVICE:
- *
- * #define INTEL_VGA_DEVICE(id, info) { \
- *	0x8086, id,			\
- *	~0, ~0,				\
- *	0x030000, 0xff0000,		\
- *	(unsigned long) info }
- *
- * And then calling like:
- *
- * XE_TGL_12_GT1_IDS(INTEL_VGA_DEVICE, ## __VA_ARGS__)
- *
- * To turn them into something else, just provide a different macro passed as
- * first argument.
- */
-
-/* TGL */
-#define XE_TGL_GT1_IDS(MACRO__, ...)		\
-	MACRO__(0x9A60, ## __VA_ARGS__),	\
-	MACRO__(0x9A68, ## __VA_ARGS__),	\
-	MACRO__(0x9A70, ## __VA_ARGS__)
-
-#define XE_TGL_GT2_IDS(MACRO__, ...)		\
-	MACRO__(0x9A40, ## __VA_ARGS__),	\
-	MACRO__(0x9A49, ## __VA_ARGS__),	\
-	MACRO__(0x9A59, ## __VA_ARGS__),	\
-	MACRO__(0x9A78, ## __VA_ARGS__),	\
-	MACRO__(0x9AC0, ## __VA_ARGS__),	\
-	MACRO__(0x9AC9, ## __VA_ARGS__),	\
-	MACRO__(0x9AD9, ## __VA_ARGS__),	\
-	MACRO__(0x9AF8, ## __VA_ARGS__)
-
-#define XE_TGL_IDS(MACRO__, ...)		\
-	XE_TGL_GT1_IDS(MACRO__, ## __VA_ARGS__),\
-	XE_TGL_GT2_IDS(MACRO__, ## __VA_ARGS__)
-
-/* RKL */
-#define XE_RKL_IDS(MACRO__, ...)		\
-	MACRO__(0x4C80, ## __VA_ARGS__),	\
-	MACRO__(0x4C8A, ## __VA_ARGS__),	\
-	MACRO__(0x4C8B, ## __VA_ARGS__),	\
-	MACRO__(0x4C8C, ## __VA_ARGS__),	\
-	MACRO__(0x4C90, ## __VA_ARGS__),	\
-	MACRO__(0x4C9A, ## __VA_ARGS__)
-
-/* DG1 */
-#define XE_DG1_IDS(MACRO__, ...)		\
-	MACRO__(0x4905, ## __VA_ARGS__),	\
-	MACRO__(0x4906, ## __VA_ARGS__),	\
-	MACRO__(0x4907, ## __VA_ARGS__),	\
-	MACRO__(0x4908, ## __VA_ARGS__),	\
-	MACRO__(0x4909, ## __VA_ARGS__)
-
-/* ADL-S */
-#define XE_ADLS_IDS(MACRO__, ...)		\
-	MACRO__(0x4680, ## __VA_ARGS__),	\
-	MACRO__(0x4682, ## __VA_ARGS__),	\
-	MACRO__(0x4688, ## __VA_ARGS__),	\
-	MACRO__(0x468A, ## __VA_ARGS__),	\
-	MACRO__(0x468B, ## __VA_ARGS__),	\
-	MACRO__(0x4690, ## __VA_ARGS__),	\
-	MACRO__(0x4692, ## __VA_ARGS__),	\
-	MACRO__(0x4693, ## __VA_ARGS__)
-
-/* ADL-P */
-#define XE_ADLP_IDS(MACRO__, ...)		\
-	MACRO__(0x46A0, ## __VA_ARGS__),	\
-	MACRO__(0x46A1, ## __VA_ARGS__),	\
-	MACRO__(0x46A2, ## __VA_ARGS__),	\
-	MACRO__(0x46A3, ## __VA_ARGS__),	\
-	MACRO__(0x46A6, ## __VA_ARGS__),	\
-	MACRO__(0x46A8, ## __VA_ARGS__),	\
-	MACRO__(0x46AA, ## __VA_ARGS__),	\
-	MACRO__(0x462A, ## __VA_ARGS__),	\
-	MACRO__(0x4626, ## __VA_ARGS__),	\
-	MACRO__(0x4628, ## __VA_ARGS__),	\
-	MACRO__(0x46B0, ## __VA_ARGS__),	\
-	MACRO__(0x46B1, ## __VA_ARGS__),	\
-	MACRO__(0x46B2, ## __VA_ARGS__),	\
-	MACRO__(0x46B3, ## __VA_ARGS__),	\
-	MACRO__(0x46C0, ## __VA_ARGS__),	\
-	MACRO__(0x46C1, ## __VA_ARGS__),	\
-	MACRO__(0x46C2, ## __VA_ARGS__),	\
-	MACRO__(0x46C3, ## __VA_ARGS__)
-
-/* ADL-N */
-#define XE_ADLN_IDS(MACRO__, ...)		\
-	MACRO__(0x46D0, ## __VA_ARGS__),	\
-	MACRO__(0x46D1, ## __VA_ARGS__),	\
-	MACRO__(0x46D2, ## __VA_ARGS__),	\
-	MACRO__(0x46D3, ## __VA_ARGS__),	\
-	MACRO__(0x46D4, ## __VA_ARGS__)
-
-/* RPL-S */
-#define XE_RPLS_IDS(MACRO__, ...)		\
-	MACRO__(0xA780, ## __VA_ARGS__),	\
-	MACRO__(0xA781, ## __VA_ARGS__),	\
-	MACRO__(0xA782, ## __VA_ARGS__),	\
-	MACRO__(0xA783, ## __VA_ARGS__),	\
-	MACRO__(0xA788, ## __VA_ARGS__),	\
-	MACRO__(0xA789, ## __VA_ARGS__),	\
-	MACRO__(0xA78A, ## __VA_ARGS__),	\
-	MACRO__(0xA78B, ## __VA_ARGS__)
-
-/* RPL-U */
-#define XE_RPLU_IDS(MACRO__, ...)		\
-	MACRO__(0xA721, ## __VA_ARGS__),	\
-	MACRO__(0xA7A1, ## __VA_ARGS__),	\
-	MACRO__(0xA7A9, ## __VA_ARGS__),	\
-	MACRO__(0xA7AC, ## __VA_ARGS__),	\
-	MACRO__(0xA7AD, ## __VA_ARGS__)
-
-/* RPL-P */
-#define XE_RPLP_IDS(MACRO__, ...)		\
-	MACRO__(0xA720, ## __VA_ARGS__),	\
-	MACRO__(0xA7A0, ## __VA_ARGS__),	\
-	MACRO__(0xA7A8, ## __VA_ARGS__),	\
-	MACRO__(0xA7AA, ## __VA_ARGS__),	\
-	MACRO__(0xA7AB, ## __VA_ARGS__)
-
-/* DG2 */
-#define XE_DG2_G10_IDS(MACRO__, ...)		\
-	MACRO__(0x5690, ## __VA_ARGS__),	\
-	MACRO__(0x5691, ## __VA_ARGS__),	\
-	MACRO__(0x5692, ## __VA_ARGS__),	\
-	MACRO__(0x56A0, ## __VA_ARGS__),	\
-	MACRO__(0x56A1, ## __VA_ARGS__),	\
-	MACRO__(0x56A2, ## __VA_ARGS__),	\
-	MACRO__(0x56BE, ## __VA_ARGS__),	\
-	MACRO__(0x56BF, ## __VA_ARGS__)
-
-#define XE_DG2_G11_IDS(MACRO__, ...)		\
-	MACRO__(0x5693, ## __VA_ARGS__),	\
-	MACRO__(0x5694, ## __VA_ARGS__),	\
-	MACRO__(0x5695, ## __VA_ARGS__),	\
-	MACRO__(0x56A5, ## __VA_ARGS__),	\
-	MACRO__(0x56A6, ## __VA_ARGS__),	\
-	MACRO__(0x56B0, ## __VA_ARGS__),	\
-	MACRO__(0x56B1, ## __VA_ARGS__),	\
-	MACRO__(0x56BA, ## __VA_ARGS__),	\
-	MACRO__(0x56BB, ## __VA_ARGS__),	\
-	MACRO__(0x56BC, ## __VA_ARGS__),	\
-	MACRO__(0x56BD, ## __VA_ARGS__)
-
-#define XE_DG2_G12_IDS(MACRO__, ...)		\
-	MACRO__(0x5696, ## __VA_ARGS__),	\
-	MACRO__(0x5697, ## __VA_ARGS__),	\
-	MACRO__(0x56A3, ## __VA_ARGS__),	\
-	MACRO__(0x56A4, ## __VA_ARGS__),	\
-	MACRO__(0x56B2, ## __VA_ARGS__),	\
-	MACRO__(0x56B3, ## __VA_ARGS__)
-
-#define XE_DG2_IDS(MACRO__, ...)		\
-	XE_DG2_G10_IDS(MACRO__, ## __VA_ARGS__),\
-	XE_DG2_G11_IDS(MACRO__, ## __VA_ARGS__),\
-	XE_DG2_G12_IDS(MACRO__, ## __VA_ARGS__)
-
-#define XE_ATS_M150_IDS(MACRO__, ...)		\
-	MACRO__(0x56C0, ## __VA_ARGS__),	\
-	MACRO__(0x56C2, ## __VA_ARGS__)
-
-#define XE_ATS_M75_IDS(MACRO__, ...)		\
-	MACRO__(0x56C1, ## __VA_ARGS__)
-
-#define XE_ATS_M_IDS(MACRO__, ...)		\
-	XE_ATS_M150_IDS(MACRO__, ## __VA_ARGS__),\
-	XE_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
-
-/* ARL */
-#define XE_ARL_IDS(MACRO__, ...)		\
-	MACRO__(0x7D41, ## __VA_ARGS__),	\
-	MACRO__(0x7D51, ## __VA_ARGS__),        \
-	MACRO__(0x7D67, ## __VA_ARGS__),	\
-	MACRO__(0x7DD1, ## __VA_ARGS__),	\
-	MACRO__(0xB640, ## __VA_ARGS__)
-
-/* MTL */
-#define XE_MTL_IDS(MACRO__, ...)		\
-	MACRO__(0x7D40, ## __VA_ARGS__),	\
-	MACRO__(0x7D45, ## __VA_ARGS__),	\
-	MACRO__(0x7D55, ## __VA_ARGS__),	\
-	MACRO__(0x7D60, ## __VA_ARGS__),	\
-	MACRO__(0x7DD5, ## __VA_ARGS__)
-
-/* PVC */
-#define XE_PVC_IDS(MACRO__, ...)		\
-	MACRO__(0x0B69, ## __VA_ARGS__),	\
-	MACRO__(0x0B6E, ## __VA_ARGS__),	\
-	MACRO__(0x0BD4, ## __VA_ARGS__),	\
-	MACRO__(0x0BD5, ## __VA_ARGS__),	\
-	MACRO__(0x0BD6, ## __VA_ARGS__),	\
-	MACRO__(0x0BD7, ## __VA_ARGS__),	\
-	MACRO__(0x0BD8, ## __VA_ARGS__),	\
-	MACRO__(0x0BD9, ## __VA_ARGS__),	\
-	MACRO__(0x0BDA, ## __VA_ARGS__),	\
-	MACRO__(0x0BDB, ## __VA_ARGS__),	\
-	MACRO__(0x0BE0, ## __VA_ARGS__),	\
-	MACRO__(0x0BE1, ## __VA_ARGS__),	\
-	MACRO__(0x0BE5, ## __VA_ARGS__)
-
-#define XE_LNL_IDS(MACRO__, ...) \
-	MACRO__(0x6420, ## __VA_ARGS__), \
-	MACRO__(0x64A0, ## __VA_ARGS__), \
-	MACRO__(0x64B0, ## __VA_ARGS__)
-
-#define XE_BMG_IDS(MACRO__, ...) \
-	MACRO__(0xE202, ## __VA_ARGS__), \
-	MACRO__(0xE20B, ## __VA_ARGS__), \
-	MACRO__(0xE20C, ## __VA_ARGS__), \
-	MACRO__(0xE20D, ## __VA_ARGS__), \
-	MACRO__(0xE212, ## __VA_ARGS__)
-
-#define XE_PTL_IDS(MACRO__, ...) \
-	MACRO__(0xB080, ## __VA_ARGS__), \
-	MACRO__(0xB081, ## __VA_ARGS__), \
-	MACRO__(0xB082, ## __VA_ARGS__), \
-	MACRO__(0xB090, ## __VA_ARGS__), \
-	MACRO__(0xB091, ## __VA_ARGS__), \
-	MACRO__(0xB092, ## __VA_ARGS__), \
-	MACRO__(0xB0A0, ## __VA_ARGS__), \
-	MACRO__(0xB0A1, ## __VA_ARGS__), \
-	MACRO__(0xB0A2, ## __VA_ARGS__), \
-	MACRO__(0xB0B0, ## __VA_ARGS__)
-
-#endif
-- 
2.39.5

