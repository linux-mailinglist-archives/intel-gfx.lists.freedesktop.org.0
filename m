Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6DE9F5768
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 21:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F100A10E65E;
	Tue, 17 Dec 2024 20:14:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G9D2YCvd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26DC10E65E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2024 20:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734466471; x=1766002471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hG8HYyOW+AywcU4wolW3gEek7DQ/aFAbK6qgWRF601c=;
 b=G9D2YCvdTpKo10G1z1ETJEQ1wNZnuCd6wJRXtV0yzMHD2p+hIXP8Jjl/
 79lrTj9KhsI6WyCFWha2sF79J8w30qh+Lk/r3XqWYh3X9aSowvAc315+g
 ZWtbfM2vl40p/PCEncmaHphjn31uO5B8pf+cO0poyXikU/nLD2pzKkFP5
 ziAcryPUTE3hueuUAXXGnGKoA2qtzghDuPsN8SvrH2CgipHCiMK7ZoxL8
 ZkbCZScVh4jPMV47MIbuxLC/TiXoD403gZxOiRtVMmMvSK3AM03D4PCcp
 K/zFMeoKCEqz4/XFpWpVgRn/3mIEs3vcRTrpul6H1XBfNTtU/Yt/ohRQ1 A==;
X-CSE-ConnectionGUID: zHK+q4/cQpWqnlpUIy1NRg==
X-CSE-MsgGUID: lZSwOBDARfOn05vDNz34+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="34233692"
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="34233692"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 12:14:31 -0800
X-CSE-ConnectionGUID: Uq+Nk97VQyy72KNIucA93A==
X-CSE-MsgGUID: D5iUbrovSCuYar4+MJ4RxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="102709776"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by orviesa003.jf.intel.com with ESMTP; 17 Dec 2024 12:14:30 -0800
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2 1/2] drm/i915/display: Add MTL subplatforms definition
Date: Wed, 18 Dec 2024 01:43:00 +0530
Message-Id: <20241217201301.3593054-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
References: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
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

Separate MTL-U platform PCI ids in one define macro.

Add the MTL U/ARL U as subplatform member in MTL platform description
structure to use display.platform.<platform> from intel_display
structure instead of IS_<PLATFORM>() in display code path.

v2:
- Club ARL-u in MTL and identify ARL-u as MTL-u subplatform(Jani)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_display_device.h |  1 +
 include/drm/intel/pciids.h                          |  7 +++++--
 3 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 68cb7f9b9ef3..738ae522c8f4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1357,6 +1357,12 @@ static const struct intel_display_device_info xe2_hpd_display = {
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
+static const u16 mtl_u_ids[] = {
+	INTEL_MTL_U_IDS(ID),
+	INTEL_ARL_U_IDS(ID),
+	0
+};
+
 /*
  * Do not initialize the .info member of the platform desc for GMD ID based
  * platforms. Their display will be probed automatically based on the IP version
@@ -1364,6 +1370,13 @@ static const struct intel_display_device_info xe2_hpd_display = {
  */
 static const struct platform_desc mtl_desc = {
 	PLATFORM(meteorlake),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{
+			SUBPLATFORM(meteorlake, u),
+			.pciidlist = mtl_u_ids,
+		},
+		{},
+	}
 };
 
 static const struct platform_desc lnl_desc = {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 9a333d9e6601..5853472bb9c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -96,6 +96,7 @@ struct pci_dev;
 	func(dg2_g12) \
 	/* Display ver 14 (based on GMD ID) */ \
 	func(meteorlake) \
+	func(meteorlake_u) \
 	/* Display ver 20 (based on GMD ID) */ \
 	func(lunarlake) \
 	/* Display ver 14.1 (based on GMD ID) */ \
diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index 77c826589ec1..9c3a339e26af 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -811,9 +811,12 @@
 	INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
 
 /* MTL */
-#define INTEL_MTL_IDS(MACRO__, ...) \
+#define INTEL_MTL_U_IDS(MACRO__, ...) \
 	MACRO__(0x7D40, ## __VA_ARGS__), \
-	MACRO__(0x7D45, ## __VA_ARGS__), \
+	MACRO__(0x7D45, ## __VA_ARGS__)
+
+#define INTEL_MTL_IDS(MACRO__, ...) \
+	INTEL_MTL_U_IDS(MACRO__, ## __VA_ARGS__), \
 	MACRO__(0x7D55, ## __VA_ARGS__), \
 	MACRO__(0x7D60, ## __VA_ARGS__), \
 	MACRO__(0x7DD5, ## __VA_ARGS__)
-- 
2.34.1

