Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DA5C413C9
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 19:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A7BC10EB7C;
	Fri,  7 Nov 2025 18:12:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLFAXkUM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59DE7899B3;
 Fri,  7 Nov 2025 18:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762539119; x=1794075119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6gNM9v2OLY1JJr34/3FWZAXDRDaoS6jZg1nGktTmBR8=;
 b=FLFAXkUMKGed+qS1g201G1MHQ+3UldemOXo2bXhznql4iJUZl+hiwK0p
 fZgROm4ty9ACcbnwSc5yz5C/hpvFb18E8Avgy5tdUUvMi+DqbQ2TgWI8T
 yUCPSP8rdcNIraj9jb0ySBKJGw9lME6YhBfh8is5TcsctzFvL79MJbEAX
 YcHwWavL+7LNmRgkeITe61hE+yKfMPMIqFQ13N+CoNmwifztuVRMTQAnA
 6gXeF6v0xq6lSB+Ak1iyHKpgxFhoNU/ib6fGPKHSXmFI+YE9I/auTsle1
 ODgzr04b8AMRXvURW7+vFHgpmjpakdzzbBoZf6XgjVsxRQdsyxxNX/xXA w==;
X-CSE-ConnectionGUID: Dd00bOXMS/iMbn1/5G2ePA==
X-CSE-MsgGUID: pI4ZAc24T0KCRyfIjmXI/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="87323773"
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="87323773"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:59 -0800
X-CSE-ConnectionGUID: rtSvdvZGQP+Za4iMNG8/cw==
X-CSE-MsgGUID: q0ZwtEiSQSi6R3UX/Ta5Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,287,1754982000"; d="scan'208";a="188262286"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.106])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 10:11:58 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 7/9] drm/i915: Use mode_config->cursor_width for cursor DDB
 allocation
Date: Fri,  7 Nov 2025 20:11:24 +0200
Message-ID: <20251107181126.5743-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the hardcoded 256 with mode_config->cursor_width
when doing the cursor DDB allocation. Currently 256 is correct
for all SKL+, but this migth change in the future. One less place
to change should that happen.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 16d74ab3a2b5..54e9e0be019d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -635,6 +635,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_plane *plane = to_intel_plane(crtc_state->uapi.crtc->cursor);
+	const struct drm_mode_config *mode_config = &display->drm->mode_config;
 	const struct drm_format_info *info;
 	struct skl_wm_level wm = {};
 	int ret, min_ddb_alloc = 0;
@@ -648,7 +649,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 
 	info  = drm_get_format_info(display->drm, format, modifier);
 
-	ret = skl_compute_wm_params(crtc_state, 256,
+	ret = skl_compute_wm_params(crtc_state, mode_config->cursor_width,
 				    info, modifier, DRM_MODE_ROTATE_0,
 				    crtc_state->pixel_rate, &wp, 0, 0);
 	drm_WARN_ON(display->drm, ret);
-- 
2.49.1

