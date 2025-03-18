Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B97F0A66C77
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Mar 2025 08:47:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C77610E354;
	Tue, 18 Mar 2025 07:47:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W7rsBRpq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8169410E34A;
 Tue, 18 Mar 2025 07:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742284067; x=1773820067;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fjRQI7+XyuhqlYNzouiLm9YBnas0Hb1ABgzhKBNhcU4=;
 b=W7rsBRpqICw6mZM2TFjGwK91Xo0pylFv0m1MKvsZ0sU5WQeIPiRF8h2q
 n5yA1/WOU1NuLywrk/plBKms43s63HTDb3J9DfQZ4cW+0OkEN5nOBwReU
 hL/lvSZYblPBNO1YBck5Q9dvi2OHVyuB3O8tvAJ+jnIXWA7CZ06GJEyWh
 eUtbTE5YoxLBQmRHGHAmNM8KmYUyUIAiWX76U/Gc4Wf4X1uo81d3fxgRA
 FKF5aJZtbv7jA7OcufgoIKAZi7quTHXsmagT0anxrzap5XWmns+tF1PGX
 +26B/LogWSw5+OBtRQHijScJ9YT3+I91/gGmFyCh5Jjuyj0gWzbjlZrks A==;
X-CSE-ConnectionGUID: ApNzsAA2RJmp3yWuidEzLw==
X-CSE-MsgGUID: /2KX1CluRCO1DWiY+rpWOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="46173787"
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="46173787"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:46 -0700
X-CSE-ConnectionGUID: 1yg46hGjT9qKwC/gaIB5SQ==
X-CSE-MsgGUID: LYSQe9q0REaAI2Ayeqj6Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,256,1736841600"; d="scan'208";a="122681613"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 00:47:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 06/16] drm/i915/display: Move intel_psr_post_plane_update() at
 the later
Date: Tue, 18 Mar 2025 13:05:30 +0530
Message-ID: <20250318073540.2773890-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

In intel_post_plane_update() there are things which might need to do
vblank waits, so enabling PSR as early as we do now is simply
counter-productive. Therefore move intel_psr_post_plane_update() at the
last of intel_post_plane_update().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 246da49af00b..4a0083fdfb05 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1048,8 +1048,6 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
-	intel_psr_post_plane_update(state, crtc);
-
 	intel_frontbuffer_flip(dev_priv, new_crtc_state->fb_bits);
 
 	if (new_crtc_state->update_wm_post && new_crtc_state->hw.active)
@@ -1078,6 +1076,8 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
+
+	intel_psr_post_plane_update(state, crtc);
 }
 
 static void intel_post_plane_update_after_readout(struct intel_atomic_state *state,
-- 
2.45.2

