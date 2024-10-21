Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A90629A9348
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C57810E5C7;
	Mon, 21 Oct 2024 22:28:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZOMbYMpT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C78510E5C3;
 Mon, 21 Oct 2024 22:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549691; x=1761085691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Kzzpc8XuURkyPHa1S6835TBjrw3FX+sTs0bM74Go6Y=;
 b=ZOMbYMpTmfN71GKhVPgWUw/c+8ZT3UQV+7MNSiSljOl1iPvgPI7j4+2/
 kfae9mpvCqqeBLCHozGEsqcEdNrPIGfnaOt4+8ZyiEFvH6Mlnvg9jckmq
 Z78+3yxy55XFoQ4BTw+imBY80xe1drCE1MnpQ+S2TEcUAPqiX+lZRbgMG
 uAKKVR4U+vQ/PkDIdUqSt75MYAXpQynesSR9PpL9Ggkfu9MuPVr9mOPeR
 WmHM50kZxomFnmkeDAbLwSPmaOFouXnaudb09k8c5ZRkiy4mdwcmXfGA3
 Xmnaou4pKR5xYu0Aupc1tkaNXurMlk5Iov1xvg74d4r29u6L8A+Yu0mkV A==;
X-CSE-ConnectionGUID: huf56cr2TB246A8mEZ+v+Q==
X-CSE-MsgGUID: lOnX283bTlaFQV7SmD3h+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934461"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934461"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:11 -0700
X-CSE-ConnectionGUID: 4Oa8x5k4S563IWdI9reaYA==
X-CSE-MsgGUID: bICNsDL2QRywkz2+ntOQAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009612"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:09 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 06/13] drm/i915/dmc_wl: Extract intel_dmc_wl_addr_in_range()
Date: Mon, 21 Oct 2024 19:27:25 -0300
Message-ID: <20241021222744.294371-7-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
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

We will be using more than one range table in
intel_dmc_wl_check_range(). As such, move the logic to a new function
and name it intel_dmc_wl_addr_in_range().

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 22 ++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 82eb9166e5f8..d597cc825f64 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -95,20 +95,20 @@ static void intel_dmc_wl_work(struct work_struct *work)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
-static bool intel_dmc_wl_check_range(u32 address)
+static bool intel_dmc_wl_addr_in_range(u32 address,
+				       const struct intel_dmc_wl_range ranges[])
 {
-	int i;
-	bool wl_needed = false;
-
-	for (i = 0; lnl_wl_range[i].start; i++) {
-		if (address >= lnl_wl_range[i].start &&
-		    address <= lnl_wl_range[i].end) {
-			wl_needed = true;
-			break;
-		}
+	for (int i = 0; ranges[i].start; i++) {
+		if (ranges[i].start <= address && address <= ranges[i].end)
+			return true;
 	}
 
-	return wl_needed;
+	return false;
+}
+
+static bool intel_dmc_wl_check_range(u32 address)
+{
+	return intel_dmc_wl_addr_in_range(address, lnl_wl_range);
 }
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
-- 
2.47.0

