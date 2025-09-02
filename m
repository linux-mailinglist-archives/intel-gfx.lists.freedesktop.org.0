Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C36DB3FDB9
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 13:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59EC210E66A;
	Tue,  2 Sep 2025 11:23:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELnFRUdE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 544D010E669;
 Tue,  2 Sep 2025 11:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756812217; x=1788348217;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U72bq+6/leyhmqAXtq6UfbezqaLFxeE4Dd2Xtn092cQ=;
 b=ELnFRUdEbcoatfF8taDUFN+hgQjt+4vK5edYLfOWKDges7iW7yoLAyYk
 w/X8lJbOf3Hx9LvXigqmmbeAq1pRyl1/A3b0zlZiJuxz0krmQT4JSupIv
 hcTPZzg3okMqxV0ZYzO1HWBWP+4575PwN+Lt4rKOpSQf3nM00CeSsIEOJ
 pDF/rFXwd3Q72J7eFMK1IJYog5d1ggUCDIzZJw4We5iTvwdHJQgW0moBf
 l/XVYSzgEAkhsarCEAdoiBJ+QHYmcHiJawUSgh1C1aXTTLGMKGFCYUNv/
 Vj68mPp4nVzXMABw50sbol36+enKsM0Vpgp+ktYyjunBidbB7e6ukyZFM w==;
X-CSE-ConnectionGUID: abqvYkQdSVWvDHMskPGI2Q==
X-CSE-MsgGUID: +JrqUTqvT5u6yq5Qc7kXDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="46661089"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="46661089"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 04:23:37 -0700
X-CSE-ConnectionGUID: 8gFm7uw/Srau9DceqyuDaw==
X-CSE-MsgGUID: CJ8Y28HgRjeTDD8H2NU5Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="171615690"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa008.fm.intel.com with ESMTP; 02 Sep 2025 04:23:36 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vinod.govindapillai@intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 1/1] drm/i915/display: Remove FBC modulo 4 restriction for ADL+
Date: Tue,  2 Sep 2025 17:05:38 +0530
Message-ID: <20250902113538.269338-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250902113538.269338-1-uma.shankar@intel.com>
References: <20250902113538.269338-1-uma.shankar@intel.com>
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

FBC restriction where FBC is disabled for non-modulo 4 plane size
(including plane size + yoffset) is fixed from ADL onwards in h/w.
WA:22010751166

Relax the restriction for the same.

v2: Update the macro for display version check (Vinod)

Credits-to: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index d4c5deff9cbe..9e097ed80bd1 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1550,14 +1550,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
 	 * and screen flicker.
 	 */
-	if (DISPLAY_VER(display) >= 9 &&
+	if (IS_DISPLAY_VER(display, 9, 12) &&
 	    plane_state->view.color_plane[0].y & 3) {
 		plane_state->no_fbc_reason = "plane start Y offset misaligned";
 		return 0;
 	}
 
 	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
-	if (DISPLAY_VER(display) >= 11 &&
+	if (IS_DISPLAY_VER(display, 9, 12) &&
 	    (plane_state->view.color_plane[0].y +
 	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
 		plane_state->no_fbc_reason = "plane end Y offset misaligned";
-- 
2.42.0

