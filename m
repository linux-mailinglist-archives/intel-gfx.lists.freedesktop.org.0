Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F027B4375D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 11:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B89BD10E9D4;
	Thu,  4 Sep 2025 09:41:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IMhdAK10";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC4410E9D4;
 Thu,  4 Sep 2025 09:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756978901; x=1788514901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KM5JUgXjh9qZncs/Ax03k5QR18CGLKTHGnGo3WY8tBs=;
 b=IMhdAK1000w/IGZX9mvl8ncFSJB4BbZLU67kNLtcINXv8RpQKn6fXMsl
 fRa5zj8VZFbbxtOYcIwMu+7qoOxWb4YjnI4IrBkG/Bksc9Scdg/UGtkhJ
 6Kdna49p87P3RtaHRm9new8Xw7iPCdv+lJ1lgNcJ6aG+2YG6tMrFPm4WR
 kRRZqbNeArXtVJmpO5Z10ZLupM3qQKr/CFUMiCrbls4Ww5odkapWV7I4p
 cIophbq7BxYwDyYfbkQd999rEr4HKBBE0QsJNbwsPZFs4ROsclHMNsiAS
 hdAmSXu3xbgONok1XpAbCY5h6WuGJORlu6e1UYAgY7zV4Nz8LXLxN88Fz g==;
X-CSE-ConnectionGUID: PxyWeqFQS42TTOXTy+Ho2Q==
X-CSE-MsgGUID: ZIO0kSuMSwGOXQr9PhoYbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="58524321"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="58524321"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 02:41:41 -0700
X-CSE-ConnectionGUID: yLrU9FCWQTqHF4oySo4u6A==
X-CSE-MsgGUID: MSOJi331Q2KdiygW8gR6Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="202779822"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 04 Sep 2025 02:41:36 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, vinod.govindapillai@intel.com,
 jonathan.cavitt@intel.com, Uma Shankar <uma.shankar@intel.com>,
 Vidya Srinivas <vidya.srinivas@intel.com>
Subject: [v4 1/1] drm/i915/display: Remove FBC modulo 4 restriction for ADL-P+
Date: Thu,  4 Sep 2025 15:23:38 +0530
Message-ID: <20250904095338.300813-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250904095338.300813-1-uma.shankar@intel.com>
References: <20250904095338.300813-1-uma.shankar@intel.com>
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

WA:22010751166 does not apply past display version 12.  Or, in
other words, the FBC restriction where FBC is disabled for
non-modulo 4 plane sizes (including plane size + yoffset) is fixed
from display version 13 and onwards. Relax the restriction for the same.

v4: Dropped redundant commit message

v3: Update comments for clarity (Jonathan Cavitt)

v2: Update the macro for display version check (Vinod)

Suggested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
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

