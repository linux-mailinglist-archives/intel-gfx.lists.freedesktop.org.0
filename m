Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C016FB2D2FB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 06:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802B510E237;
	Wed, 20 Aug 2025 04:32:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MgXG+2b0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DEB110E163;
 Wed, 20 Aug 2025 04:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755664333; x=1787200333;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XUo8UA/ajbgi1ZMj3a4mpZ1TjVGFVd1VsfnMJHfbtGo=;
 b=MgXG+2b0wCIb84Na1N8pMAn0SJcfJpK1Y8ejd8zgDjiI70abIN4bLvrE
 Nkdr0VdQ+pSZ+ussMEhXOSFTJ7ZcaOFMT74WViZGrJVeSVh4e6lxJQX45
 f8Hni5Qk2bx0gf/F2L5o2Nay9pbCPKdu8DdZ0wNcrLomLNJ3vUCwxT//j
 3qtzqEz6u1AyW9b+UZNrITYaWy+oqJz7UOLUTvH+rdHUM/Bx1ok8zBfZ1
 0z+cjjZ5JBxQA0hFHdo+v+t4lnDQEpWvjinnmMYPz201DG1KiRC4p69Fg
 DLzBIt2BzPkhq8TRVfhQnkar6s/DQvg3ckm1+C/B3tqgm3NdpQzT3ixMs g==;
X-CSE-ConnectionGUID: +iB/gucPQD+3ziP9e2Q6JA==
X-CSE-MsgGUID: +eNxRtAaRkq1p4BvMcnhcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="75503472"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="75503472"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 21:32:13 -0700
X-CSE-ConnectionGUID: YeMPREUpSLiTs5nNiUhe6w==
X-CSE-MsgGUID: JYuBCxDBQmaAa/ddo1S8Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168366889"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa008.fm.intel.com with ESMTP; 19 Aug 2025 21:32:11 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vinod.govindapillai@intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH] drm/i915/display: Remove FBC modulo 4 restriction for ADL+
Date: Wed, 20 Aug 2025 10:14:16 +0530
Message-ID: <20250820044416.4048117-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
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

Credits-to: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index d4c5deff9cbe..bf257467a635 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1550,14 +1550,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
 	 * and screen flicker.
 	 */
-	if (DISPLAY_VER(display) >= 9 &&
+	if (DISPLAY_VER(display) >= 9 && DISPLAY_VER(display) <= 12 &&
 	    plane_state->view.color_plane[0].y & 3) {
 		plane_state->no_fbc_reason = "plane start Y offset misaligned";
 		return 0;
 	}
 
 	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
-	if (DISPLAY_VER(display) >= 11 &&
+	if ((DISPLAY_VER(display) == 11 || DISPLAY_VER(display) == 12) &&
 	    (plane_state->view.color_plane[0].y +
 	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
 		plane_state->no_fbc_reason = "plane end Y offset misaligned";
-- 
2.42.0

