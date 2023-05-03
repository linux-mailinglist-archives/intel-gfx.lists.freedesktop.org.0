Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A66E6F61C6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 01:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F81F10E102;
	Wed,  3 May 2023 23:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D584610E102
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 23:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683155415; x=1714691415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=unr1AuxibnaXnM+R1gXcDrqtbShcjmiiYEt2z2cltSA=;
 b=I6LpXClXLQI2QYY4GPyiy682PldJPuRitupjiMtFKYZr6QCE0lVHSac9
 0klYSZ0i6pHSCgx6qrT+X4imwET/elc979w1JtXrRBlOL0arUb8FTkErK
 kRD4EQHlbK8fBZfSKrgdu0FXJehlMSQrZxXBm6IIIUgBwc4HFaokdxgs5
 HhDddSe5Usp4yDK/ulYM9U00MWpHUda0CZnfjAtuujeLdKfL5R/6sVhQa
 mZTJ760Ldgw0cvFwqSIlRk5xvsWI8HfcbAUVUNjXP59hD5NNsTry+km5V
 ol/5AAqTrgG74I30io3KAPXUjxR4jG08/Nf3oUzoBBDSQjtnohLwK5LDz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="347607563"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="347607563"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="690872091"
X-IronPort-AV: E=Sophos;i="5.99,248,1677571200"; d="scan'208";a="690872091"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 16:10:14 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 02:10:38 +0300
Message-Id: <20230503231048.432368-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/12] drm/i915: Make the CRTC state
 consistent during sanitize-disabling
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

Make sure that the CRTC state is reset correctly, as expected after
disabling the CRTC.

In particular this change will:
- Zero all the CSC blob pointers after intel_crtc_free_hw_state()
  has freed them.
- Zero the shared DPLL and port PLL pointers and clear the
  corresponding active flags in the PLL state.
- Reset all the transcoder and pipe fields.

v2:
- Reset fully the CRTC state. (Ville)
- Clear pipe active flags in the DPLL state.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index eefa4018dc0c2..2ca66e49d8863 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -88,13 +88,14 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	crtc->active = false;
 	crtc->base.enabled = false;
 
-	drm_WARN_ON(&i915->drm,
-		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
-	crtc_state->uapi.active = false;
-	crtc_state->uapi.connector_mask = 0;
-	crtc_state->uapi.encoder_mask = 0;
+	if (crtc_state->shared_dpll) {
+		crtc_state->shared_dpll->state.pipe_mask &= ~BIT(pipe);
+		crtc_state->shared_dpll->active_mask &= ~BIT(pipe);
+	}
+
+	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
-	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
+	intel_crtc_state_reset(crtc_state, crtc);
 
 	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
 		encoder->base.crtc = NULL;
-- 
2.37.2

