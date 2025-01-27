Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9ACA1D484
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 11:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAFE10E500;
	Mon, 27 Jan 2025 10:29:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RlrJEpBR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F54F10E4FD;
 Mon, 27 Jan 2025 10:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737973769; x=1769509769;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p9mGQOW7wsa9bN1uAnMemn+vytMH6x3I0OFwLlERCj8=;
 b=RlrJEpBRFfZfQXNfkZrDroYj5MMMh2aJDzIksQcPQQUvH1xVQ45meecB
 psoO53UQ3NfsST4mbEMwFuIqkt2qZL92i3sU9maYzw5C/OhpCaTA2Ax5Z
 QmmHSFfs26rUeCfvcZxCJPFIT1jnmvnTe17kTxrZMkdTge7geQgI+wzcR
 +p5fDf7ohLvWpRZzhKVPmbMORVJNCxm4ly+atM1CplGW4TcXTwY76Eamd
 JuAcIWvYC0uGBQ5UkG94vhcpfpSGW1dOVFc4CTTRJ8D/L65qWKSs1/oSP
 qrcjuSs1ux9lApNEWZeu/b+CQS6ucpBl/+WVgQIdgaSciy9zJx1eN2BvU w==;
X-CSE-ConnectionGUID: OofqQhMzSAuFdIYMjiF10A==
X-CSE-MsgGUID: jCBByKQRRJayRwKskj5UOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38529888"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38529888"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:29 -0800
X-CSE-ConnectionGUID: sX4gzPfdRsOFC3i1HwnVfQ==
X-CSE-MsgGUID: F26arNqdSymTpvqGBNVhlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108837939"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.95])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 02:29:28 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, ville.syrjala@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 12/12] drm/i915/psr: Allow DSB usage when PSR is enabled
Date: Mon, 27 Jan 2025 12:28:46 +0200
Message-ID: <20250127102846.1237560-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250127102846.1237560-1-jouni.hogander@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Now as we have correct PSR2_MAN_TRK_CTL handling in place we can allow DSB
usage also when PSR is enabled for LunarLake onwards.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 67041d76763fe..d44703a34b601 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7681,6 +7681,7 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -7696,7 +7697,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	new_crtc_state->use_dsb =
 		new_crtc_state->update_planes &&
 		!new_crtc_state->do_async_flip &&
-		!new_crtc_state->has_psr &&
+		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
 		!new_crtc_state->scaler_state.scaler_users &&
 		!old_crtc_state->scaler_state.scaler_users &&
 		!intel_crtc_needs_modeset(new_crtc_state) &&
-- 
2.43.0

