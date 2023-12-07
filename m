Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D96809167
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 20:34:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF6F10E966;
	Thu,  7 Dec 2023 19:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B07F110E966
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 19:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701977691; x=1733513691;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qBv5W1zf1NfKMqKw4F47EWGdS/EUSyFhpUGg0Yx4ezU=;
 b=AhSUtsyhrePWOitbIU6phLjPR/I8AgoCsGdLdhrvmvSWc+O0e+vVfX6v
 30XAmYgVOl233mzYc8KFlokQv3sUie4AJSzruvuYinlJESL+5u3qkjU9P
 ofeg1JpcJJrZKiOVzUAVMPlpxiV6Gv+SsQf4gzOQQpjgrW3uZxypGbpPE
 Yh5uCDdXM8/JzIpCiCikowkvb4IsboqQaaO2xaHT3DQjxgqo4LwJAW4uw
 HH6jtNbvSui1aQaO8C6Sb9bCArfaKrf51rMSTpUiw6orNR2byntdxXguj
 ZVKVf+i/0L67VPsCbga+Qxp9hKkcfnQ7VO1Ni46DHEyH1hbjhNqwII9Bx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384694352"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="384694352"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 11:34:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765213048"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="765213048"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 11:34:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 21:34:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/8] drm/i915: Streamline intel_dsc_pps_read()
Date: Thu,  7 Dec 2023 21:34:35 +0200
Message-ID: <20231207193441.20206-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
References: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
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

intel_dsc_pps_read() is rather convoluted. Make it legible.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 5f2fb702e367..17d6572f9d0a 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -812,13 +812,13 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
 }
 
 static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
-			      bool *check_equal)
+			      bool *all_equal)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	i915_reg_t dsc_reg[2];
 	int i, vdsc_per_pipe, dsc_reg_num;
-	u32 val = 0;
+	u32 val;
 
 	vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
 	dsc_reg_num = min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
@@ -827,20 +827,13 @@ static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
 
 	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
 
-	if (check_equal)
-		*check_equal = true;
+	*all_equal = true;
 
-	for (i = 0; i < dsc_reg_num; i++) {
-		u32 tmp;
+	val = intel_de_read(i915, dsc_reg[0]);
 
-		tmp = intel_de_read(i915, dsc_reg[i]);
-
-		if (i == 0) {
-			val = tmp;
-		} else if (check_equal && tmp != val) {
-			*check_equal = false;
-			break;
-		} else if (!check_equal) {
+	for (i = 1; i < dsc_reg_num; i++) {
+		if (intel_de_read(i915, dsc_reg[i]) != val) {
+			*all_equal = false;
 			break;
 		}
 	}
-- 
2.41.0

