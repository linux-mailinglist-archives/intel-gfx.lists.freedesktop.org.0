Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 904371B0C3D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 15:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D63516E550;
	Mon, 20 Apr 2020 13:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 834936E550
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 13:06:11 +0000 (UTC)
IronPort-SDR: K5eMdIFtu2xkTPfnMXUXT2gAVmA/7zD59MTLq5TUJwLo3IYMiLqycdW3H2uXrreHHo7YnaZUqz
 NlFcMCgILutg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 06:06:11 -0700
IronPort-SDR: Qol7vwuhujDOlTjzrv5EKdnaR52itphhMvVjur6pOtAdApffKE46mJo3tfHI1RkXi0i8VlBf2q
 bQkfpMNeqpjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="258337353"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga006.jf.intel.com with ESMTP; 20 Apr 2020 06:06:08 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 19:04:25 +0530
Message-Id: <20200420133425.30289-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fixed kernel taint in audio
 codec init
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
Cc: kai.vehmanen@intel.com, chris-wilson.co.uk@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch fixes a kernel taint on non DSC DP monitors.

Fixes: 48b8b04c7 ("drm/i915/display: Enable DP Display Audio WA")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1750
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 2663e71059af..0ff7c3f07fa5 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -606,7 +606,7 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
 	h_active = crtc_state->hw.adjusted_mode.hdisplay;
 
 	if (!(h_active && crtc_state->port_clock && crtc_state->lane_count &&
-	      crtc_state->dsc.compressed_bpp && i915->cdclk.hw.cdclk)) {
+	      i915->cdclk.hw.cdclk)) {
 		drm_err(&i915->drm, "Null Params rcvd for hblank early enabling\n");
 		WARN_ON(1);
 		return;
@@ -620,8 +620,9 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
 		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
 
 	if (crtc_state->dsc.compression_enable &&
+	    crtc_state->dsc.compressed_bpp &&
 	    (crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
-	    crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
+	     crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
 		/* Get hblank early enable value required */
 		hblank_early_prog = get_hblank_early_enable_config(encoder,
 								   crtc_state);
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
