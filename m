Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 562C37A02CD
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 13:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 611F510E562;
	Thu, 14 Sep 2023 11:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A836D10E264
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 11:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694691550; x=1726227550;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+oAFbXw82KVeiJ+IbuZPpnnsiwKba/2YNmyvLkkd9uo=;
 b=jRXMZapNJRCmS+z7iY9nKwg8mLGI5x/ThvjShbs3LcZobA+gLNusclnN
 fbHWKlKVE8S/elNzASvhcmZaGS9WyxRbOW1htKmwiSwjfl+MbroVsZbdm
 XJPjd/glPPb+8mlCbrFsNh0scaDR9BH4LOs8OUzDaW2xHlGwSfveqx2/L
 qWH8Oc5sZdljte1MwwcOgP3q3+wH3MP8IJlFaJp5l7xgM4f35uNhtg58+
 Q6t7U8ETF6TXSkDfVMy4rtV5xzZh+ntlMrcKLVTtMBVwhF3lZu1vEr3Qt
 znjb3UsV/j/qDJ7IMwrQ6HOpImuSMgar8XOVzRBsaItt2dHVBBfP1+kXI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="359186747"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="359186747"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 04:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="810028951"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="810028951"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga008.fm.intel.com with SMTP; 14 Sep 2023 04:38:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Sep 2023 14:38:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 14:38:51 +0300
Message-ID: <20230914113854.10008-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/fbc: Split plane stride checks
 per-platform
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

Carve up stride_is_valid() into per-platform variants to
make it easier to see what limits are actually being imposed.

TODO: maybe go for vfuncs later

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 68 ++++++++++++++++++------
 1 file changed, 51 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1b3358a0fbfb..4c4626c84666 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -848,6 +848,47 @@ void intel_fbc_cleanup(struct drm_i915_private *i915)
 	}
 }
 
+static bool i8xx_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int stride = intel_fbc_plane_stride(plane_state) *
+		fb->format->cpp[0];
+
+	return stride == 4096 || stride == 8192;
+}
+
+static bool i965_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int stride = intel_fbc_plane_stride(plane_state) *
+		fb->format->cpp[0];
+
+	return stride >= 2048 && stride <= 16384;
+}
+
+static bool g4x_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	return true;
+}
+
+static bool skl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int stride = intel_fbc_plane_stride(plane_state) *
+		fb->format->cpp[0];
+
+	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
+	if (fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
+		return false;
+
+	return true;
+}
+
+static bool icl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
+{
+	return true;
+}
+
 static bool stride_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
@@ -859,23 +900,16 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
 	if (drm_WARN_ON_ONCE(&i915->drm, (stride & (64 - 1)) != 0))
 		return false;
 
-	/* Below are the additional FBC restrictions. */
-	if (stride < 512)
-		return false;
-
-	if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
-		return stride == 4096 || stride == 8192;
-
-	if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) &&
-	    (stride < 2048 || stride > 16384))
-		return false;
-
-	/* Display WA #1105: skl,bxt,kbl,cfl,glk */
-	if ((DISPLAY_VER(i915) == 9 || IS_GEMINILAKE(i915)) &&
-	    fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
-		return false;
-
-	return true;
+	if (DISPLAY_VER(i915) >= 11)
+		return icl_fbc_stride_is_valid(plane_state);
+	else if (DISPLAY_VER(i915) >= 9)
+		return skl_fbc_stride_is_valid(plane_state);
+	else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
+		return g4x_fbc_stride_is_valid(plane_state);
+	else if (DISPLAY_VER(i915) == 4)
+		return i965_fbc_stride_is_valid(plane_state);
+	else
+		return i8xx_fbc_stride_is_valid(plane_state);
 }
 
 static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
-- 
2.41.0

