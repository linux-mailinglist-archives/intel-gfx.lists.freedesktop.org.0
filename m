Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 802358C5B95
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0FE710EA36;
	Tue, 14 May 2024 19:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fv7+ml5B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 808E610E816
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714068; x=1747250068;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tsjqdW6VzsXxwAiTu/9B3MvtF75/ZtaJLQYmgWaDhMc=;
 b=fv7+ml5BUKnWALX5TCqbT3bnnhlzczFNMvx9Nw1YcIRU9SKdpuUfxoV9
 +3uGTp6qmzqExjdn+0nVVuTqZtNV/3cRGreg5XmvVe4PZrhYttMZKmdBa
 9ph6cr4XvUcBqUWBegm51lcxqAlS4oGnDbRQYoiZdvUC4CJFJtBMrO3b5
 95SX1cg+fv+tQjuZ3x+ECJuyuJotUgtk3EdwncQgMFJwGu2LfsjwNixCU
 rnj64U05KC8DLZjKHWlKdbQPfkOGpt7tJ868JgH/ptSJOleZsr1sg+c7f
 9uCh7LS0OCrbLtqyT86ZWIY+wEby61esHeL1o3AXDXcfFnZWcRlRtt/Bt w==;
X-CSE-ConnectionGUID: YGO3av/hRROeHGxe1KSuww==
X-CSE-MsgGUID: AYvzUw3kR9uuAFmYJjGKpw==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124995"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124995"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:27 -0700
X-CSE-ConnectionGUID: 7otojH3zQnys1FOqEqxMFg==
X-CSE-MsgGUID: ZLt77+CZQMWhral2LxDl7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724621"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/20] drm/i915/dp: Use check link state work in the detect
 handler
Date: Tue, 14 May 2024 22:14:10 +0300
Message-ID: <20240514191418.2863344-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240514191418.2863344-1-imre.deak@intel.com>
References: <20240514191418.2863344-1-imre.deak@intel.com>
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

Simplify things by retraining a DP link if a bad link is detected in the
connector detect handler from the encoder's check link state work,
similarly to how this is done after a modeset link training failure.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 ++++-------
 drivers/gpu/drm/i915/display/intel_dp.h |  2 --
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e47c4daafa348..a41a63b8ae5f0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5146,8 +5146,8 @@ static bool intel_dp_is_connected(struct intel_dp *intel_dp)
 		intel_dp->is_mst;
 }
 
-int intel_dp_retrain_link(struct intel_encoder *encoder,
-			  struct drm_modeset_acquire_ctx *ctx)
+static int intel_dp_retrain_link(struct intel_encoder *encoder,
+				 struct drm_modeset_acquire_ctx *ctx)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -5881,11 +5881,8 @@ intel_dp_detect(struct drm_connector *connector,
 	 * Some external monitors do not signal loss of link synchronization
 	 * with an IRQ_HPD, so force a link status check.
 	 */
-	if (!intel_dp_is_edp(intel_dp)) {
-		ret = intel_dp_retrain_link(encoder, ctx);
-		if (ret)
-			return ret;
-	}
+	if (!intel_dp_is_edp(intel_dp))
+		intel_dp_check_link_state(intel_dp);
 
 	/*
 	 * Clearing NACK and defer counts to get their exact values
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index afebe0e889c32..7c938327fc725 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -54,8 +54,6 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      u8 *pipe_mask);
-int intel_dp_retrain_link(struct intel_encoder *encoder,
-			  struct drm_modeset_acquire_ctx *ctx);
 void intel_dp_check_link_state(struct intel_dp *intel_dp);
 void intel_dp_queue_link_check(struct intel_dp *intel_dp, int delay_ms);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
-- 
2.43.3

