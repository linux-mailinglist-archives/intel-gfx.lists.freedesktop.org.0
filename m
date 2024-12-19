Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C85AB9F7C02
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 14:08:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72D2910ED0A;
	Thu, 19 Dec 2024 13:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eByqPZZJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81F5110ECE9
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 13:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734613715; x=1766149715;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=E33fMEt6qw8rvt+fjt0wQ5/VpbS2nOUejReI7bEW4CE=;
 b=eByqPZZJApsSKlHKxj8QPoDXyV2Nt5bzuxiB1TME0KDgqXhQkhvDFEbD
 xdKLToESYGnYtaQYRyH8GsaWzGz0hA4+BilyzB6518ncC+gN6Wt26G+2e
 zKWApY8j+acu7XLp8reakrYBJ1wbTfECkWb2IGf28LzOg96kftx4KMJ4/
 TMGOAJ7StIozL4694M/pMDJCewRysYYNPMDshapgVdt0ujjyWyfzmONZs
 9c8NuvBy3K0QYLQTWvJ1gx0JWf7bqpDrY2ujFITo7pV91AZb95O7PQhiw
 ZfEwnZHImNrApUt4qe+M3LFycOJFHgyEjhKyo9ft8HtfPaoonNaY1ldaV w==;
X-CSE-ConnectionGUID: 2gHMu7KKQK+fSpygcvpFQg==
X-CSE-MsgGUID: VzK2o+ZFRkicl+ebtYew+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38798126"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="38798126"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:08:35 -0800
X-CSE-ConnectionGUID: jNOcmD2IQc29Gd2HSB639w==
X-CSE-MsgGUID: YbK35H6oSVuPIVhbwy144A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98403294"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Dec 2024 05:08:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2024 15:08:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/8] drm/i915/scaler: Extract skl_scaler_max_src_size()
Date: Thu, 19 Dec 2024 15:08:21 +0200
Message-ID: <20241219130827.22830-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
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

The SKL_MAX_SRC_* defines just make things hard to read.
Get rid of them and introduce an easy to read function
in their place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 37 +++++++++++++----------
 1 file changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 8b5b7993a492..d6bef6578867 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -76,22 +76,14 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
 	return ((phase >> 2) & PS_PHASE_MASK) | trip;
 }
 
-#define SKL_MAX_SRC_W 4096
-#define SKL_MAX_SRC_H 4096
 #define SKL_MIN_DST_W 8
 #define SKL_MAX_DST_W 4096
 #define SKL_MIN_DST_H 8
 #define SKL_MAX_DST_H 4096
-#define ICL_MAX_SRC_W 5120
-#define ICL_MAX_SRC_H 4096
 #define ICL_MAX_DST_W 5120
 #define ICL_MAX_DST_H 4096
-#define TGL_MAX_SRC_W 5120
-#define TGL_MAX_SRC_H 8192
 #define TGL_MAX_DST_W 8192
 #define TGL_MAX_DST_H 8192
-#define MTL_MAX_SRC_W 4096
-#define MTL_MAX_SRC_H 8192
 #define MTL_MAX_DST_W 8192
 #define MTL_MAX_DST_H 8192
 
@@ -107,6 +99,26 @@ static void skl_scaler_min_src_size(const struct drm_format_info *format,
 	}
 }
 
+static void skl_scaler_max_src_size(struct intel_crtc *crtc,
+				    int *max_w, int *max_h)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (DISPLAY_VER(display) >= 14) {
+		*max_w = 4096;
+		*max_h = 8192;
+	} else if (DISPLAY_VER(display) >= 12) {
+		*max_w = 5120;
+		*max_h = 8192;
+	} else if (DISPLAY_VER(display) == 11) {
+		*max_w = 5120;
+		*max_h = 4096;
+	} else {
+		*max_w = 4096;
+		*max_h = 4096;
+	}
+}
+
 static int
 skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 		  unsigned int scaler_user, int *scaler_id,
@@ -172,28 +184,21 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	}
 
 	skl_scaler_min_src_size(format, modifier, &min_src_w, &min_src_h);
+	skl_scaler_max_src_size(crtc, &max_src_w, &max_src_h);
 
 	min_dst_w = SKL_MIN_DST_W;
 	min_dst_h = SKL_MIN_DST_H;
 
 	if (DISPLAY_VER(display) < 11) {
-		max_src_w = SKL_MAX_SRC_W;
-		max_src_h = SKL_MAX_SRC_H;
 		max_dst_w = SKL_MAX_DST_W;
 		max_dst_h = SKL_MAX_DST_H;
 	} else if (DISPLAY_VER(display) < 12) {
-		max_src_w = ICL_MAX_SRC_W;
-		max_src_h = ICL_MAX_SRC_H;
 		max_dst_w = ICL_MAX_DST_W;
 		max_dst_h = ICL_MAX_DST_H;
 	} else if (DISPLAY_VER(display) < 14) {
-		max_src_w = TGL_MAX_SRC_W;
-		max_src_h = TGL_MAX_SRC_H;
 		max_dst_w = TGL_MAX_DST_W;
 		max_dst_h = TGL_MAX_DST_H;
 	} else {
-		max_src_w = MTL_MAX_SRC_W;
-		max_src_h = MTL_MAX_SRC_H;
 		max_dst_w = MTL_MAX_DST_W;
 		max_dst_h = MTL_MAX_DST_H;
 	}
-- 
2.45.2

