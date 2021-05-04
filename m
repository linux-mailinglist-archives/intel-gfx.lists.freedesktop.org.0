Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7529D372705
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 10:14:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C160D89A20;
	Tue,  4 May 2021 08:14:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A27CE6EA9E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 08:14:18 +0000 (UTC)
IronPort-SDR: y6pFy0GFMU3Nl7p5+VWUhBB39G/UbYJzaqg+yuw4VIEP3pfNOQVj2vCHXTtcC9WFr04X0ctwG8
 2w7bkhY0nM/w==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="185061956"
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="185061956"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 01:14:17 -0700
IronPort-SDR: V7tGBFXts5tD2QXK8DoR19y8+KBscVGF7okYVA/St9z4sDXXPahFGcV1Mz76L2UNS7qsWPwr5Y
 6JDz1o0Vlizg==
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="428764185"
Received: from radwanib-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.203])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 01:14:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 May 2021 11:14:01 +0300
Message-Id: <6c2f6afa4c8866f8c1714b4f8dba9ea2d1509e4a.1620115983.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1620115982.git.jani.nikula@intel.com>
References: <cover.1620115982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/audio: fix indentation,
 remove extra braces
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cleanup the code. No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 60083431228c..75871ee544a7 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -597,8 +597,8 @@ static void enable_audio_dsc_wa(struct intel_encoder *encoder,
 		val |= HBLANK_EARLY_ENABLE_TGL(pipe);
 
 	if (crtc_state->dsc.compression_enable &&
-	    (crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
-	    crtc_state->hw.adjusted_mode.vdisplay >= 2160)) {
+	    crtc_state->hw.adjusted_mode.hdisplay >= 3840 &&
+	    crtc_state->hw.adjusted_mode.vdisplay >= 2160) {
 		/* Get hblank early enable value required */
 		val &= ~HBLANK_START_COUNT_MASK(pipe);
 		hblank_early_prog = calc_hblank_early_prog(encoder, crtc_state);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
