Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D081E9F7C00
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 14:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EB010E49D;
	Thu, 19 Dec 2024 13:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EPFYtFC9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8A0210E49D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 13:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734613713; x=1766149713;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I56P6a/IowPOOeKUDA+oQHGkxrY9kaBBjN/rDRJfB08=;
 b=EPFYtFC97BRSEuykfTTI5SJkwpP+msA/wR5q/dclE7vJH56lUfjhnBWf
 6UKFAdxVto8wDj6RglXIBs90Mpdba11Q3D4JBZAy3H3p/5RvM1/7OBIIm
 Oq7NKOEhfEwd+81XI7sFKPgqRsfF9/EMfEHuLA9lw/c/vLCx4z91fX4U1
 +o4Xf0E1KwdtiCdCoUV/gs8r7okQvM0CLyLr+0mUnfiWQWDLYy91a7dAm
 XpKBnOYpXPv35QdAwgW4rXIEQPgqt6ZVnKwdEdAFh79VRfiMW13yJp8qM
 c+uq9NwYdMSF0lfv3dPApZ39WJ0qoTcAjt2A90Ize0BIXOLmNAgKfSQHe g==;
X-CSE-ConnectionGUID: YrusyMzhR1C0aR1boBQYPg==
X-CSE-MsgGUID: DpIAq9MjTDORQKFrM9p6BA==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38798120"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="38798120"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:08:32 -0800
X-CSE-ConnectionGUID: 4uvWBBaqSd2VU9jd1WeFHA==
X-CSE-MsgGUID: UnUJgGvgS36NqDfQyMVNHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98403286"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Dec 2024 05:08:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2024 15:08:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/8] drm/i915/scaler: Extract skl_scaler_min_src_size()
Date: Thu, 19 Dec 2024 15:08:20 +0200
Message-ID: <20241219130827.22830-2-ville.syrjala@linux.intel.com>
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

The SKL_MIN_*SRC_* defines just make things hard to read.
Get rid of them and introduce an easy to read function
in their place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 25 ++++++++++++-----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index ae21fce534dc..8b5b7993a492 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -76,9 +76,7 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
 	return ((phase >> 2) & PS_PHASE_MASK) | trip;
 }
 
-#define SKL_MIN_SRC_W 8
 #define SKL_MAX_SRC_W 4096
-#define SKL_MIN_SRC_H 8
 #define SKL_MAX_SRC_H 4096
 #define SKL_MIN_DST_W 8
 #define SKL_MAX_DST_W 4096
@@ -96,8 +94,18 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
 #define MTL_MAX_SRC_H 8192
 #define MTL_MAX_DST_W 8192
 #define MTL_MAX_DST_H 8192
-#define SKL_MIN_YUV_420_SRC_W 16
-#define SKL_MIN_YUV_420_SRC_H 16
+
+static void skl_scaler_min_src_size(const struct drm_format_info *format,
+				    u64 modifier, int *min_w, int *min_h)
+{
+	if (format && intel_format_info_is_yuv_semiplanar(format, modifier)) {
+		*min_w = 16;
+		*min_h = 16;
+	} else {
+		*min_w = 8;
+		*min_h = 8;
+	}
+}
 
 static int
 skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
@@ -163,15 +171,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 		return 0;
 	}
 
-	if (format && intel_format_info_is_yuv_semiplanar(format, modifier) &&
-	    (src_h < SKL_MIN_YUV_420_SRC_H || src_w < SKL_MIN_YUV_420_SRC_W)) {
-		drm_dbg_kms(display->drm,
-			    "Planar YUV: src dimensions not met\n");
-		return -EINVAL;
-	}
+	skl_scaler_min_src_size(format, modifier, &min_src_w, &min_src_h);
 
-	min_src_w = SKL_MIN_SRC_W;
-	min_src_h = SKL_MIN_SRC_H;
 	min_dst_w = SKL_MIN_DST_W;
 	min_dst_h = SKL_MIN_DST_H;
 
-- 
2.45.2

