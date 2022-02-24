Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A624C3240
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Feb 2022 17:53:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D3A10E824;
	Thu, 24 Feb 2022 16:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5C010E824
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Feb 2022 16:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645721615; x=1677257615;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rCpTEf1fpjV7ZufMIZyVyzi3vbMCPfAP0OVX8dy+dag=;
 b=BVFuCdMaXCVwjxirM1VgNeCnh8dcCa704cHWwywP6yB3UeP5dNoztg6u
 LfgbTtl5o6t+nMQGEJ8/b1kltvsL+3PDgayibs0RVEx++6E/MOHoiIKLl
 kiLUTBAhoo9BxNN8rTcC8B+CEIGoDNr4+JcR3yGKOd+toaQm6wZYRulau
 ZBsTjphmeUVNBTq31cw+IKJGi5lnM3WFRAoUegcpaTRYMNFC61dzBbaOT
 PX59qBN5QtPFLt9qMXSZwY6lgycL/Mt2raa8xXpopUh9wk7tRfYDPaUH9
 OMr9nnvrd7a+s3kFxp/bUOl6gh9UDXQgmYJoZdXHWUMQzFkqQhXNfeCvd g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="232256630"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="232256630"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 08:51:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; d="scan'208";a="508935682"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 24 Feb 2022 08:51:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Feb 2022 18:51:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Feb 2022 18:51:03 +0200
Message-Id: <20220224165103.15682-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
References: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Split pipe+output CSC programming
 to noarm+arm pair
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

Move most of the pipe+output CSC programming to the
.color_commit_noarm() hook which runs before vblank evasion.
Only PIPE_CSC_MODE (the arming register) needs to remain in
inside the critical section.

A test case that just updates the CTM in a loop produces
the following i915_update_info numbers on ilk (w/o lockdep):
old                                 new
Updates: 10012			    Updates: 10008
       |			    	   |
   1us |**			       1us |**********
       |*************		    	   |*************
   4us |*********		       4us |*
       |*			    	   |**
  16us |			      16us |
       |			    	   |
  66us |			      66us |
       |			    	   |
 262us |			     262us |
       |			    	   |
   1ms |			       1ms |
       |			    	   |
   4ms |			       4ms |
       |			    	   |
  17ms |			      17ms |
       |			    	   |
Min update: 1345ns		    Min update: 1268ns
Max update: 16672ns		    Max update: 15656ns
Average update: 3914ns		    Average update: 2185ns
Overruns > 100us: 0		    Overruns > 100us: 0

And here is tgl (forced to update both pipe CSC and
output CSC, and with lockdep enabled):
old                                 new
Updates: 10012			    Updates: 10012
       |			    	   |
   1us |			       1us |
       |			    	   |
   4us |*			       4us |**
       |**			    	   |**********
  16us |*************		      16us |*************
       |*			    	   |
  66us |			      66us |
       |			    	   |
 262us |			     262us |
       |			    	   |
   1ms |			       1ms |
       |			    	   |
   4ms |			       4ms |
       |			    	   |
  17ms |			      17ms |
       |			    	   |
Min update: 5204ns		    Min update: 5176ns
Max update: 176038ns		    Max update: 186685ns
Average update: 23931ns		    Average update: 16654ns
Overruns > 250us: 0		    Overruns > 250us: 0

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 36 ++++++++++++++--------
 1 file changed, 23 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index df775c6179b2..34128c9c635c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -346,15 +346,11 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 				    ilk_csc_coeff_identity,
 				    ilk_csc_off_zero);
 	}
-
-	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
-			  crtc_state->csc_mode);
 }
 
 static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
 	if (crtc_state->hw.ctm) {
 		u16 coeff[9];
@@ -373,9 +369,6 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 				      ilk_csc_coeff_limited_range,
 				      ilk_csc_postoff_limited_range);
 	}
