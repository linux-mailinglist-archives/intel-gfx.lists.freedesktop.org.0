Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF91C4CBB6
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 10:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2468110E52E;
	Tue, 11 Nov 2025 09:43:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UAtVgqFC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3517810E52E;
 Tue, 11 Nov 2025 09:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762854183; x=1794390183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eH6ACxcuhqMrEulucBWTiTQ41vGqyBcNC48F7slJg38=;
 b=UAtVgqFC9Ki7fgk12tg9eVCa4Vkeg4FFN8+NAbUKH+uAhzEcu7XBY/bh
 S63XtB2DHjYIQLt3KcR34YiGuQW+xTLH3y6Sm058YUg/a35GPEvQATZFU
 /XuzZUyd0TDITZo4hArmh+dcqdOEs3WTcvacIrqcb9U6acUp5GLEH71nY
 aOoF8/TBsju7x7XQ5PI1TE9jNa3bbrJjnspFqcCwXsdfa/zRSXvLT7Uxf
 Bt69uodqvkngk/TzVJTRooG4rDIcVFPMBkiaeemgyeZBeHYfUCic9T8cb
 NV+IqZmIPFh1k1+mtC0y2cbdhpMVrR6o6Di3EeVuf4QHkBxvnT3s9DVEJ Q==;
X-CSE-ConnectionGUID: UYXr3ssLRpqoIZYCmMtqFg==
X-CSE-MsgGUID: 7811zXdCQJGx8jB24Apbsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68773770"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="68773770"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 01:43:03 -0800
X-CSE-ConnectionGUID: asTvbQW7Tp+A/yTiSm55fw==
X-CSE-MsgGUID: qiZyAbD8Qwq6r65PUSVXuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="193175895"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 01:43:00 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/4] drm/i915/dp: Account for AS_SDP guardband only when
 enabled
Date: Tue, 11 Nov 2025 15:00:07 +0530
Message-ID: <20251111093007.3771409-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251111093007.3771409-1-ankit.k.nautiyal@intel.com>
References: <20251111093007.3771409-1-ankit.k.nautiyal@intel.com>
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

Currently the intel_dp_sdp_min_guardband() accounts for AS_SDP for all
platforms that support adaptive sync SDP even for configurations where
it cannot be enabled. Instead account for adaptive sync SDP guardband
only when it is enabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2852a1d9f157..bddf88059005 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7055,7 +7055,6 @@ int intel_dp_get_lines_for_sdp(const struct intel_crtc_state *crtc_state, u32 ty
 int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 			       bool assume_all_enabled)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
 	int sdp_guardband = 0;
 
 	if (assume_all_enabled ||
@@ -7070,8 +7069,8 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 		sdp_guardband = max(sdp_guardband,
 				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_PPS));
 
-	if ((assume_all_enabled && HAS_AS_SDP(display)) ||
-	    crtc_state->infoframes.enable & intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
+	if (crtc_state->infoframes.enable &
+	    intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC))
 		sdp_guardband = max(sdp_guardband,
 				    intel_dp_get_lines_for_sdp(crtc_state, DP_SDP_ADAPTIVE_SYNC));
 
-- 
2.45.2

