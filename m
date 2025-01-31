Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0680A23DED
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:50:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C72B10EA95;
	Fri, 31 Jan 2025 12:50:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IWzj2Nad";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6321C10EA9A;
 Fri, 31 Jan 2025 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327853; x=1769863853;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NShLCEeP7+JUyTgdizfWhPDIxhpz53s75/ZHdLwtaDE=;
 b=IWzj2NadTgwlvcXJ0f003vJooFRNkIrD2HmC48XT0RV6feIJDhPW84xE
 HnJVRLSECGDvfsJRR2NuWtcuASvHmmvfQRLJfiAkOrJQ3UbSNSskqoRDn
 q9dJ0Z1caGRDzgMUe4JjeKVPkHpR6S8azILPJzC9Bxd1/Qmu/S48CT8Ng
 VYnMQ9DYmD3+g6YE8SNzxmbMCEEtAvf1vegdCY+imD4B9fAbZNRz9MTwp
 gHtasalM51p0bxv5E52k0fxefjeKyTGII97PYwkPZCr9oOhplVdyaiPve
 n6LAloodzAM/00lnY7a/QGbRt5d2ijnhM0khfqU9b7A9t3xPLDes1FEit Q==;
X-CSE-ConnectionGUID: 20s74/KJTZOLadKJalGMhw==
X-CSE-MsgGUID: vgFfRefVSQqze90PBo8oWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38599519"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38599519"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:53 -0800
X-CSE-ConnectionGUID: JloUgm7XQxmgz96g+5B++A==
X-CSE-MsgGUID: ejIOGlAASE6RVBPddkNQgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="114617047"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 07/14] drm/i915/dp: Move force_dsc_fractional_bpp_en check to
 intel_dp_dsc_valid_bpp()
Date: Fri, 31 Jan 2025 14:50:00 +0200
Message-Id: <2d8cdfef422dc2229d3ead2201bff4a321cbbdd3.1738327620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738327620.git.jani.nikula@intel.com>
References: <cover.1738327620.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add the fractional DSC BPP force check to intel_dp_dsc_valid_bpp(), and
use that in xelpd_dsc_compute_link_config(). This is another step closer
towards unifying the platform specific functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ac67f2d2f86a..c7de9efcd740 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2075,8 +2075,12 @@ static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
 	struct intel_display *display = to_intel_display(intel_dp);
 	int i;
 
-	if (DISPLAY_VER(display) >= 13)
+	if (DISPLAY_VER(display) >= 13) {
+		if (intel_dp->force_dsc_fractional_bpp_en && !fxp_q4_to_frac(bpp_x16))
+			return false;
+
 		return true;
+	}
 
 	if (fxp_q4_to_frac(bpp_x16))
 		return false;
@@ -2143,9 +2147,9 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 	int ret;
 
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
-		if (intel_dp->force_dsc_fractional_bpp_en &&
-		    !fxp_q4_to_frac(bpp_x16))
+		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
 			continue;
+
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
-- 
2.39.5

