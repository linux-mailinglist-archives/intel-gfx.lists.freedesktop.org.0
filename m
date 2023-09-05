Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7309792C3B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 19:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F2910E0DC;
	Tue,  5 Sep 2023 17:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B20010E0DC
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 17:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693933904; x=1725469904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3aiuNYXpcgH+NmHrc305241fpNfBIjsHHWgV7G0duco=;
 b=k4LFDV+BbqrkzP/36d7KmZ9gDKLSvz/EDGth1Nh0AXdDCSzkyu5uPSUb
 iiNLISUkBrUwwS+u65kJIJK3j5YGW7+/BCsSd4Y/ObGmZRLFvsOmAzCOg
 mwupdowUQeMFCBHFA/yBFoqFQW4ADdyE122azdjCaF7iZiSRkVWLwli2L
 vdH0CRkUx8XWbcadvN9SfHW64nZREIKJ+jQTdvjJRcXAkPjHDF+iebRRW
 EsMnk3inx1/196AdKHS/+edSf8M+42Oz2UZRZtfajy81qZae5UUXnLMCy
 nAQ73j5VMf0QWoykSN48EZ7lma++FGygWsoBXx56kgh7pLszyZsr6rPiV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="356341999"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="356341999"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:11:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="741160646"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="741160646"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.152])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:11:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 20:11:20 +0300
Message-Id: <e2551b52ac0dd2b4ffe18d5e7733fafdc191d68a.1693933849.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1693933849.git.jani.nikula@intel.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/dsc: improve clarify of the pps
 reg read/write helpers
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make it clear what's the number of vdsc per pipe, and what's the number
of registers to grab. Have intel_dsc_get_pps_reg() return the registers
it knows even if the requested amount is bigger.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 40 ++++++++++++-----------
 1 file changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index b24601d0b2c5..14317bb6d3df 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -372,7 +372,7 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 }
 
 static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
-				  i915_reg_t *dsc_reg, int vdsc_per_pipe)
+				  i915_reg_t *dsc_reg, int dsc_reg_num)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -381,16 +381,12 @@ static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int
 
 	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
 
-	switch (vdsc_per_pipe) {
-	case 2:
+	if (dsc_reg_num >= 3)
+		MISSING_CASE(dsc_reg_num);
+	if (dsc_reg_num >= 2)
 		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS(pipe, pps) : DSCC_PPS(pps);
-		fallthrough;
-	case 1:
+	if (dsc_reg_num >= 1)
 		dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS(pipe, pps) : DSCA_PPS(pps);
-		break;
-	default:
-		MISSING_CASE(vdsc_per_pipe);
-	}
 }
 
 static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
@@ -399,13 +395,16 @@ static void intel_dsc_write_pps_reg(const struct intel_crtc_state *crtc_state,
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	i915_reg_t dsc_reg[2];
-	int i, vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
+	int i, vdsc_per_pipe, dsc_reg_num;
+
+	vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
+	dsc_reg_num = min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
 
-	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) < vdsc_per_pipe);
+	drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
 
-	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, vdsc_per_pipe);
+	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
 
-	for (i = 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++)
+	for (i = 0; i < dsc_reg_num; i++)
 		intel_de_write(i915, dsc_reg[i], pps_val);
 }
 
@@ -815,16 +814,19 @@ static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
-	const int vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
 	i915_reg_t dsc_reg[2];
-	int i;
+	int i, vdsc_per_pipe, dsc_reg_num;
 
-	*pps_val = 0;
-	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) < vdsc_per_pipe);
+	vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
+	dsc_reg_num = min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
 
-	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, vdsc_per_pipe);
+	drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
+
+	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
+
+	*pps_val = 0;
 
-	for (i = 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++) {
+	for (i = 0; i < dsc_reg_num; i++) {
 		u32 pps_temp;
 
 		pps_temp = intel_de_read(i915, dsc_reg[i]);
-- 
2.39.2

