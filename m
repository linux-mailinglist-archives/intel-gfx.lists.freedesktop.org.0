Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C82619F0F4D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 15:35:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2254310F036;
	Fri, 13 Dec 2024 14:35:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jSNq1wtv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BD4210F036
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 14:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734100532; x=1765636532;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aD7YUv37FOpXxRRyzzCok1s2Hpla0pl/Pwtq+IdhYF8=;
 b=jSNq1wtv1UAKIMIPZoXxMBYKfeM0L6LkUrDHsGwFVqdxnijNBL/Afb3e
 a4M6ahKRhbE8guGCVABer3qCtegR7AE4cvY1H9RAPdLuQM0a1DGByAcoR
 wQ0Ba1YrIOiC3Yslwi3lXmOfEEFpXyJ5PbmoYuN332EMe3W7BNCPGjb1N
 IHZbpJvCWRXSv6rGiOExPF8Esq7CS3JEjgJaClI/4uEjQtxQN3vF8YjBi
 0lxCmg9FEv1dnteZuhs8xAk7qaA5M64JCXa8tEMJhvkCMu2+t0i7xxjtA
 3QT1AB1qTTpnO0DwPtBI+jHcgvJPNaFOYxoBMXCSMqkU882iKfYFd7EYC A==;
X-CSE-ConnectionGUID: FQW7BXM9SYeHFQP8mlh8rg==
X-CSE-MsgGUID: EOqk7OVmRNCyq5N5hjQoQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="33852875"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="33852875"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:35:31 -0800
X-CSE-ConnectionGUID: RLSrWrNGQQuVjltJKYgm5w==
X-CSE-MsgGUID: uj6wXrR3Rr2ATEP3IGxgdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="127545805"
Received: from pltuser2-ms-7d25.iind.intel.com ([10.190.239.58])
 by fmviesa001.fm.intel.com with ESMTP; 13 Dec 2024 06:35:31 -0800
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v3 1/2] drm/i915/display: Add MTL subplatforms definition
Date: Fri, 13 Dec 2024 20:04:07 +0530
Message-Id: <20241213143408.3051070-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213143408.3051070-1-dnyaneshwar.bhadane@intel.com>
References: <20241213143408.3051070-1-dnyaneshwar.bhadane@intel.com>
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

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 .../drm/i915/display/intel_display_device.c   | 21 +++++++++++++++++++
 .../drm/i915/display/intel_display_device.h   |  2 ++
 include/drm/intel/pciids.h                    |  5 ++++-
 3 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 68cb7f9b9ef3..5dc689a8b1ae 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1357,6 +1357,16 @@ static const struct intel_display_device_info xe2_hpd_display = {
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
+static const u16 arl_u_ids[] = {
+	INTEL_ARL_U_IDS(ID),
+	0
+};
+
+static const u16 mtl_u_ids[] = {
+	INTEL_MTL_U_IDS(ID),
+	0
+};
+
 /*
  * Do not initialize the .info member of the platform desc for GMD ID based
  * platforms. Their display will be probed automatically based on the IP version
@@ -1364,6 +1374,17 @@ static const struct intel_display_device_info xe2_hpd_display = {
  */
 static const struct platform_desc mtl_desc = {
 	PLATFORM(meteorlake),
+	.subplatforms = (const struct subplatform_desc[]) {
+		{
+			SUBPLATFORM(meteorlake, u),
+			.pciidlist = mtl_u_ids,
+		},
+		{
+			SUBPLATFORM(arrowlake, u),
+			.pciidlist = arl_u_ids,
+		},
+		{},
+	}
 };
 
 static const struct platform_desc lnl_desc = {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 9a333d9e6601..87a614e2dfab 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -96,6 +96,8 @@ struct pci_dev;
 	func(dg2_g12) \
 	/* Display ver 14 (based on GMD ID) */ \
 	func(meteorlake) \
+	func(meteorlake_u) \
+	func(arrowlake_u) \
 	/* Display ver 20 (based on GMD ID) */ \
 	func(lunarlake) \
 	/* Display ver 14.1 (based on GMD ID) */ \
diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index c6518b0992cf..f29034ccb36c 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -811,9 +811,12 @@
 	INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
 
 /* MTL */
+#define INTEL_MTL_U_IDS(MACRO__, ...) \
+	MACRO__(0x7D45, ## __VA_ARGS__)
+
 #define INTEL_MTL_IDS(MACRO__, ...) \
 	MACRO__(0x7D40, ## __VA_ARGS__), \
-	MACRO__(0x7D45, ## __VA_ARGS__), \
+	INTEL_MTL_U_IDS(MACRO__, ## __VA_ARGS__), \
 	MACRO__(0x7D55, ## __VA_ARGS__), \
 	MACRO__(0x7D60, ## __VA_ARGS__), \
 	MACRO__(0x7DD5, ## __VA_ARGS__)
-- 
2.34.1

