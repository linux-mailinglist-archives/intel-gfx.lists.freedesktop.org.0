Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0A6B8A8CC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 18:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DA910EA53;
	Fri, 19 Sep 2025 16:22:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MSjv2JXT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 006FB10E246;
 Fri, 19 Sep 2025 16:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758298961; x=1789834961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QRN9Zd+uNZyNfvYM41pisL8iRAi55QBqhQhn7xvndsA=;
 b=MSjv2JXTwK3X1TaXquXoXwFaoIXeLumfeSmeiLO8Cu6p7f30rd32pNEr
 fpxS0LzMXiM4cG9tNCZkYRXq+/u3NMgVsB1uMNFfggA8EPCsqSRrdu+xb
 QGzF23k+78i06sSBmSul/dCoINHOGV8HukkthW4/JXXXsVsjilazsFfwM
 SFQ5Fo5gA8CfCzBXtMb4hppvhkrWyTaj9LW6rfh6Lb8r4Eyhctr0AAhHt
 u9awi0msoY6tE+DPgCnm4ucy/n7RYTFGWyF5X/105qjb795bE8ZRKq0Po
 nu43QuwWEoTk18yRuI8D5Aj3lGGabwrntn1cS3Aybn3mxHJFFos8fA/Us g==;
X-CSE-ConnectionGUID: vL76XEx5RqaZNZ/kbiTRxg==
X-CSE-MsgGUID: RjJb5RFmQPu2Wbe5yHM+yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60536182"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60536182"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 09:22:41 -0700
X-CSE-ConnectionGUID: u0QnFXWQSNuAUwXWOczHIQ==
X-CSE-MsgGUID: QJ2kdiIUSg2klHzTy6oVLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175495062"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa007.fm.intel.com with ESMTP; 19 Sep 2025 09:22:40 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2 1/3] drm/pcids: Split PTL pciids group to make wcl
 subplatform
Date: Fri, 19 Sep 2025 21:52:31 +0530
Message-ID: <20250919162233.1624905-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
References: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
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

To form the WCL platform as a subplatform of PTL in definition,
WCL pci ids are splited into saparate group from PTL.
So update the pciidlist struct to cover all the pci ids.

v2: 
- Squash wcl description in single patch for display and xe.(jani,gustavo)

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
 drivers/gpu/drm/xe/xe_pci.c                         | 1 +
 include/drm/intel/pciids.h                          | 5 ++++-
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a002bc6ce7b0..a9a36176096f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1482,6 +1482,7 @@ static const struct {
 	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
 	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
 	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
+	INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 77bee811a150..3f42b91efa28 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -376,6 +376,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
 	INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
 	INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
+	INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index da6301a6fcea..69d4ae92d822 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -877,7 +877,10 @@
 	MACRO__(0xB08F, ## __VA_ARGS__), \
 	MACRO__(0xB090, ## __VA_ARGS__), \
 	MACRO__(0xB0A0, ## __VA_ARGS__), \
-	MACRO__(0xB0B0, ## __VA_ARGS__), \
+	MACRO__(0xB0B0, ## __VA_ARGS__)
+
+/* WCL */
+#define INTEL_WCL_IDS(MACRO__, ...) \
 	MACRO__(0xFD80, ## __VA_ARGS__), \
 	MACRO__(0xFD81, ## __VA_ARGS__)
 
-- 
2.51.0

