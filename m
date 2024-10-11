Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5019099A16C
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:34:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB2E10EAAC;
	Fri, 11 Oct 2024 10:34:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="buGZs9iR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A899A10EAAC
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 10:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728642842; x=1760178842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mhqTgLHyDyyJDMlyBznGqDXf1qK6DGNPMcf6jqtYtsM=;
 b=buGZs9iRABDQaFaOaN8RxFzeMVyVGP+TUNHXcbjtjT+hON/TknxC2Xg6
 /DTbpOOK16eyK5EEKvvtwG26a0qX+nuHTMjYoqrOrtdiuBv4KPyX5GDMR
 5QOoo942Y+SsRdV6ds/jeueLbTJkBf0VU3RIY0KTezJi0I6oa1JPzftXT
 W+2aw3N3nDxkflvUeA+0UA5rX5Bw3v6UJQilOh5T2nZw4uFvMNEQSkyVK
 izOF97wXUEiTcWd6Z7d99/FCbXBwECwlPjcSEgOM4gtjjdgdzoA8Uv8aM
 khGzdRepvHABz6FVFDoCL7/H4zlIJVi1pxy33MNjLa4g++1Q+PPuzbJNt g==;
X-CSE-ConnectionGUID: 1NUlngzESFulMM2/Biwf1g==
X-CSE-MsgGUID: a6uuQSAUSn+D0imDAmkwBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38619594"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38619594"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:34:01 -0700
X-CSE-ConnectionGUID: ekF6Mvs/QSevpGyQfvlNRA==
X-CSE-MsgGUID: PViaqxgWQ/qIX3PgZ90Jcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77341115"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa007.jf.intel.com with ESMTP; 11 Oct 2024 03:33:59 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v2 1/4] drm/i915/pciids: Refactor DG2 PCI IDs into workaround
 ranges
Date: Fri, 11 Oct 2024 16:02:47 +0530
Message-Id: <20241011103250.1035316-2-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241011103250.1035316-1-raag.jadav@intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
MIME-Version: 1.0
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

Refactor DG2 PCI IDs into device ranges that will be used in a workaround.

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 include/drm/intel/i915_pciids.h | 34 +++++++++++++++++++++++----------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
index 2bf03ebfcf73..82f960f625c7 100644
--- a/include/drm/intel/i915_pciids.h
+++ b/include/drm/intel/i915_pciids.h
@@ -724,37 +724,51 @@
 	MACRO__(0xA7AB, ## __VA_ARGS__)
 
 /* DG2 */
+#define INTEL_DG2_G10_WA_IDS(MACRO__, ...) \
+	MACRO__(0x56A0, ## __VA_ARGS__), \
+	MACRO__(0x56A1, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__)
+
 #define INTEL_DG2_G10_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_WA_IDS(MACRO__, ## __VA_ARGS__), \
 	MACRO__(0x5690, ## __VA_ARGS__), \
 	MACRO__(0x5691, ## __VA_ARGS__), \
 	MACRO__(0x5692, ## __VA_ARGS__), \
-	MACRO__(0x56A0, ## __VA_ARGS__), \
-	MACRO__(0x56A1, ## __VA_ARGS__), \
-	MACRO__(0x56A2, ## __VA_ARGS__), \
 	MACRO__(0x56BE, ## __VA_ARGS__), \
 	MACRO__(0x56BF, ## __VA_ARGS__)
 
+#define INTEL_DG2_G11_WA_IDS(MACRO__, ...) \
+	MACRO__(0x56A5, ## __VA_ARGS__), \
+	MACRO__(0x56A6, ## __VA_ARGS__), \
+	MACRO__(0x56B0, ## __VA_ARGS__), \
+	MACRO__(0x56B1, ## __VA_ARGS__)
+
 #define INTEL_DG2_G11_IDS(MACRO__, ...) \
+	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
 	MACRO__(0x5693, ## __VA_ARGS__), \
 	MACRO__(0x5694, ## __VA_ARGS__), \
 	MACRO__(0x5695, ## __VA_ARGS__), \
-	MACRO__(0x56A5, ## __VA_ARGS__), \
-	MACRO__(0x56A6, ## __VA_ARGS__), \
-	MACRO__(0x56B0, ## __VA_ARGS__), \
-	MACRO__(0x56B1, ## __VA_ARGS__), \
 	MACRO__(0x56BA, ## __VA_ARGS__), \
 	MACRO__(0x56BB, ## __VA_ARGS__), \
 	MACRO__(0x56BC, ## __VA_ARGS__), \
 	MACRO__(0x56BD, ## __VA_ARGS__)
 
-#define INTEL_DG2_G12_IDS(MACRO__, ...) \
-	MACRO__(0x5696, ## __VA_ARGS__), \
-	MACRO__(0x5697, ## __VA_ARGS__), \
+#define INTEL_DG2_G12_WA_IDS(MACRO__, ...) \
 	MACRO__(0x56A3, ## __VA_ARGS__), \
 	MACRO__(0x56A4, ## __VA_ARGS__), \
 	MACRO__(0x56B2, ## __VA_ARGS__), \
 	MACRO__(0x56B3, ## __VA_ARGS__)
 
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__)
+
+#define INTEL_DG2_WA_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_WA_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_WA_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_WA_IDS(MACRO__, ## __VA_ARGS__)
+
 #define INTEL_DG2_IDS(MACRO__, ...) \
 	INTEL_DG2_G10_IDS(MACRO__, ## __VA_ARGS__), \
 	INTEL_DG2_G11_IDS(MACRO__, ## __VA_ARGS__), \
-- 
2.34.1

