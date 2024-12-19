Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F679F7C03
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 14:08:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60C8D10ED10;
	Thu, 19 Dec 2024 13:08:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E6PLiGo/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E5E010ECFC
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 13:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734613718; x=1766149718;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KURH6+rmoigTFknkxhEZkEK4az2RgcTlD6WFQQ/e26s=;
 b=E6PLiGo/4C5TTXIl08YEwKfIFUlrumE/1AQucic9SiXaytvEoDm3FyAj
 6JD9QRSVHQE3j+f16R7zwkRvrJ5qjywbUI8PlrdQc/EMnsMDIawgRZ1v5
 zsWr+e9a43hzVydPqJjXBCWsRAai/4T6xpZ5XaePobWTD4zoxTgAgXoaY
 PjmglHGJKIYU5vUcL0ElRRpnNwrfE0DGbW7rPb+upB68fFoNP0Xxe4drg
 1POzSRo4srWhoaT/6ZQpWCCWKtR59Ez8gvW3sec/u+q95v7Dsof7qtWRk
 CH2Ft6/qNdln/UKXe55pDCTmH7bJn+1N7XPVD6gAXCcIthbLb8A1mq91a w==;
X-CSE-ConnectionGUID: iVWcfXoYSeaZycyf2gSomA==
X-CSE-MsgGUID: v5iwm72/QAGKfvZ1s456uA==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="38798131"
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="38798131"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 05:08:38 -0800
X-CSE-ConnectionGUID: ew0IFvrVRHKVdq43lMeZdA==
X-CSE-MsgGUID: 3tbV7os7QoOchCa6WqNwqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,247,1728975600"; d="scan'208";a="98403303"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Dec 2024 05:08:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Dec 2024 15:08:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/8] drm/i915/scaler: Extract skl_scaler_min_dst_size()
Date: Thu, 19 Dec 2024 15:08:22 +0200
Message-ID: <20241219130827.22830-4-ville.syrjala@linux.intel.com>
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

The SKL_MIN_DST_* defines just make things hard to read.
Get rid of them and introduce an easy to read function
in their place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index d6bef6578867..cabbf4860cb3 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -76,9 +76,7 @@ static u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_cosited)
 	return ((phase >> 2) & PS_PHASE_MASK) | trip;
 }
 
-#define SKL_MIN_DST_W 8
 #define SKL_MAX_DST_W 4096
-#define SKL_MIN_DST_H 8
 #define SKL_MAX_DST_H 4096
 #define ICL_MAX_DST_W 5120
 #define ICL_MAX_DST_H 4096
@@ -119,6 +117,12 @@ static void skl_scaler_max_src_size(struct intel_crtc *crtc,
 	}
 }
 
+static void skl_scaler_min_dst_size(int *min_w, int *min_h)
+{
+	*min_w = 8;
+	*min_h = 8;
+}
+
 static int
 skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 		  unsigned int scaler_user, int *scaler_id,
@@ -186,8 +190,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	skl_scaler_min_src_size(format, modifier, &min_src_w, &min_src_h);
 	skl_scaler_max_src_size(crtc, &max_src_w, &max_src_h);
 
-	min_dst_w = SKL_MIN_DST_W;
-	min_dst_h = SKL_MIN_DST_H;
+	skl_scaler_min_dst_size(&min_dst_w, &min_dst_h);
 
 	if (DISPLAY_VER(display) < 11) {
 		max_dst_w = SKL_MAX_DST_W;
-- 
2.45.2

