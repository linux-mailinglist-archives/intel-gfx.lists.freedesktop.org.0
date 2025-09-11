Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A376B53D4E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 22:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77BA10EB8B;
	Thu, 11 Sep 2025 20:55:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8tzftbI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17A0B10EB8A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 20:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757624149; x=1789160149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iUNNGgkxoq9hV4lb2JB7SY8vvcm/iqwM/63wRZjpRHs=;
 b=B8tzftbIO8SJZOEYOnpLMoak5Tadzfm8bh6IaauSgMWd2FsluJkEQqsS
 H9RLMSoKz/TS45k75LPkzI8hLTjfQNwqxxQpfpfDA28QAPWYlnD9SFAGh
 BC+Q7nThGJMLurK9mmuEB075h4NpbS80QjcPVwbscfs662XmO5wlKENEo
 rQgM41cG/9+wlxwFKm56oBq4//l8zY7RyBIQIsUb1laMw0JFsqdtybajl
 +jdm7DMYQR6HJ3pLD7KMJtUflyfC0yNioNetbwfET0OySjCw2ncBktt5Z
 a6qjmJUdszLXlVqcf85pDCjZVRd/o7N3PXgDlkATdU81ViQohH4uc/hjT w==;
X-CSE-ConnectionGUID: XtxGFU1+Q7qSqKrVZSbwDw==
X-CSE-MsgGUID: X7Ez0uCbRIedZ/PeVHVdzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60029821"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60029821"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2025 13:55:49 -0700
X-CSE-ConnectionGUID: fzbjXH5PQHS3kVNoofu5yA==
X-CSE-MsgGUID: A1Cb7DFxQduTvLk6S899hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,258,1751266800"; d="scan'208";a="173696439"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by fmviesa006.fm.intel.com with ESMTP; 11 Sep 2025 13:55:47 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-gfx@lists.freedesktop.org,
	ankit.k.nautiyal@intel.com
Cc: gustavo.sousa@intel.com, matthew.s.atwood@intel.com,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH 1/3] drm/pcids: Split PTL pciids group to make wcl subplatform
Date: Fri, 12 Sep 2025 02:25:40 +0530
Message-ID: <20250911205543.388402-2-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
References: <20250911205543.388402-1-dnyaneshwar.bhadane@intel.com>
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

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 1 +
 include/drm/intel/pciids.h  | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 701ba9baa9d7..fc2ea9132804 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -375,6 +375,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
 	INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
 	INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
+	INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
 	{ }
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index da6301a6fcea..9d378c65be4b 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -877,7 +877,9 @@
 	MACRO__(0xB08F, ## __VA_ARGS__), \
 	MACRO__(0xB090, ## __VA_ARGS__), \
 	MACRO__(0xB0A0, ## __VA_ARGS__), \
-	MACRO__(0xB0B0, ## __VA_ARGS__), \
+	MACRO__(0xB0B0, ## __VA_ARGS__)
+
+#define INTEL_WCL_IDS(MACRO__, ...) \
 	MACRO__(0xFD80, ## __VA_ARGS__), \
 	MACRO__(0xFD81, ## __VA_ARGS__)
 
-- 
2.51.0

