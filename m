Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5D09068C9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2024 11:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E93410E9D4;
	Thu, 13 Jun 2024 09:32:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZZvvphRx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E8110E9BB
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2024 09:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718271174; x=1749807174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OxXAHVaYBrsBeB1/29PcsD6oCM9747UnoWmNIZQlcbE=;
 b=ZZvvphRxQ1A5N0kfKLl5xVuv7Yncr+FTUdu8qgRnzoPENky7apyda/jt
 rLXpSQrh2W5l8g415ZDhUDEAeKxoM7Gg8rsohyurEd6wleNg4NY9Sg2Ah
 kOf2Np8mXStSwbIzoZ3KQ5yE4ust17dspJYBvlWRKZHvWsKTZnNl4aCjD
 YrNI3g4mbJyeXABw7UA1CfiD/XEn0O3LT99+IXcVCClzrpiBR3mitfx/3
 I62H35E1PE/az5X1ZSCLf5T2+eCqPQVjRVMdT3uwwiHhIWk/T1UmUP+QU
 eK+wqWq2a+KtTGMjJv2XujGibLrvAYv/RhNztY5Zb7hoeOMrSuhehUe2y Q==;
X-CSE-ConnectionGUID: 57IwcAhfRremy+UsCJli5A==
X-CSE-MsgGUID: akJUwQEGRZ6CxqSQMHgiVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11101"; a="14802474"
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="14802474"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:54 -0700
X-CSE-ConnectionGUID: 8Cp/SaiCS2G9WnMLoQ73CA==
X-CSE-MsgGUID: NXEObt2fR1m7vbxYSEYGng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,234,1712646000"; d="scan'208";a="44523326"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.31])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2024 02:32:53 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v8 02/20] drm/i915/display: Wa 16021440873 is writing wrong
 register
Date: Thu, 13 Jun 2024 12:32:21 +0300
Message-Id: <20240613093239.1293629-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240613093239.1293629-1-jouni.hogander@intel.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
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

Wa 16021440873 is writing wrong register. Instead of PIPE_SRCSZ_ERLY_TPT
write CURPOS_ERLY_TPT.

v2: use right offset as well

Fixes: 29cdef8539c3 ("drm/i915/display: Implement Wa_16021440873")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_psr.c    | 12 +++---------
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index cea0cfed569d..6ea76687dd14 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -524,8 +524,8 @@ static void wa_16021440873(struct intel_plane *plane,
 
 	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
 
-	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
-		       PIPESRC_HEIGHT(et_y_position));
+	intel_de_write(dev_priv, CURPOS_ERLY_TPT(dev_priv, pipe),
+		       CURSOR_POS_Y(et_y_position));
 }
 
 static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 66ab8abd0a04..44144dcfb1a3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2164,19 +2164,14 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	crtc_state->psr2_man_track_ctl = val;
 }
 
-static u32
-psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
-			       bool full_update, bool cursor_in_su_area)
+static u32 psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
+					  bool full_update)
 {
 	int width, height;
 
 	if (!crtc_state->enable_psr2_su_region_et || full_update)
 		return 0;
 
-	if (!cursor_in_su_area)
-		return PIPESRC_WIDTH(0) |
-			PIPESRC_HEIGHT(drm_rect_height(&crtc_state->pipe_src));
-
 	width = drm_rect_width(&crtc_state->psr2_su_area);
 	height = drm_rect_height(&crtc_state->psr2_su_area);
 
@@ -2485,8 +2480,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 skip_sel_fetch_set_loop:
 	psr2_man_trk_ctl_calc(crtc_state, full_update);
 	crtc_state->pipe_srcsz_early_tpt =
-		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update,
-					       cursor_in_su_area);
+		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
 	return 0;
 }
 
-- 
2.34.1

