Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA566FDBA5
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 12:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E4110E207;
	Wed, 10 May 2023 10:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C3310E1F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 10:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683714656; x=1715250656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/T1T53HeHFW1e7n1mY7Gis7V1lqrJ3ujl2yMoQh+0AM=;
 b=Vt07C2zkNYgJmpI1wWmQ+pORjptuUew6BUbLcrlaWkVUvCFvd6CZ+tNa
 PWShXIT3hTvoIg8uqBDhsOkbPIdbBwY/mCb97egH+24wUftqv2cUIsW2A
 CXieynf2nMh2/Wq644f10shvvLeqFRwKYqxrimTpyi+uj/abNnQFwnzqt
 qj8F31InKfcyonya6Bq2DLilfXIaOq0/MwaMu/kWs6N9xhzukC/Jkmhu/
 ztsBPAOBDFf5ql8uTlcHkrGBG4wPxTu31jZM8Hfxnr6OWE9Bi7a5OrLs8
 vnrv04vR3D7DhC/3RhU2GbhufrBBbnK45KbQK0Gdkuw8dAbUUMcUMmvEn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="350214395"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="350214395"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="676796692"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="676796692"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 03:30:55 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 13:31:18 +0300
Message-Id: <20230510103131.1618266-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
References: <20230510103131.1618266-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 01/14] drm/i915: Fix PIPEDMC disabling for a
 bigjoiner configuration
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For a bigjoiner configuration display->crtc_disable() will be called
first for the slave CRTCs and then for the master CRTC. However slave
CRTCs will be actually disabled only after the master CRTC is disabled
(from the encoder disable hooks called with the master CRTC state).
Hence the slave PIPEDMCs can be disabled only after the master CRTC is
disabled, make this so.

intel_encoders_post_pll_disable() must be called only for the master
CRTC, as for the other two encoder disable hooks. While at it fix this
up as well. This didn't cause a problem, since
intel_encoders_post_pll_disable() will call the corresponding hook only
for an encoder/connector connected to the given CRTC, however slave
CRTCs will have no associated encoder/connector.

Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1d5d42a408035..116fa52290b84 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1702,9 +1702,17 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 
 	intel_disable_shared_dpll(old_crtc_state);
 
-	intel_encoders_post_pll_disable(state, crtc);
+	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
+		struct intel_crtc *slave_crtc;
+
+		intel_encoders_post_pll_disable(state, crtc);
 
-	intel_dmc_disable_pipe(i915, crtc->pipe);
+		intel_dmc_disable_pipe(i915, crtc->pipe);
+
+		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
+						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
+			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
+	}
 }
 
 static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
-- 
2.37.2

