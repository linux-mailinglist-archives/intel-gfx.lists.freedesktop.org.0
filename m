Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DDF9F7C05
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 14:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 794D910ECFC;
	Thu, 19 Dec 2024 13:08:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IDwn39bd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB05710ECE9
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 13:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734613722; x=1766149722;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AiOcs48M3ZzxC+NUsvK42wW0CnPVcwkVKKYEgwSIssc=;
 b=IDwn39bdMH/IL3pm4VsCPUpWK8G20C6PiTHNjMq1ONg2Pu/i6K3k8BA4
 JN6PxMYShcPoFgrySp0YJ5MJIhmd/PWxMrKb68fMUaPg3xzlRyxfmZBLG
 IFbwuuuuDutkRVi4tDQv0nhmid8mVbjk8h608bmQC/jgi3N6k3eGuuNmi
 X6VxyJNnVSt88naXE/c+LbXUVg+VG+I2QpKKQiYF8pejyWM0oMomWxMlB
 mGXGvfdzz5JA0IsI62xTsaOG68gIKNkg4bbcdXgvaTvGovvU35KD60ngp
 RKHVrSJ02S2D4msGtnQEIH8CpEhHxLciszQjXhVsot0xHP7ent1WtN3W9 g==;
X-CSE-ConnectionGUID: CZ77lkjtTa6HWK+TRiXENw==
X-CSE-MsgGUID: OsfTjp7nTb+MQip4uusl5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38798136"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="38798136"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:08:41 -0800
X-CSE-ConnectionGUID: vuCsn738QiqdIRVBz68/TA==
X-CSE-MsgGUID: e99XlBiaTJWiLyMC2JVkpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98403311"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Dec 2024 05:08:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2024 15:08:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/8] drm/i915/scaler: Extract skl_scaler_max_dst_size()
Date: Thu, 19 Dec 2024 15:08:23 +0200
Message-ID: <20241219130827.22830-5-ville.syrjala@linux.intel.com>
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

The SKL_MAX_DST_* defines just make things hard to read.
Get rid of them and introduce an easy to read function
in their place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 44 +++++++++++------------
 1 file changed, 21 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index cabbf4860cb3..0bc82a047510 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -76,15 +76,6 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
 	return ((phase >> 2) & PS_PHASE_MASK) | trip;
 }
 
-#define SKL_MAX_DST_W 4096
-#define SKL_MAX_DST_H 4096
-#define ICL_MAX_DST_W 5120
-#define ICL_MAX_DST_H 4096
-#define TGL_MAX_DST_W 8192
-#define TGL_MAX_DST_H 8192
-#define MTL_MAX_DST_W 8192
-#define MTL_MAX_DST_H 8192
-
 static void skl_scaler_min_src_size(const struct drm_format_info *format,
 				    u64 modifier, int *min_w, int *min_h)
 {
@@ -123,6 +114,26 @@ static void skl_scaler_min_dst_size(int *min_w, int *min_h)
 	*min_h = 8;
 }
 
+static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
+				    int *max_w, int *max_h)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	if (DISPLAY_VER(display) >= 14) {
+		*max_w = 8192;
+		*max_h = 8192;
+	} else if (DISPLAY_VER(display) >= 12) {
+		*max_w = 8192;
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
@@ -191,20 +202,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	skl_scaler_max_src_size(crtc, &max_src_w, &max_src_h);
 
 	skl_scaler_min_dst_size(&min_dst_w, &min_dst_h);
-
-	if (DISPLAY_VER(display) < 11) {
-		max_dst_w = SKL_MAX_DST_W;
-		max_dst_h = SKL_MAX_DST_H;
-	} else if (DISPLAY_VER(display) < 12) {
-		max_dst_w = ICL_MAX_DST_W;
-		max_dst_h = ICL_MAX_DST_H;
-	} else if (DISPLAY_VER(display) < 14) {
-		max_dst_w = TGL_MAX_DST_W;
-		max_dst_h = TGL_MAX_DST_H;
-	} else {
-		max_dst_w = MTL_MAX_DST_W;
-		max_dst_h = MTL_MAX_DST_H;
-	}
+	skl_scaler_max_dst_size(crtc, &max_dst_w, &max_dst_h);
 
 	/* range checks */
 	if (src_w < min_src_w || src_h < min_src_h ||
-- 
2.45.2

