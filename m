Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 212BF90058C
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7784310EC6D;
	Fri,  7 Jun 2024 13:49:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D+zdrqLe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E8410EC68
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768190; x=1749304190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7K8GFAx61x2RZbCsDB1JaNQVQNoZxjGyYgIsqkaDWr8=;
 b=D+zdrqLeltKMtLHwVp1wel3apabWr1FW/91TZBbvMpL2Kogz5q1belfP
 Z59o/EgQvd9/ifW/Lw9ZFHmA4AXQBDVsrX6uIqXTWu45JMrJsHX+m8USZ
 OMHKq+Km4HAW37gV/T4t642WWIG173J3/hekNDVQPibGUG+Z4+1rPi42Y
 DEcVqpqZPZYrU59f10YwWX7vVszeb2l6LiIHHYSeLAxyr9Thm9sLF+HVt
 foo9CjusbMqe/szeaXOEPdrGOQTm6uEnuT8xpcWgvQ3jeNkaxWfKDTsjt
 XLLMbs7W3UKtyJ028pFvnGxY+0dtIvbFzexYLc1WL64NGinQCOl8ClUSR g==;
X-CSE-ConnectionGUID: 7h5s3GZVR9y+4ZEjhyYW3w==
X-CSE-MsgGUID: YG4J4OSLRUesPrglOynr5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331665"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331665"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:50 -0700
X-CSE-ConnectionGUID: I5zx2oraTHO5HtAlbghCXA==
X-CSE-MsgGUID: tI2or0DmQsCG1TBrUepBjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43459042"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 12/13] drm/i915/psr: Check vblank against IO buffer wake time
 on Lunarlake
Date: Fri,  7 Jun 2024 16:49:16 +0300
Message-Id: <20240607134917.1327574-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

As Lunarlake doesn't have block count configuration vblank should be
checked against IO buffer wake time.

Bspec: 68920

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8ff0729df6a2..a7d030ffc4e0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1246,9 +1246,13 @@ static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
 static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 				       const struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int vblank = crtc_state->hw.adjusted_mode.crtc_vblank_end -
 		crtc_state->hw.adjusted_mode.crtc_vblank_start;
-	int wake_lines = psr2_block_count_lines(intel_dp);
+	int wake_lines;
+
+	wake_lines = DISPLAY_VER(i915) < 20 ? psr2_block_count_lines(intel_dp) :
+		intel_dp->alpm_parameters.io_wake_lines;
 
 	if (crtc_state->req_psr2_sdp_prior_scanline)
 		vblank -= 1;
-- 
2.34.1

