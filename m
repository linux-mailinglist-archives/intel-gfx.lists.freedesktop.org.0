Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B899A32070
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A3CD10E7F4;
	Wed, 12 Feb 2025 07:58:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WlH/6sBX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D3010E7F4;
 Wed, 12 Feb 2025 07:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347094; x=1770883094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8TBvc+pPqWn4Y2C8qEqHR8ariik/CtZFlVZ8Uu61qw8=;
 b=WlH/6sBXJegRoRCHMswPcfuXZ9NwSZjAIjr9SBUCsE5xOzz1AToRm63c
 pD4dUKjwWWYcGyjp3oLjbdDlDkj8r9kBhkfLh5MHsiVw865MyAEWSrASo
 AbGCNT6eNsvRgyYe8aKF6tOaedvg2B8BsfJLiuySPYiXRB7UxOyXOymtU
 qtzEIpmAPqaTFAPI91+l5bsEzZaZrVKVxR3RReoJKBPu+UUwmXa6Sc8XR
 C+z2/bz3HIjs4ekJWrwwqU9vhNcBTedypxfS3YtjJTzakvazv5J1pkdNb
 1kQYmmxO/8OXiiu2hvp3L3WmLDA1/ydkmbcpV9mIkkMp6AYp14B3LQj9P Q==;
X-CSE-ConnectionGUID: zpyFOHR4TLWNqoE4QttS0A==
X-CSE-MsgGUID: u0sEa57FR6KyZgTAefhlMw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973660"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973660"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:14 -0800
X-CSE-ConnectionGUID: bYMC85jISiGWJoEVtyxTvQ==
X-CSE-MsgGUID: 64gQpsc7TAarQqA96rFkDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836950"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:13 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 13/13] drm/i915/psr: Allow DSB usage when PSR is enabled
Date: Wed, 12 Feb 2025 09:57:42 +0200
Message-ID: <20250212075742.995022-15-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212075742.995022-1-jouni.hogander@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
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
index 0ba85623835c..a6966a664d87 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7698,6 +7698,7 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -7713,7 +7714,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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

