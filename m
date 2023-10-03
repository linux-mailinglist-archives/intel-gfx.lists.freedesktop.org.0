Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A1E7B71ED
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 21:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C482B10E07F;
	Tue,  3 Oct 2023 19:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C810E10E312
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 19:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696362195; x=1727898195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fTLrvXJZnAXLB37I/J8RmIHwDpmtbfQ+6jPMDGdaIko=;
 b=jiZqKX4K7SAVagQcm1e+I49rSCtT5KV2mj2i6bd24/k5AfnaEEYeRkID
 fQf65yV4ahFglYbuXZ3I2I251YhJpfgGxC2D5pI57EVNOUv2Ef9Dqhmnu
 A+QOvu/pcOGk9HeYraJC3S9RIe9Ao04oT/WPYdXa5ER+07PMlPMS72iCk
 VVWxjFbav6qu7tnk/covUdC3PTxtzvxHKAIfT1KhpxWd41w06bfLi3QqV
 HbLmr8NBg4vxOfbh16LkwQOOPJn8K+ZgJEOe1so49seZESXtf8cG1qMOz
 pOb/GhmBDpBb91lSrTvkcDNy7L1sJgqbRo0uVJC2UjeTIAkLUolLxaU2I Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380238219"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380238219"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 12:43:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="894623242"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="894623242"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 03 Oct 2023 12:41:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 22:43:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Oct 2023 22:42:54 +0300
Message-ID: <20231003194256.28569-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
References: <20231003194256.28569-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915/fbc: Split plane rotation
 checks per-platform
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

Carve up rotation_is_valid() into per-platform variants to
make it easier to see what limits are actually being imposed.

TODO: maybe go for vfuncs later

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 30 +++++++++++++++++++-----
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ce6eefaba501..8999ef3f0972 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -945,22 +945,40 @@ static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 	}
 }
 
-static bool rotation_is_valid(const struct intel_plane_state *plane_state)
+static bool i8xx_fbc_rotation_is_valid(const struct intel_plane_state *plane_state)
+{
+	return plane_state->hw.rotation == DRM_MODE_ROTATE_0;
+}
+
+static bool g4x_fbc_rotation_is_valid(const struct intel_plane_state *plane_state)
+{
+	return true;
+}
+
+static bool skl_fbc_rotation_is_valid(const struct intel_plane_state *plane_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 	unsigned int rotation = plane_state->hw.rotation;
 
-	if (DISPLAY_VER(i915) >= 9 && fb->format->format == DRM_FORMAT_RGB565 &&
+	if (fb->format->format == DRM_FORMAT_RGB565 &&
 	    drm_rotation_90_or_270(rotation))
 		return false;
-	else if (DISPLAY_VER(i915) <= 4 && !IS_G4X(i915) &&
-		 rotation != DRM_MODE_ROTATE_0)
-		return false;
 
 	return true;
 }
 
+static bool rotation_is_valid(const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
+
+	if (DISPLAY_VER(i915) >= 9)
+		return skl_fbc_rotation_is_valid(plane_state);
+	else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
+		return g4x_fbc_rotation_is_valid(plane_state);
+	else
+		return i8xx_fbc_rotation_is_valid(plane_state);
+}
+
 /*
  * For some reason, the hardware tracking starts looking at whatever we
  * programmed as the display plane base address register. It does not look at
-- 
2.41.0

