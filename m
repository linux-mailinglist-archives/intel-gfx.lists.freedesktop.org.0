Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 866C3A245A8
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2025 00:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F3710E255;
	Fri, 31 Jan 2025 23:28:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6xOjsGe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00D6510E226;
 Fri, 31 Jan 2025 23:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738366102; x=1769902102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tyKA+mJ3xDtHbaXurS5xGYx2CIA71OzcyEk9ADuY2Aw=;
 b=E6xOjsGeWMlCDl+ySbx1+fR/43wGoTRnoyWZaigWbHa9OTnXTlVdA+Rm
 A4wVmb19FahEufzH3jyX3bhg++Vv3bp/xU+HmDVolVzv0y42f/5h7yLKf
 ySUxZRrqM/497TLraFh4CEFhDvBdvg5qaIfleaL5JcnvZIDUjOCf2/eSH
 9fvueMJ9wYJ1hE6Fe3wTckYAbm8CfzE0F1iomTj0eG1hcMDW1bujzRCYz
 xR/vhjZFqiai8+rtY3pZOLST7bMfNrYBrzWA6gagzAtpUsmUSZfcRd14g
 uWj+mHHS1gqQ5vgeEfcbXldWULG4mDV7CerMFnvUs/HgBBVO3UdWlM4fB w==;
X-CSE-ConnectionGUID: KT7nLFIAQV62//y0TRJ1wQ==
X-CSE-MsgGUID: LkZ0fimFTIaUh3QRJM3HoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="41777808"
X-IronPort-AV: E=Sophos;i="6.13,249,1732608000"; d="scan'208";a="41777808"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 15:28:21 -0800
X-CSE-ConnectionGUID: 3z45uReYRdCkarBaHbIgIA==
X-CSE-MsgGUID: 7yZyNtM7TU+judsQU1yraw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,249,1732608000"; d="scan'208";a="110337398"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 15:28:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com
Subject: [PATCH v2] drm/i915/dp: Add intel_dp_dsc_bpp_step_x16() helper to get
 DSC BPP precision
Date: Sat,  1 Feb 2025 01:28:15 +0200
Message-Id: <20250131232815.2046237-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <ed109ed88a6ae3849871ec341cb5ab2088097dd3.1738327620.git.jani.nikula@intel.com>
References: <ed109ed88a6ae3849871ec341cb5ab2088097dd3.1738327620.git.jani.nikula@intel.com>
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

Add a platform independent helper for getting the supported DSC BPP step
for the link.

v2: Use fxp_q4_from_int(1) (Imre)

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fd36b1a00ce1..97c1199c4680 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2054,6 +2054,21 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
 		return 27;
 }
 
+/*
+ * Note: for pre-13 display you still need to check the validity of each step.
+ */
+static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
+{
+	struct intel_display *display = to_intel_display(connector);
+	u8 incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
+
+	if (DISPLAY_VER(display) < 14 || !incr)
+		return fxp_q4_from_int(1);
+
+	/* fxp q4 */
+	return fxp_q4_from_int(1) / incr;
+}
+
 /*
  * From a list of valid compressed bpps try different compressed bpp and find a
  * suitable link configuration that can support it.
@@ -2110,16 +2125,12 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 			      int timeslots)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
 	int output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 	u16 compressed_bppx16;
 	u8 bppx16_step;
 	int ret;
 
-	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
-		bppx16_step = 16;
-	else
-		bppx16_step = 16 / bppx16_incr;
+	bppx16_step = intel_dp_dsc_bpp_step_x16(connector);
 
 	/* Compressed BPP should be less than the Input DSC bpp */
 	dsc_max_bpp = min(dsc_max_bpp << 4, (output_bpp << 4) - bppx16_step);
-- 
2.39.5

