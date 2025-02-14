Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B89B6A36020
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607D610ECB2;
	Fri, 14 Feb 2025 14:19:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E+ucpwIm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B409710ECAD;
 Fri, 14 Feb 2025 14:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542750; x=1771078750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F56s8BgQ3lCyIetiD6ncId7OaYnX0uSGVc9i2M9oCkc=;
 b=E+ucpwImk3silRas4+ferByG1sZVeAxOXsCgC2A91C+UO22J9pmt4qyU
 1ojx/gUIdeZkw7M88l1YTrnym9V1/6lKWE36nhVfsaETOxJrXEfwbnW9d
 1AEWQdGeimaeCeOl+BMT6i+8wPgr4SuCM54vTaptjyoLF3PvuD88hm87X
 11eSLC+SE00MlXYcAJxrj0ZNBvuKiSlko/S5t35ueVX/vReznW3QYjvAi
 n7GJ6L1zQKjrdZmUvLnZ7+3RXw9mQXWXB5ktaGJDrDC3lnqTTQUZ2ZaKE
 JIh/jOTqbNrhYHqDzy9smpWsayWrrcV5mMamOmuNgTjEUzFlCYEINoxhH Q==;
X-CSE-ConnectionGUID: BYYl4VLMTFWQdihy0p/F/w==
X-CSE-MsgGUID: C5gX3fsySC+qKiLqfIsxAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892501"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892501"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:10 -0800
X-CSE-ConnectionGUID: SCXSOCCURUOuvMM1RMSdnA==
X-CSE-MsgGUID: o8D8Igi+SbuqNGlIzFmXTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694260"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:08 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 05/11] drm/i915/ddi: Simplify the port enabling via
 DDI_BUF_CTL
Date: Fri, 14 Feb 2025 16:19:55 +0200
Message-ID: <20250214142001.552916-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
References: <20250214142001.552916-1-imre.deak@intel.com>
MIME-Version: 1.0
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

In the past intel_digital_port::dp.prepare_link_retrain() could be
called directly (vs. from a modeset) to retrain an enabled link. In that
case the port had to be first disabled and then re-enabled. That changed
with commit 2885d283cce5 ("drm/i915/dp: Retrain SST links via a modeset
commit"), after which the only way prepare_link_retrain() can be called
is from a modeset during link training when the port is still disabled.
Simplify things accordingly, assuming the disabled port state.

v2: Don't use drm_i915_private in intel_ddi_prepare_link_retrain(). (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 24 +++++-------------------
 1 file changed, 5 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1e7ae93340ff4..68c93071720ec 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3765,8 +3765,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	 * necessary disable and enable port
 	 */
 	dp_tp_ctl = intel_de_read(display, dp_tp_ctl_reg(encoder, crtc_state));
-	if (dp_tp_ctl & DP_TP_CTL_ENABLE)
-		mtl_disable_ddi_buf(encoder, crtc_state);
+
+	drm_WARN_ON(display->drm, dp_tp_ctl & DP_TP_CTL_ENABLE);
 
 	/* 6.d Configure and enable DP_TP_CTL with link training pattern 1 selected */
 	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
@@ -3805,30 +3805,16 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	u32 dp_tp_ctl, ddi_buf_ctl;
-	bool wait = false;
+	u32 dp_tp_ctl;
 
 	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 
-	if (dp_tp_ctl & DP_TP_CTL_ENABLE) {
-		ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
-		if (ddi_buf_ctl & DDI_BUF_CTL_ENABLE) {
-			intel_de_write(dev_priv, DDI_BUF_CTL(port),
-				       ddi_buf_ctl & ~DDI_BUF_CTL_ENABLE);
-			wait = true;
-		}
-
-		dp_tp_ctl &= ~DP_TP_CTL_ENABLE;
-		intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
-		intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-
-		if (wait)
-			intel_wait_ddi_buf_idle(dev_priv, port);
-	}
+	drm_WARN_ON(display->drm, dp_tp_ctl & DP_TP_CTL_ENABLE);
 
 	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
-- 
2.44.2

