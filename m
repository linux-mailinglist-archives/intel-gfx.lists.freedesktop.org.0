Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DD71ED7F6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 23:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A96D989F49;
	Wed,  3 Jun 2020 21:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A30CE89EBB
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 21:15:49 +0000 (UTC)
IronPort-SDR: UxHGGT8HIh0x71+Pqa5xJWVr0zdeelaidWIO6d1LmF2s6UsaLQxbXzECrlyConNsPMgN5g6KUo
 hZSTK+zGLWTw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 14:15:48 -0700
IronPort-SDR: K3+QYDt6lp8SS/mOHFkkaPqsJY1ncyuu+5yDfBAVRLOlxmIx6b3XQfCB/6FWWJ0Ctayct/K6Hh
 JxXgkqIz/3Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="258715107"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jun 2020 14:15:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 14:15:24 -0700
Message-Id: <20200603211529.3005059-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200603211529.3005059-1-matthew.d.roper@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 10/15] drm/i915/rkl: Don't try to read out
 DSI transcoders
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

From: Aditya Swarup <aditya.swarup@intel.com>

RKL doesn't have DSI outputs, so we shouldn't try to read out the DSI
transcoder registers.

v2(MattR):
 - Just set the 'extra panel mask' to edp | dsi0 | dsi1 and then mask
   against the platform's cpu_transcoder_mask to filter out the ones
   that don't exist on a given platform.  (Ville)

Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 019fef8023ca..bcc6dc4e321b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10904,19 +10904,13 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum intel_display_power_domain power_domain;
-	unsigned long panel_transcoder_mask = 0;
+	unsigned long panel_transcoder_mask = BIT(TRANSCODER_EDP) |
+		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
 	unsigned long enabled_panel_transcoders = 0;
 	enum transcoder panel_transcoder;
 	intel_wakeref_t wf;
 	u32 tmp;
 
-	if (INTEL_GEN(dev_priv) >= 11)
-		panel_transcoder_mask |=
-			BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
-
-	if (HAS_TRANSCODER(dev_priv, TRANSCODER_EDP))
-		panel_transcoder_mask |= BIT(TRANSCODER_EDP);
-
 	/*
 	 * The pipe->transcoder mapping is fixed with the exception of the eDP
 	 * and DSI transcoders handled below.
@@ -10927,6 +10921,7 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
 	 * consistency and less surprising code; it's in always on power).
 	 */
+	panel_transcoder_mask &= INTEL_INFO(dev_priv)->cpu_transcoder_mask;
 	for_each_set_bit(panel_transcoder,
 			 &panel_transcoder_mask,
 			 ARRAY_SIZE(INTEL_INFO(dev_priv)->trans_offsets)) {
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
