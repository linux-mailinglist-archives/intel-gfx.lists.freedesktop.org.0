Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4A0C99BA6
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 02:23:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0F810E504;
	Tue,  2 Dec 2025 01:23:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVG338D2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF3F710E502;
 Tue,  2 Dec 2025 01:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764638597; x=1796174597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nMAoCvrSDT1eRrDIibvCNG9qpd+z3uOEE7PVotkAxcI=;
 b=FVG338D2QJZHAPFAdjfmQtRMf9I6TIvKDCPQhPDiSBbjMONa6TlTfbnv
 lrbLUmy/Vwm+nuu1D+GlxnCl3OFwT72DXXldE8U0egDKSvy6S1d0UiyNa
 5ZiGIm4x6oq5K2M7ocQuWYb1tawEblyoIGeh8meyxsDx/muYJH941uhUl
 F0MS2wVgRpfw8FLuhL2nlRWEh/ncKR8Fw50hboi5eyh0LxnsKx+dGlUcx
 Zs0YYiK1J0nOK/ZzsbMpZDoeUq2bQ1MX9CWVCT42NAfgoyMOlPDFLJRsx
 ZRp3Wlgph2mbXGgA24wnvP9BPIdto4HtKc/jdqd6mlIOGB+UXAYdMnj7N Q==;
X-CSE-ConnectionGUID: xhm8CRB8T4eZHsIY9HL+oA==
X-CSE-MsgGUID: 4fQScDxvSveE1t6aYl+7kw==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69186551"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="69186551"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:17 -0800
X-CSE-ConnectionGUID: XxfJtbsyQEmjI33Cdwd6gQ==
X-CSE-MsgGUID: PQBrLydERnaaWjDftptd2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="224927914"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.111.179])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:17 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@Intel.com, dnyaneshware.bhdane@intel.com,
 gustavo.sousa@intel.com, jouni.hogander@intel.com,
 juha-peka.heikkila@intel.com, luciano.coelho@intel.com,
 matthew.d.roper@intel.com, ravi.kumar.vodapalli@intel.com,
 shekhar.chauhan@intel.com, vinod.govindapillai@intel.com,
 imre.deak@intel.com, jani.nikula@linux.intel.com, suraj.kandapal@intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 sai.teja.pottumuttu@Intel.com,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Subject: [PATCH v6 5/8] drm/i915/nvls: Add NVL-S display support
Date: Mon,  1 Dec 2025 17:23:03 -0800
Message-ID: <20251202012306.9315-6-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251202012306.9315-1-matthew.s.atwood@intel.com>
References: <20251202012306.9315-1-matthew.s.atwood@intel.com>
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Add platform description and PCI IDs for NVL-S.

BSpec: 74201
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 4 +++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 1170afaa8680..471f236c9ddf 100644
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
index 91d8cfac5eff..9affb6a53da4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -103,7 +103,9 @@ struct pci_dev;
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

