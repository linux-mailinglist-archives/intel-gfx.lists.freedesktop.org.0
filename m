Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A5D896E0A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B43E112A0E;
	Wed,  3 Apr 2024 11:22:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LtvD8EHK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2939C112A0A;
 Wed,  3 Apr 2024 11:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143372; x=1743679372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jWMh6Vvet6aawm4k1UculgyErNhjFfSZiLFrgnG+Ww8=;
 b=LtvD8EHKOmZmFWmelUYLp6xmyCrEzvMUI5lgWXWOoKJBvRtxUwfRVfqE
 ajxhYjMeE36+5bc5TDdo9Morf+FtQTscoYK/5qC+BQq016sCyxNUo9VTN
 YqIFDcE939Zu9hFZNjn+IM04QlR0tKpXRAofuryOYWmOHb1TeUlgymU/W
 MDuf/MoSD/fqxLVW8qln1WHgKKk8f2E6vqDEYaKRveQyvohMfrIuXWZB2
 74JD7nPH5sely9/eipDThVM9asFuHvoCQZW51aI/lUwbigbW3HjJZxvJ1
 8VsDwxjgTmZZptaiMteKf6JTzXqmmFzk4DDx9ZQmVO9cdWMbvXab3ShzV A==;
X-CSE-ConnectionGUID: 0ek16IiLTNWhBBmPMFTXYA==
X-CSE-MsgGUID: GckoN95fRl28+zI+7CxAQw==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24823996"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24823996"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:51 -0700
X-CSE-ConnectionGUID: oeF1KSdRTs++HnnK3YUqTg==
X-CSE-MsgGUID: VdzWpvLRRZiNQrmOdL70Ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358492"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:22:50 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 02/25] drm/xe/bmg: Add BMG platform definition
Date: Wed,  3 Apr 2024 16:52:30 +0530
Message-Id: <20240403112253.1432390-3-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

BMG is a discrete GPU based on the Xe2 architecture.

Bspec: 68090
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c            | 7 +++++++
 drivers/gpu/drm/xe/xe_platform_types.h | 1 +
 include/drm/xe_pciids.h                | 7 +++++++
 3 files changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index c47ab4b67467..b3158053baee 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -337,6 +337,12 @@ static const struct xe_device_desc lnl_desc = {
 	.require_force_probe = true,
 };
 
+static const struct xe_device_desc bmg_desc = {
+	DGFX_FEATURES,
+	PLATFORM(XE_BATTLEMAGE),
+	.require_force_probe = true,
+};
+
 #undef PLATFORM
 __diag_pop();
 
@@ -379,6 +385,7 @@ static const struct pci_device_id pciidlist[] = {
 	XE_PVC_IDS(INTEL_VGA_DEVICE, &pvc_desc),
 	XE_MTL_IDS(INTEL_VGA_DEVICE, &mtl_desc),
 	XE_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
+	XE_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/xe/xe_platform_types.h b/drivers/gpu/drm/xe/xe_platform_types.h
index 553f53dbd093..79b7042c4534 100644
--- a/drivers/gpu/drm/xe/xe_platform_types.h
+++ b/drivers/gpu/drm/xe/xe_platform_types.h
@@ -22,6 +22,7 @@ enum xe_platform {
 	XE_PVC,
 	XE_METEORLAKE,
 	XE_LUNARLAKE,
+	XE_BATTLEMAGE,
 };
 
 enum xe_subplatform {
diff --git a/include/drm/xe_pciids.h b/include/drm/xe_pciids.h
index c7fc288dacee..73d972a8aca1 100644
--- a/include/drm/xe_pciids.h
+++ b/include/drm/xe_pciids.h
@@ -208,4 +208,11 @@
 	MACRO__(0x64A0, ## __VA_ARGS__), \
 	MACRO__(0x64B0, ## __VA_ARGS__)
 
+#define XE_BMG_IDS(MACRO__, ...) \
+	MACRO__(0xE202, ## __VA_ARGS__), \
+	MACRO__(0xE20B, ## __VA_ARGS__), \
+	MACRO__(0xE20C, ## __VA_ARGS__), \
+	MACRO__(0xE20D, ## __VA_ARGS__), \
+	MACRO__(0xE212, ## __VA_ARGS__)
+
 #endif
-- 
2.25.1

