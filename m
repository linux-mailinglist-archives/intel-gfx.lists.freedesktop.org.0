Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3224CA5A382
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 19:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE98F10E4CD;
	Mon, 10 Mar 2025 18:59:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MSrPRVW0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDCBE10E4CA;
 Mon, 10 Mar 2025 18:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741633148; x=1773169148;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=mzqL6cVBPjiaBa2aBDJBih51UAFA2Nm2ZB0b84BMySw=;
 b=MSrPRVW0hJSF73T9hdjqFKAIWnF0lHu7EyU3Hu8FLz1281NE7A3kGZqJ
 9e96Ec/z6YsyVs/q9yPTvatVjfUvHt77jqjRIpNcUO/lOpOoaWCC/UUvR
 0LUj4smIFfrx/U4OL+r260y5q3ocN8eNnwk5k9OrMrNoIEELFBbqWgljy
 Sb49/iSTBkWFbB5u9NkauV4g9IzsBr0HUHNuc82qC4oZKXeG3B5Sra7co
 lsHV2kmk1hyew/3FKcARZJDEzRtV3Th2EQg2usA8fRObbwr1psmVFd/wp
 3ExHicsgt3S1vY38rQgeAU+J76DUQlmR6c7Tk+ZHZft7J4MHOOOzf639J A==;
X-CSE-ConnectionGUID: 0yEpXNS0SpWTJ6IDINJIpQ==
X-CSE-MsgGUID: 6w2dBe8/R+iyZA1sE03IqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42777543"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="42777543"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:59:08 -0700
X-CSE-ConnectionGUID: CvVJf+i1QnilM4C2nXfnCA==
X-CSE-MsgGUID: EG7gnP4aQxycicwsq5TkWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="120005952"
Received: from iherna2-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.31])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 11:59:06 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 10 Mar 2025 15:58:00 -0300
Subject: [PATCH v4 3/3] drm/i915/xe3lpd: Update bandwidth parameters
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250310-xe3lpd-bandwidth-update-v4-3-4191964b034d@intel.com>
References: <20250310-xe3lpd-bandwidth-update-v4-0-4191964b034d@intel.com>
In-Reply-To: <20250310-xe3lpd-bandwidth-update-v4-0-4191964b034d@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

Bandwidth parameters for Xe3_LPD have been updated with respect to
previous display releases. Encode them into xe3lpd_sa_info and use that
new struct.

Bspec: 68859
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 629b335a00e376cba619f84344459834b70316e4..b673911d2fe31c0ccb0f27767f174bcb715edf7e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -405,6 +405,13 @@ static const struct intel_sa_info xe2_hpd_sa_info = {
 	/* Other values not used by simplified algorithm */
 };
 
+static const struct intel_sa_info xe3lpd_sa_info = {
+	.deburst = 32,
+	.deprogbwlimit = 65, /* GB/s */
+	.displayrtids = 256,
+	.derating = 10,
+};
+
 static int icl_get_bw_info(struct intel_display *display, const struct intel_sa_info *sa)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -753,7 +760,9 @@ void intel_bw_init_hw(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
-	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
+	if (DISPLAY_VER(display) >= 30)
+		tgl_get_bw_info(display, &xe3lpd_sa_info);
+	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
 		xe2_hpd_get_bw_info(display, &xe2_hpd_sa_info);
 	else if (DISPLAY_VER(display) >= 14)
 		tgl_get_bw_info(display, &mtl_sa_info);

-- 
2.48.1

