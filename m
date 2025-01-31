Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B40A23DEA
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 13:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED8910EA98;
	Fri, 31 Jan 2025 12:50:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PoUiEhCl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF4710E086;
 Fri, 31 Jan 2025 12:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738327847; x=1769863847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W0P/57zD09WfQt+SpgMpybE2uzmRb8K+vxX95crhEVU=;
 b=PoUiEhCl9JVrl7BBsym3M0t8FnMjfwE0wONU5R+e6w9YxHkhIXlZHeJb
 lyy3pQ2lJyBDTsiMv6ap0MaBrWacAnMOrOeOSI4cr322/GI2N1wZ5Rbbv
 cAtr+z1z2nDCrOFlfQ+8jIf6Np66XC7OTDA1bAZaKOdCjACm05CQk4Pfg
 mSJknkIaKRYBJClwu9KvucYYbgrPzNu6pdaICBvJUbMj/PCrFIIyy9F9J
 MYz2aJfDBA3Yqjzi1Hnix0TiqlRcYyWdUyJGyqEBcd0QqsoyByH8AT/4z
 CVgyv/rPh2BIg2p8jLqHcNOKqzvXyOBTH/GpRxCeKcLPa40rjIKVjgj3e g==;
X-CSE-ConnectionGUID: U2ydsedtTweL0B2oS11BsQ==
X-CSE-MsgGUID: 3LmCNWwoQUKLw11YEIIS7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="38798469"
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="38798469"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:28 -0800
X-CSE-ConnectionGUID: PzWT4ONfRl6JfFkb8vssXA==
X-CSE-MsgGUID: jJjjFQ/VTS69OP3Z+wqFZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,248,1732608000"; d="scan'208";a="110203319"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 04:50:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 02/14] drm/i915/dp: Add intel_dp_dsc_bpp_step_x16() helper to
 get DSC BPP precision
Date: Fri, 31 Jan 2025 14:49:55 +0200
Message-Id: <ed109ed88a6ae3849871ec341cb5ab2088097dd3.1738327620.git.jani.nikula@intel.com>
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

Add a platform independent helper for getting the supported DSC BPP step
for the link.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ecf192262eb9..a7a5bb2075da 100644
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
+	return 16 / incr;
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

