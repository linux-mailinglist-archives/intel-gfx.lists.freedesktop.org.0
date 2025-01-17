Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1225A1595B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 23:08:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5099910E31D;
	Fri, 17 Jan 2025 22:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dl/BA9Mm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B4310E31D;
 Fri, 17 Jan 2025 22:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737151689; x=1768687689;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=05saPPw5MyAtlTDel2BwiHsZYaMPSVeCokPHjGaKNyU=;
 b=dl/BA9Mmw0zJfvJtD2fCVrarS6ngbmg7tvkpD0lLarts1TFylgTcY+sH
 eRwcMia0bwl0qW+WP5u7v2xICSaRl7uOCEQOBz1ZJuHRufwTXxvpXtXpj
 Y7yWraMyyR8vVU/SM9RF7SKs5vjOL6KXRiIgWlWp96bzga/yQK7KkjeI+
 niUFKvimTtgXAlCBzrSfUpKoL2qa6tPn5R7/kk6TDI165po3ACUWwTjV8
 reHHolMVNCSJKMahtspo2bDyQVZLVwGHxcs42QKhwo4/HVyoRWVa7yLbj
 Lac0fLPjX1TKvdziqVZnCjwv8iWMdlQ/HEAhMJ0uf9TVRGut2jake2wYy w==;
X-CSE-ConnectionGUID: COF2MFKZTiilhHTZzfVntQ==
X-CSE-MsgGUID: L/iMs0nEQSu2yBn9/KtamA==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="48188783"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="48188783"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:09 -0800
X-CSE-ConnectionGUID: fBfkRex3TCOIUcUd8AgUHQ==
X-CSE-MsgGUID: 6Zu9tTSDRWea//dJR1ARsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="110915381"
Received: from inaky-mobl1.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.126])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:08:09 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/dmc_wl: Pass offset instead of reg to range
 table iterator
Date: Fri, 17 Jan 2025 19:06:52 -0300
Message-ID: <20250117220747.87927-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250117220747.87927-1-gustavo.sousa@intel.com>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
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

We will add another function that checks the offset in an upcoming
change. Instead of passing the reg variable to only extract the offset
later, let's extract the offset before so that we do not need to repeat
ourselves.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 43884740f8ea..330b43a72e08 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -227,11 +227,9 @@ static void __intel_dmc_wl_take(struct intel_display *display)
 	wl->taken = true;
 }
 
-static bool intel_dmc_wl_reg_in_range(i915_reg_t reg,
-				      const struct intel_dmc_wl_range ranges[])
+static bool intel_dmc_wl_offset_in_ranges(u32 offset,
+					  const struct intel_dmc_wl_range ranges[])
 {
-	u32 offset = i915_mmio_reg_offset(reg);
-
 	for (int i = 0; ranges[i].start; i++) {
 		u32 end = ranges[i].end ?: ranges[i].start;
 
@@ -247,6 +245,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
 				     u32 dc_state)
 {
 	const struct intel_dmc_wl_range *ranges;
+	u32 offset = i915_mmio_reg_offset(reg);
 
 	if (display->params.enable_dmc_wl == ENABLE_DMC_WL_ANY_REGISTER)
 		return true;
@@ -255,7 +254,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
 	 * Check that the offset is in one of the ranges for which
 	 * registers are powered off during DC states.
 	 */
-	if (intel_dmc_wl_reg_in_range(reg, powered_off_ranges))
+	if (intel_dmc_wl_offset_in_ranges(offset, powered_off_ranges))
 		return true;
 
 	/*
@@ -274,7 +273,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
 		ranges = NULL;
 	}
 
-	if (ranges && intel_dmc_wl_reg_in_range(reg, ranges))
+	if (ranges && intel_dmc_wl_offset_in_ranges(offset, ranges))
 		return true;
 
 	return false;
-- 
2.48.0

