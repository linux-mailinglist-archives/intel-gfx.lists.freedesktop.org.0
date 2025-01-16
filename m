Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BD5A142E8
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:16:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D2D10E2D5;
	Thu, 16 Jan 2025 20:16:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ea6wlLzm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4EF910E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 20:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737058615; x=1768594615;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=h4xNC07k/4Qw+q+yi+hVVRL49QPQXq6IiKTUNeCk1DQ=;
 b=Ea6wlLzm8tJgg2HDpa4FQRSh50AAkBqzZlvJg6NGGAZA74UHtyq+hd58
 ojHiXtGv44Ym8oegKZ5gvxcl0wB+/Oj6wY+OholCWVEWCm7kImyEUn2hd
 nB75xgi2qZ/Ox45m9QwwwNi1ZkkMIMZrP8STh5Os8u9uCGFemts9Xd0Gb
 ZJSvF3JaBjU/UhFRyGQu/u7k/N7Sop8xtrSLme0gRalMrfZ4cza41Xmi9
 IZnPlfE9m6VPzOoJMMG+Ez1zDVkIkJo/A458VX3uU0UGjaLo+NHVCOWd2
 G9wkCWu6rClY3VRkI8OFRYmfXpta0mT2zJlSMxvZ9rxrLI1pUkwoeaAMI A==;
X-CSE-ConnectionGUID: kcnydTNuRgeHtSDq0wzkQw==
X-CSE-MsgGUID: ZWf7oWyWTsGKaQnsrGBHpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40279242"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="40279242"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:16:55 -0800
X-CSE-ConnectionGUID: UMFvC5zoTBe4Tr1tx5Lg5Q==
X-CSE-MsgGUID: aLbGLXOXQ0a+rQVk1obHnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105743493"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 12:16:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 22:16:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>
Subject: [PATCH 5/8] drm/i915: Extract lrr_params_changed()
Date: Thu, 16 Jan 2025 22:16:34 +0200
Message-ID: <20250116201637.22486-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
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

Pull the "do we actually need a LRR update?" checks into a small
helper for clarity.

Cc: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fa398d7d1baa..9b42d980ed7e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6081,6 +6081,13 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
 	return 0;
 }
 
+static bool lrr_params_changed(const struct drm_display_mode *old_adjusted_mode,
+			       const struct drm_display_mode *new_adjusted_mode)
+{
+	return old_adjusted_mode->crtc_vblank_end != new_adjusted_mode->crtc_vblank_end ||
+		old_adjusted_mode->crtc_vtotal != new_adjusted_mode->crtc_vtotal;
+}
+
 static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_state,
 				     struct intel_crtc_state *new_crtc_state)
 {
@@ -6101,8 +6108,8 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 				   &new_crtc_state->dp_m_n))
 		new_crtc_state->update_m_n = false;
 
-	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
-	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end == new_crtc_state->hw.adjusted_mode.crtc_vblank_end))
+	if (!lrr_params_changed(&old_crtc_state->hw.adjusted_mode,
+				&new_crtc_state->hw.adjusted_mode))
 		new_crtc_state->update_lrr = false;
 
 	if (intel_crtc_needs_modeset(new_crtc_state))
-- 
2.45.2

