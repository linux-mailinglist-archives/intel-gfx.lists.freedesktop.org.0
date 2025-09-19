Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF9EB88B58
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 11:59:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64B210E97C;
	Fri, 19 Sep 2025 09:59:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XS6tdSOh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8434010E976
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 09:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758275965; x=1789811965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QRN9Zd+uNZyNfvYM41pisL8iRAi55QBqhQhn7xvndsA=;
 b=XS6tdSOhE/AkjViddvoDwIpvojrACYLExd5yj8NGH9fNE3VKyX1nkBQU
 2N4w9SF6jIIEIJ7B7DTaDKT2b/+TbrO3IILaFHWNZxaO46/TRu/N2n7MY
 j9LP4yTw0OlRXy5mCJTLAdZy7AguzDv2EYgvOm7UPkY38GeTEe8d2E8q6
 vJhmWy2hzGBNunsjOaOWPJzkBP1fcnWWKrFWIzyn/QtI9UkA5bG3SvXWn
 BA+XH/2QvBXdJjUXJfbaPY+sRCZXzGi8Uqv8WKUme2HpDhAl/EtDNH+fg
 fa3AiIW8X4P8E+KGBaLWMowr1Qa/PTaSElS4HEMOn475zKRyFiZ+1fKnA g==;
X-CSE-ConnectionGUID: m71nE7frSkOEYqlmbbCRfQ==
X-CSE-MsgGUID: Os7yi8n4TGmFP3iU9uGqPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="64259664"
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="64259664"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 02:59:24 -0700
X-CSE-ConnectionGUID: WrlRfAaQTXqZ/SPMqlsCCg==
X-CSE-MsgGUID: VjrD2BlqQx6gzG+nQNuHtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="180050067"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 19 Sep 2025 02:59:24 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v2 1/3] drm/pcids: Split PTL pciids group to make wcl
 subplatform
Date: Fri, 19 Sep 2025 15:29:18 +0530
Message-ID: <20250919095920.1594604-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250919095920.1594604-1-dnyaneshwar.bhadane@intel.com>
References: <20250911210514.389014-1-dnyaneshwar.bhadane@intel.com>
 <20250919095920.1594604-1-dnyaneshwar.bhadane@intel.com>
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

