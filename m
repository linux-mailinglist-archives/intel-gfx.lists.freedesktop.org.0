Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CF5BDC51A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF1DA10E724;
	Wed, 15 Oct 2025 03:18:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PdqOFOTf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BD5A10E723;
 Wed, 15 Oct 2025 03:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498329; x=1792034329;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=aeGnEkI/0g/BtB3NAVJfjN1NtR9C+u9q+M2wFHtUZag=;
 b=PdqOFOTfYKdPLVzkqFF/TyUE8kwWdguNVJH0KOtTJySQRaoN6x7ZusJC
 AJYTGXBL/YbP7TqDjyf8ttYLCUhLWPYijr1ol4PBRMHvQPgFUaJuOT7Am
 AWCpeKq1DWCF4LGryVsixgjnI6JCrVwx2UjAa12TZyMjBg73AggM9IuYe
 kRZ5h7bxjxNMKG7VXf2+aeQtjAvhkwl48XWbylLTV9G3HrNevxHS/KVOo
 FodJvE04iibgjTNNYSodiLtU+sjK7R2SnRuKg5aQ+kcky82+5jpAy3rwa
 rHNR4cHspXWBBSczFt2NuxlUUMTois4NxwaU19+9QvyrcPxxAdFJQRMuH g==;
X-CSE-ConnectionGUID: 2z2pbXTST+G45BAGnK0lpw==
X-CSE-MsgGUID: 5VeJLIjYRrWReZiTjj2PSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62702622"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62702622"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:49 -0700
X-CSE-ConnectionGUID: i/L2P/nPRLmkzqf21t9GOw==
X-CSE-MsgGUID: 4fJFWiuiQy6396z3fnT9xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186303281"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:45 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:32 -0300
Subject: [PATCH 32/32] drm/i915/nvls: Add NVL-S display support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-32-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Add platform description and PCI IDs for NVL-S.

BSpec: 74201
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 4 +++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a38de39ed98c..2350ade1419c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1420,6 +1420,10 @@ static const struct platform_desc ptl_desc = {
 	}
 };
 
+static const struct platform_desc nvl_desc = {
+	PLATFORM(novalake),
+};
+
 __diag_pop();
 
 /*
@@ -1495,6 +1499,7 @@ static const struct {
 	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
 	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
 	INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
+	INTEL_NVLS_IDS(INTEL_DISPLAY_DEVICE, &nvl_desc),
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 8fdb8a0a4282..ed03630f9dcc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -102,7 +102,9 @@ struct pci_dev;
 	func(battlemage) \
 	/* Display ver 30 (based on GMD ID) */ \
 	func(pantherlake) \
-	func(pantherlake_wildcatlake)
+	func(pantherlake_wildcatlake) \
+	/* Display ver 35 (based on GMD ID) */ \
+	func(novalake)
 
 
 #define __MEMBER(name) unsigned long name:1;

-- 
2.51.0

