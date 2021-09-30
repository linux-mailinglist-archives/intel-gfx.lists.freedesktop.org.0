Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4AF41D7F4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 12:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B4306EB68;
	Thu, 30 Sep 2021 10:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5F206EB68
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 10:41:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212234869"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="212234869"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 03:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="618066621"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 30 Sep 2021 03:41:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 13:41:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Sep 2021 13:41:33 +0300
Message-Id: <20210930104133.30854-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210930104133.30854-1-ville.syrjala@linux.intel.com>
References: <20210930104133.30854-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Move
 WaPruneModeWithIncorrectHsyncOffset into intel_mode_valid()
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

Check for the zero length front porch already in intel_mode_valid()
so that we get the same validation for both get_modes() and setcrtc()/etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9ede0c5fbc44..2b76ec6ad5d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4208,13 +4208,6 @@ static int intel_crtc_compute_config(struct intel_crtc *crtc,
 		}
 	}
 
-	/* Cantiga+ cannot handle modes with a hsync front porch of 0.
-	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
-	 */
-	if ((DISPLAY_VER(dev_priv) > 4 || IS_G4X(dev_priv)) &&
-	    pipe_mode->crtc_hsync_start == pipe_mode->crtc_hdisplay)
-		return -EINVAL;
-
 	intel_crtc_compute_pixel_rate(pipe_config);
 
 	if (pipe_config->has_pch_encoder)
@@ -11323,6 +11316,14 @@ intel_mode_valid(struct drm_device *dev,
 			return MODE_V_ILLEGAL;
 	}
 
+	/*
+	 * Cantiga+ cannot handle modes with a hsync front porch of 0.
+	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
+	 */
+	if ((DISPLAY_VER(dev_priv) > 4 || IS_G4X(dev_priv)) &&
+	    mode->hsync_start == mode->hdisplay)
+		return MODE_H_ILLEGAL;
+
 	return MODE_OK;
 }
 
-- 
2.32.0

