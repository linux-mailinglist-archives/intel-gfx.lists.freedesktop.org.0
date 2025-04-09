Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AE5A827BD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C122310E902;
	Wed,  9 Apr 2025 14:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NcfbBhgx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A79CA10E8FF;
 Wed,  9 Apr 2025 14:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744208768; x=1775744768;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=db2YqlgfjcvQqgdLNHXk2p7oEoQnDxTKp7iZDMe3iK4=;
 b=NcfbBhgxCAun+lBT6zP4Q57/Vk3BQdWpdHmes2ez3kN4ZMFB977iVJLU
 g23CkbQ1a1RD5vEYFkP8A6aMgwwEpo9WIf/XabM7kd5/71maqFDOt9Ydg
 udpmJZwdsbIdds6q6AdgPWsbRUYN0BtUfdWV4yK30bJfiUJavYR2PlBC+
 rK+FiKitTYhgF28ZoDoIH7bmdPzJfqhbHHMg6PGK5y7eWShICgsyLAee6
 EjvbqkczrSXX+s3FIin8y/YqtR+t+siRHhHj5W+VPHE+1Hjqt9TJk/AhL
 tmyGAua2Zy0LNBUnqmMrLtcUT+KalAF0qWKqawxY6IWH0NNIxb9/q3b0v w==;
X-CSE-ConnectionGUID: UPE232CHQpezzvz/aDOI0w==
X-CSE-MsgGUID: Q75zgLtHQZesn5yadaKTVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49347791"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="49347791"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:26:07 -0700
X-CSE-ConnectionGUID: erWN54itRc2GPVyYvvxG/Q==
X-CSE-MsgGUID: wZWRFkMbSEegmg/gUtHD0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="132732672"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 09 Apr 2025 07:26:06 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v8 6/9] drm/i915/lobf: Update lobf if any change in dependent
 parameters
Date: Wed,  9 Apr 2025 19:32:55 +0530
Message-Id: <20250409140258.785834-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250409140258.785834-1-animesh.manna@intel.com>
References: <20250409140258.785834-1-animesh.manna@intel.com>
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

For every commit the dependent condition for LOBF is checked
and accordingly update has_lobf flag which will be used
to update the ALPM_CTL register during commit.

v1: Initial version.
v2: Avoid reading h/w register without has_lobf check. [Jani]
v3: Update LOBF in post plane update instead of separate function. [Jouni]
v4:
- Add lobf disable print. [Jouni]
- Simplify condition check for enabling/disabling lobf. [Jouni]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 01949b90c0c3..4fe1914ff759 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -362,6 +362,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	if (crtc_state->has_lobf) {
 		alpm_ctl |= ALPM_CTL_LOBF_ENABLE;
 		drm_dbg_kms(display->drm, "Link off between frames (LOBF) enabled\n");
+	} else {
+		drm_dbg_kms(display->drm, "Link off between frames (LOBF) disabled\n");
 	}
 
 	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
@@ -382,9 +384,12 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_encoder *encoder;
 
-	if (!crtc_state->has_lobf && !crtc_state->has_psr)
+	if (crtc_state->has_lobf == old_crtc_state->has_lobf &&
+	    !crtc_state->has_psr)
 		return;
 
 	for_each_intel_encoder_mask(display->drm, encoder,
-- 
2.29.0

