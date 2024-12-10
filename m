Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D01C19EBB8C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4C1B10E5C2;
	Tue, 10 Dec 2024 21:10:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UA5fAGs2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8493310E5C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865016; x=1765401016;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/JXyHYP0PNfKdCUrp0sRJ+Iditlw+3VlZGhPoBPvD8M=;
 b=UA5fAGs2pFUCI+gCEnqKF95ii7lw80kWQ/78eaBTJoy1tRWq0uewZK9z
 z0ILKykY9qBYWbZVEX24Tf61CuakuPDyPZD6VTKd+TsaaX68IqrQ1JgyY
 8w9ARmDORbeb5UJv9w4HvNpu+GCoIHd4ccI1O3aa0k86tYoG3up2Hx9en
 5UFdKkFOKUQgR80CXjI64HDub0ZpsBL+VHvUDIidfYIc5kVHqMMr+xQeK
 YPTT0IS3Il0juiL9zkY4CwhUiN/OJbP+YCjyrLviQEZl7VxtwXSurXGSz
 MIH/m3FTDZh7Bigy/HkV0J3EP3bx4c9WVnHG7hFD0u59mIWbCOiRhDyqp w==;
X-CSE-ConnectionGUID: qFIAFTBJTXuuUKgkNkrYWQ==
X-CSE-MsgGUID: rWtAq+byTEysQDFGE/HUNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620166"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620166"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:15 -0800
X-CSE-ConnectionGUID: V6+UeIfDTw6f/v8o7aDi7w==
X-CSE-MsgGUID: dgqPbbQmT4uUspp3sNzIUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735043"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/18] drm/i915: Check vblank delay validity
Date: Tue, 10 Dec 2024 23:09:51 +0200
Message-ID: <20241210211007.5976-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Make sure we have enough vblank for the computed vblank delay.
Supposedly we'd reject things anyway later if this gets violated,
but it seems niver to do some basic sanity checks early just
so we can't be sure the basic relationship vblank_end > vblank_start
always holds.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++++++---
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ff907afa6451..22b5eacda0f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2633,17 +2633,40 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
 	return vblank_delay;
 }
 
-static int intel_crtc_compute_config(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc)
+static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,
+					   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	int vblank_delay, max_vblank_delay;
+
+	vblank_delay = intel_crtc_vblank_delay(crtc_state);
+	max_vblank_delay = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start - 1;
+
+	if (vblank_delay > max_vblank_delay) {
+		drm_dbg_kms(display->drm, "[CRTC:%d:%s] vblank delay (%d) exceeds max (%d)\n",
+			    crtc->base.base.id, crtc->base.name, vblank_delay, max_vblank_delay);
+		return -EINVAL;
+	}
+
+	adjusted_mode->crtc_vblank_start += vblank_delay;
+
+	return 0;
+}
+
+static int intel_crtc_compute_config(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
 
-	adjusted_mode->crtc_vblank_start +=
-		intel_crtc_vblank_delay(crtc_state);
+	ret = intel_crtc_compute_vblank_delay(state, crtc);
+	if (ret)
+		return ret;
 
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
-- 
2.45.2

