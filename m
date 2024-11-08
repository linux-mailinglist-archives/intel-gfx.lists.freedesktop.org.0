Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11BD9C1D87
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F21310E9A2;
	Fri,  8 Nov 2024 13:03:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aBe+1gu/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E17C410E98A;
 Fri,  8 Nov 2024 13:03:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731070984; x=1762606984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ensK3gAA8Mwmm2H7u6eNIJUisLeViKqAxhAbLVLiyY=;
 b=aBe+1gu/Fsn1mhVSsVXlxLXPWQmkuhFT1AICxYQXpXqg93fZKE+XuRnv
 B6Xid25xwXTm2H7brb5wx1YgUHY40HLFKFLYRxglBcjqH19C1Sgg7Oy/b
 vvegnItHBmumnQHERNfdcTeX+w6Srlo1SkyCioetMWY4JxtKrfD7h/GMp
 E0lJDH5W8Dbkiyuifo53T1EL+16szOB8LejU5J8MPuCuPLgBq3v4B/4vY
 dj2x79kN6whRQ40PKUpRs1QxtRrtbyAK9MI/wqu82Brw+slW5ZgrWq/Ik
 52HN6SMmTmI7F4+Yc0O+PdJJ+95YBDN42CIaE3PtyN8OPlgSlji0vl4oM w==;
X-CSE-ConnectionGUID: ETDBZbeISHuy4Ns/1lOCqA==
X-CSE-MsgGUID: IzigHz+YRASFZi6dCtZsMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513131"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513131"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:03 -0800
X-CSE-ConnectionGUID: 3k7BLB+RQ8uk9gcnMkScZw==
X-CSE-MsgGUID: 4xv19GY4RbG+khSkdP2Eqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692482"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:02:52 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 07/15] drm/i915/dmc_wl: Extract intel_dmc_wl_reg_in_range()
Date: Fri,  8 Nov 2024 09:57:12 -0300
Message-ID: <20241108130218.24125-8-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241108130218.24125-1-gustavo.sousa@intel.com>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
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
and name it intel_dmc_wl_reg_in_range().

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 1753c334f3fd..4b958a4c4358 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -99,21 +99,22 @@ static void intel_dmc_wl_work(struct work_struct *work)
 	spin_unlock_irqrestore(&wl->lock, flags);
 }
 
-static bool intel_dmc_wl_check_range(i915_reg_t reg)
+static bool intel_dmc_wl_reg_in_range(i915_reg_t reg,
+				      const struct intel_dmc_wl_range ranges[])
 {
-	int i;
-	bool wl_needed = false;
 	u32 offset = i915_mmio_reg_offset(reg);
 
-	for (i = 0; lnl_wl_range[i].start; i++) {
-		if (offset >= lnl_wl_range[i].start &&
-		    offset <= lnl_wl_range[i].end) {
-			wl_needed = true;
-			break;
-		}
+	for (int i = 0; ranges[i].start; i++) {
+		if (ranges[i].start <= offset && offset <= ranges[i].end)
+			return true;
 	}
 
-	return wl_needed;
+	return false;
+}
+
+static bool intel_dmc_wl_check_range(i915_reg_t reg)
+{
+	return intel_dmc_wl_reg_in_range(reg, lnl_wl_range);
 }
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
-- 
2.47.0

