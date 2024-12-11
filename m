Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBF09ECBAC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2024 13:03:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D9610E3DE;
	Wed, 11 Dec 2024 12:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VYvdG++7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BEF010E07B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2024 12:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733918585; x=1765454585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F3HBBO65wq36DhA//vzyLqq1uGjQgiGGSWtnmkwcPzw=;
 b=VYvdG++7hZRm+ZKK1GWiCPHp8sE9tHHuWQc1pG1UpdnSej2+nv2xkpka
 rGC9k0qs9g+eKx60oaezH3c+eJXwnSDPr/8wR2npz3BJaufnVnIE/mdqC
 PfBYQ6Ny3Rjd7emmp90Na+5lv275+l1kMvP22k4SSqbUKTWNVZUGxrpdB
 fjaLotmFnaMER3b/1kmQN7+vimxX0LOjMfHVlWRS1RYxl9KeY0iL0D3eR
 hjrtTODN8eKvs/oUQNDHPwaA4eVJVIFBbfpzpzvnlqCfHyk21CZ9cSzrT
 3wSUo14UPkpjGhvFC7mvY2/z8jbf+uEM/TA7emRWJnLxkrP3gTK2VeeHh g==;
X-CSE-ConnectionGUID: 2W5o6LwZTjSLWCw3lUjRKA==
X-CSE-MsgGUID: ReCUzP3KS2SGDWsqJpu+Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="33614186"
X-IronPort-AV: E=Sophos;i="6.12,225,1728975600"; d="scan'208";a="33614186"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2024 04:01:39 -0800
X-CSE-ConnectionGUID: zDOVCysVRcaYGlbUVuP06A==
X-CSE-MsgGUID: 8VpB5h+mTLOT+0FB5if2/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="100836955"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa003.jf.intel.com with ESMTP; 11 Dec 2024 04:01:35 -0800
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 1/4] drm/intel/pciids: Refactor DG2 PCI IDs into segment
 ranges
Date: Wed, 11 Dec 2024 17:29:49 +0530
Message-Id: <20241211115952.1659287-2-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241211115952.1659287-1-raag.jadav@intel.com>
References: <20241211115952.1659287-1-raag.jadav@intel.com>
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
Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 include/drm/intel/pciids.h | 55 +++++++++++++++++++++++++++++---------
 1 file changed, 42 insertions(+), 13 deletions(-)

diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index 7883384acd5e..77c826589ec1 100644
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