-
-	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
-			  crtc_state->csc_mode);
 }
 
 static void chv_load_cgm_csc(struct intel_crtc *crtc,
@@ -500,6 +493,16 @@ static void icl_lut_multi_seg_pack(struct drm_color_lut *entry, u32 ldw, u32 udw
 				    REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
 }
 
+static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
+{
+	icl_load_csc_matrix(crtc_state);
+}
+
+static void ilk_color_commit_noarm(const struct intel_crtc_state *crtc_state)
+{
+	ilk_load_csc_matrix(crtc_state);
+}
+
 static void i9xx_color_commit_arm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -525,7 +528,8 @@ static void ilk_color_commit_arm(const struct intel_crtc_state *crtc_state)
 	val |= PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
 	intel_de_write(dev_priv, PIPECONF(pipe), val);
 
-	ilk_load_csc_matrix(crtc_state);
+	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(pipe),
+			  crtc_state->csc_mode);
 }
 
 static void hsw_color_commit_arm(const struct intel_crtc_state *crtc_state)
@@ -536,7 +540,8 @@ static void hsw_color_commit_arm(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, GAMMA_MODE(crtc->pipe),
 		       crtc_state->gamma_mode);
 
-	ilk_load_csc_matrix(crtc_state);
+	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
+			  crtc_state->csc_mode);
 }
 
 static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
@@ -560,10 +565,8 @@ static void skl_color_commit_arm(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, GAMMA_MODE(crtc->pipe),
 		       crtc_state->gamma_mode);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_load_csc_matrix(crtc_state);
-	else
-		ilk_load_csc_matrix(crtc_state);
+	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
+			  crtc_state->csc_mode);
 }
 
 static void i9xx_load_lut_8(struct intel_crtc *crtc,
@@ -2170,6 +2173,7 @@ static const struct intel_color_funcs i9xx_color_funcs = {
 
 static const struct intel_color_funcs icl_color_funcs = {
 	.color_check = icl_color_check,
+	.color_commit_noarm = icl_color_commit_noarm,
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = icl_load_luts,
 	.read_luts = icl_read_luts,
@@ -2177,6 +2181,7 @@ static const struct intel_color_funcs icl_color_funcs = {
 
 static const struct intel_color_funcs glk_color_funcs = {
 	.color_check = glk_color_check,
+	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = glk_load_luts,
 	.read_luts = glk_read_luts,
@@ -2184,6 +2189,7 @@ static const struct intel_color_funcs glk_color_funcs = {
 
 static const struct intel_color_funcs skl_color_funcs = {
 	.color_check = ivb_color_check,
+	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = skl_color_commit_arm,
 	.load_luts = bdw_load_luts,
 	.read_luts = NULL,
@@ -2191,6 +2197,7 @@ static const struct intel_color_funcs skl_color_funcs = {
 
 static const struct intel_color_funcs bdw_color_funcs = {
 	.color_check = ivb_color_check,
+	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = bdw_load_luts,
 	.read_luts = NULL,
@@ -2198,6 +2205,7 @@ static const struct intel_color_funcs bdw_color_funcs = {
 
 static const struct intel_color_funcs hsw_color_funcs = {
 	.color_check = ivb_color_check,
+	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = hsw_color_commit_arm,
 	.load_luts = ivb_load_luts,
 	.read_luts = NULL,
@@ -2205,6 +2213,7 @@ static const struct intel_color_funcs hsw_color_funcs = {
 
 static const struct intel_color_funcs ivb_color_funcs = {
 	.color_check = ivb_color_check,
+	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = ilk_color_commit_arm,
 	.load_luts = ivb_load_luts,
 	.read_luts = NULL,
@@ -2212,6 +2221,7 @@ static const struct intel_color_funcs ivb_color_funcs = {
 
 static const struct intel_color_funcs ilk_color_funcs = {
 	.color_check = ilk_color_check,
+	.color_commit_noarm = ilk_color_commit_noarm,
 	.color_commit_arm = ilk_color_commit_arm,
 	.load_luts = ilk_load_luts,
 	.read_luts = ilk_read_luts,
-- 
2.34.1

