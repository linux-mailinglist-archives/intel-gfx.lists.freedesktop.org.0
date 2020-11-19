Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EE02B9E12
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 00:23:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 477FB6E834;
	Thu, 19 Nov 2020 23:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0BD6E832
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 23:23:46 +0000 (UTC)
IronPort-SDR: QgyCVtcsbttJNtJGBbpN9Tk+NzM2/hdNhSd4zelB+WFATiybARrgyzmsyVu/dUOrhcXIatiOtA
 ue7hp615EnYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="158420918"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="158420918"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 15:23:45 -0800
IronPort-SDR: 7G1dfavnPawn/SIGrEmfS3QjrzzDMTvY7nieOD9iM0IOlThOtlg5Dx6LKaG1q4Lg3fN6jHN/l4
 nXfJUeJ6cfLQ==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="311799842"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 19 Nov 2020 15:23:44 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 15:26:15 -0800
Message-Id: <20201119232615.23231-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Do not call
 hsw_set_frame_start_delay for dsi
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This should fix the boot oops for dsi

v2:
* Fix indent (Manasi)
v3:
* Remove redundant condition (Matt Roper)

Fixes: 4e3cdb4535e7 ("drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner")
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1a0f00f37ca9..0038f14c8bfb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7211,12 +7211,10 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
 		bdw_set_pipemisc(new_crtc_state);
 
-	if (!new_crtc_state->bigjoiner_slave || !transcoder_is_dsi(cpu_transcoder)) {
-		if (!transcoder_is_dsi(cpu_transcoder))
-			intel_set_transcoder_timings(new_crtc_state);
+	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder)) {
+		intel_set_transcoder_timings(new_crtc_state);
 
-		if (cpu_transcoder != TRANSCODER_EDP &&
-		    !transcoder_is_dsi(cpu_transcoder))
+		if (cpu_transcoder != TRANSCODER_EDP)
 			intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
 				       new_crtc_state->pixel_multiplier - 1);
 
-- 
2.19.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
