Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D72BD9B65FC
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 15:34:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EA8910E7B5;
	Wed, 30 Oct 2024 14:34:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eV9pBPvB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B94D110E7AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 14:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730298891; x=1761834891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aUDIjg2Cie8rcgrnDatWDP+h75UQv4JQLbeuKB8Xy4E=;
 b=eV9pBPvByft4WrUIQbBbeTk81ZSvcRdlp+fQLDsucQvF72IljkLB3HZT
 duMbLoPTqwik6w1Nl9ajfzHGLs9ofkBrMtG0i40UZJYbANgzvudHI8LY1
 4+MZlom2ynKLWKuoEUzpg3bc5aHCRjbcUJQfR4M2RjCZQeKg6CQiY4ptx
 o+a+rQr+jNHfyAIuKSvjtyCyTZbhinv6/MJ6+Uw4bpGGAJRq8S2+CJU1y
 K+J51OnHCEGe2oqDQIKOy7VDxcBimwnVYFgLbAIUaNDzxjQO+gJoTLVZo
 qSNo4cm7YGwmGJ2S1DlT5m2qZ2MXTH7AIFO08Cf9/b/8Gwb2xM7FDW5cv g==;
X-CSE-ConnectionGUID: la9zlKbxRV6ikpCqGqL5Cg==
X-CSE-MsgGUID: vbpQ51/3TEaJX65lr4fkGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="55407438"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="55407438"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 07:34:51 -0700
X-CSE-ConnectionGUID: 13rc3P5XRua1USku6kNHog==
X-CSE-MsgGUID: j/QARihfRYyWJBF9EAXcjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="113180431"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by fmviesa001.fm.intel.com with ESMTP; 30 Oct 2024 07:34:48 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v3 1/4] drm/intel/pciids: Refactor DG2 PCI IDs into segment
 ranges
Date: Wed, 30 Oct 2024 20:04:15 +0530
Message-Id: <20241030143418.410406-2-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241030143418.410406-1-raag.jadav@intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
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

Refactor DG2 PCI IDs into D, E and M ranges which will be useful for
segment specific features.

v3: Rework subplatform naming (Jani)

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 include/drm/intel/pciids.h | 55 +++++++++++++++++++++++++++++---------
 1 file changed, 42 insertions(+), 13 deletions(-)

diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index 7632507af166..83aac9f17372 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -717,37 +717,66 @@
 	MACRO__(0xA7AB, ## __VA_ARGS__)
 
 /* DG2 */
-#define INTEL_DG2_G10_IDS(MACRO__, ...) \
-	MACRO__(0x5690, ## __VA_ARGS__), \
-	MACRO__(0x5691, ## __VA_ARGS__), \
-	MACRO__(0x5692, ## __VA_ARGS__), \
+#define INTEL_DG2_G10_D_IDS(MACRO__, ...) \
 	MACRO__(0x56A0, ## __VA_ARGS__), \
 	MACRO__(0x56A1, ## __VA_ARGS__), \
-	MACRO__(0x56A2, ## __VA_ARGS__), \
+	MACRO__(0x56A2, ## __VA_ARGS__)
+
+#define INTEL_DG2_G10_E_IDS(MACRO__, ...) \
 	MACRO__(0x56BE, ## __VA_ARGS__), \
 	MACRO__(0x56BF, ## __VA_ARGS__)
 
-#define INTEL_DG2_G11_IDS(MACRO__, ...) \
-	MACRO__(0x5693, ## __VA_ARGS__), \
-	MACRO__(0x5694, ## __VA_ARGS__), \
-	MACRO__(0x5695, ## __VA_ARGS__), \
+#define INTEL_DG2_G10_M_IDS(MACRO__, ...) \
+	MACRO__(0x5690, ## __VA_ARGS__), \
+	MACRO__(0x5691, ## __VA_ARGS__), \
+	MACRO__(0x5692, ## __VA_ARGS__)
+
+#define INTEL_DG2_G10_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G10_E_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G10_M_IDS(MACRO__, ## __VA_ARGS__)
+
+#define INTEL_DG2_G11_D_IDS(MACRO__, ...) \
 	MACRO__(0x56A5, ## __VA_ARGS__), \
 	MACRO__(0x56A6, ## __VA_ARGS__), \
 	MACRO__(0x56B0, ## __VA_ARGS__), \
-	MACRO__(0x56B1, ## __VA_ARGS__), \
+	MACRO__(0x56B1, ## __VA_ARGS__)
+
+#define INTEL_DG2_G11_E_IDS(MACRO__, ...) \
 	MACRO__(0x56BA, ## __VA_ARGS__), \
 	MACRO__(0x56BB, ## __VA_ARGS__), \
 	MACRO__(0x56BC, ## __VA_ARGS__), \
 	MACRO__(0x56BD, ## __VA_ARGS__)
 
-#define INTEL_DG2_G12_IDS(MACRO__, ...) \
-	MACRO__(0x5696, ## __VA_ARGS__), \
-	MACRO__(0x5697, ## __VA_ARGS__), \
+#define INTEL_DG2_G11_M_IDS(MACRO__, ...) \
+	MACRO__(0x5693, ## __VA_ARGS__), \
+	MACRO__(0x5694, ## __VA_ARGS__), \
+	MACRO__(0x5695, ## __VA_ARGS__)
+
+#define INTEL_DG2_G11_IDS(MACRO__, ...) \
+	INTEL_DG2_G11_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_E_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_M_IDS(MACRO__, ## __VA_ARGS__)
+
+#define INTEL_DG2_G12_D_IDS(MACRO__, ...) \
 	MACRO__(0x56A3, ## __VA_ARGS__), \
 	MACRO__(0x56A4, ## __VA_ARGS__), \
 	MACRO__(0x56B2, ## __VA_ARGS__), \
 	MACRO__(0x56B3, ## __VA_ARGS__)
 
+#define INTEL_DG2_G12_M_IDS(MACRO__, ...) \
+	MACRO__(0x5696, ## __VA_ARGS__), \
+	MACRO__(0x5697, ## __VA_ARGS__)
+
+#define INTEL_DG2_G12_IDS(MACRO__, ...) \
+	INTEL_DG2_G12_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_M_IDS(MACRO__, ## __VA_ARGS__)
+
+#define INTEL_DG2_D_IDS(MACRO__, ...) \
+	INTEL_DG2_G10_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G11_D_IDS(MACRO__, ## __VA_ARGS__), \
+	INTEL_DG2_G12_D_IDS(MACRO__, ## __VA_ARGS__)
+
 #define INTEL_DG2_IDS(MACRO__, ...) \
 	INTEL_DG2_G10_IDS(MACRO__, ## __VA_ARGS__), \
 	INTEL_DG2_G11_IDS(MACRO__, ## __VA_ARGS__), \
-- 
2.34.1

