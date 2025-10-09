Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 535FFBC7D26
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EDA210E96E;
	Thu,  9 Oct 2025 07:55:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bI7eL70d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 882D410E96F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 07:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759996550; x=1791532550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EEWXA81q4eF3WWZ9huTY+Hl3WPSLZnRsAnGil0CuuRw=;
 b=bI7eL70d/B6Ib9D7dsImwWK3GCnsNBg8O2n/qPDLrHNKX+7zYuE7J8df
 vF5qSTmxyBSBv3n1OMnrxjVsc5FvBPye24/F1CX8N6bwrsOix8o/u3rp2
 iUxS5zhWiyAlr9eDJ9/kbnqkqv+Y3PSLWL5C+StIGaSUvIC2SSAryAOsD
 asR/xhzwEnzB2570x72YNtrRcPMU7Fsd9RChQ4S1gmifP0IUgW2spEfx4
 vlDyojeqvmCGFtco9+EgnJoKGwqBGJoaoYcahLSdd0bLd17B4Zm8fKQwi
 7qBVNbdMxumca8Cg4AyQemavL+lQ7U6lAgzLhZr48ZtRN9cOrTDfl907S Q==;
X-CSE-ConnectionGUID: afV/tUiyQpKoHlYjTfitrg==
X-CSE-MsgGUID: /Tdu4uC4Qo65natgi4/tJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72880744"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72880744"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:47 -0700
X-CSE-ConnectionGUID: JXWsDNjDT6+5eHhr+pNQbA==
X-CSE-MsgGUID: jfNals/5QjGWFg+BZbgS/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="211600968"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.0])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:45 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 5/7] drm/i915/wm: convert tiling mode check in
 slk_compute_plane_wm() to a switch-case
Date: Thu,  9 Oct 2025 10:54:36 +0300
Message-ID: <20251009075517.837587-6-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009075517.837587-1-luciano.coelho@intel.com>
References: <20251009075517.837587-1-luciano.coelho@intel.com>
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

Make the code a bit clearer by using a switch-case to check the tiling
mode in skl_compute_plane_wm(), because all the possible states and
the calculations they use are explicitly handled.

v2: - Remove useless comment (Gustavo)
    - Move the default case above linear as a fallthrough (Gustavo)

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f3af372767d0..35a73ddc282b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1833,7 +1833,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 		 */
 		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
 		     wp->dbuf_block_size < 1) &&
-		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
+		    (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
 			selected_result = method2;
 		} else if (latency >= wp->linetime_us) {
 			if (DISPLAY_VER(display) == 9)
@@ -1841,8 +1841,11 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 			else
 				selected_result = method2;
 		} else {
+			/* everything else with linear/X-tiled uses method 1 */
 			selected_result = method1;
 		}
+		break;
+
 	}
 
 	blocks = fixed16_to_u32_round_up(selected_result);
-- 
2.51.0

