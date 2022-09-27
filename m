Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 121515ECC1D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 20:25:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7964510E0C1;
	Tue, 27 Sep 2022 18:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91F410E0C1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 18:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664303102; x=1695839102;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pf26LhXSssSEWvbFhoQmUjhJWMmP/V/rt8fEsHqMc3o=;
 b=hEgUZ+HYi9m2g6A1wkii40NKZ3CapQBPLESyVFAXaRWCe0rJvD0mXjCW
 lYOWOA+bWVib63YUQBZBJmU2ycD/HlBEVSEXppC+IWpKzY/ikoN+siBsW
 45voxuqz1GRjKQXUwLTzxvJSpATheCCmbqtHnbDICYpS2C6bDr7c2VbT1
 5dKb6F9qt8IO0fg7h9AqyDLBl5v/0hGeyngd8DO+cLTJUzTY7qS1d5MgS
 hS+422Zy4IV5HK1sD3LkRC7wIXCMdRH002lMR1P0krvDluJvPd4nSnIr3
 CTvyRJCd7/nrqmgfJRgj+Eya15lhcR9ARIyf9Mk0g+1ksAxUJH8bK9i+p g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="327754048"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="327754048"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 11:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="599275819"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="599275819"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 27 Sep 2022 11:24:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Sep 2022 21:24:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 21:24:55 +0300
Message-Id: <20220927182455.3422-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Reject excessive dotclocks early
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

Make sure modes with crazy big dotclocks are rejected early,
so as to not cause problems for subsequent code via integer
overflows and whatnot.

These would eventually be rejected in intel_crtc_compute_pipe_mode()
but that is now too late as we do the clock computations a bit
earlier than that. And we don't want to just reorder the two since
we still want to check the final computed dotclock against the
hardware limit to make sure we didn't end up above the limit due
to rounding/etc.

Fixes: 0ff0e219d9b8 ("drm/i915: Compute clocks earlier")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eb8eaeb19881..04e8fa953bc7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8130,6 +8130,17 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	drm_helper_move_panel_connectors_to_head(&dev_priv->drm);
 }
 
+static int max_dotclock(struct drm_i915_private *i915)
+{
+	int max_dotclock = i915->max_dotclk_freq;
+
+	/* icl+ might use bigjoiner */
+	if (DISPLAY_VER(i915) >= 11)
+		max_dotclock *= 2;
+
+	return max_dotclock;
+}
+
 static enum drm_mode_status
 intel_mode_valid(struct drm_device *dev,
 		 const struct drm_display_mode *mode)
@@ -8167,6 +8178,13 @@ intel_mode_valid(struct drm_device *dev,
 			   DRM_MODE_FLAG_CLKDIV2))
 		return MODE_BAD;
 
+	/*
+	 * Reject clearly excessive dotclocks early to
+	 * avoid having to worry about huge integers later.
+	 */
+	if (mode->clock > max_dotclock(dev_priv))
+		return MODE_CLOCK_HIGH;
+
 	/* Transcoder timing limits */
 	if (DISPLAY_VER(dev_priv) >= 11) {
 		hdisplay_max = 16384;
-- 
2.35.1

