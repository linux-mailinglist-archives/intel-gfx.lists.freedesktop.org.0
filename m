Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A1E9BF8B1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:52:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EFF310E78B;
	Wed,  6 Nov 2024 21:52:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VE6OWVuA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB1810E789;
 Wed,  6 Nov 2024 21:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929975; x=1762465975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ygurc4VOgqnIrNpEU/W4NwG1Bqd4XDP3ZuE71qVRW7M=;
 b=VE6OWVuAfl+VHeyetd8RrM2SsSp5DC9tfsRA53MOz3HQn3Fl6nhlTosa
 KRgfEjz4SX4++zcRwd+5jZ01rR04FTez8fcjUcl6QlJshDhUCok1gcVBP
 Sh2EXvPq79hGIEtyIzQsifoFPpUIrxanFjhguxgwkyX+810+RzQnVIh6J
 ADF99ynUaltEyjSZy1zwrFLouFhmqLYScvSEYXAzMMOyz991mGnKGY/XO
 ezPBSitNz3U0TsZ12+lsAjDoD28tRVpv678GAnIJGRUEgzOz8IvnB3cDP
 vSsa7XsnWWC+ZKGhPJF9ZDRpqDQcPzGTsWx0MuGyRW6Jimm3JxvqjiEPa A==;
X-CSE-ConnectionGUID: T/4cDUmrQRC3PtyCltrr8Q==
X-CSE-MsgGUID: m+wOVTBLS7K/J4Sflx6blw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212167"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212167"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:55 -0800
X-CSE-ConnectionGUID: kvootpGKSQqNbzedPdB1CA==
X-CSE-MsgGUID: PKRnPmdETtSCyoiKmpkgMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882480"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:52:54 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 07/17] drm/i915/dmc_wl: Extract intel_dmc_wl_reg_in_range()
Date: Wed,  6 Nov 2024 18:50:33 -0300
Message-ID: <20241106215231.103474-8-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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

