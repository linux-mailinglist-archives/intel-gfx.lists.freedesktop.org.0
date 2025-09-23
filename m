Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8852BB96004
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 15:24:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5930210E613;
	Tue, 23 Sep 2025 13:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncip6FdH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F89510E60C;
 Tue, 23 Sep 2025 13:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758633855; x=1790169855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CBayFc7UKUpTCYsHcJFUjmUdIG8TXoQNeMVhsYEVzvg=;
 b=ncip6FdHxNrEWBJZwyZG3o6OaGueKAmvobxRz7LrQ/NOQUH/MP0/Bs7Y
 PlTrAnV1X/hyFZfiHOXYcRt7C0MRGEGY0DvClpiy8M3A3kM0D9ODpVIjM
 4HOT8a1Oe+wUj/DgNsTnTqcKudDNEpKUnZIEEHRp6cg/UMveSrc9xRMM7
 blGcm/qz51lcNGsFDcQLfR0UgytnjlYGn+F6HgiJp/mrDpGLW+KMacd6x
 zJxrBWboAc2O9XDCDxe0ZyXnFBNZuBHIOhNx9koXgqgjC0bG2M70PcQZw
 jbtiy6EfMpAJ+Jz59qw8Fz7B/+TXGPJ8uf15fWUr//UiAqoK86o6jHsbz A==;
X-CSE-ConnectionGUID: nI3DXgTKTXKa3w+TER3V9Q==
X-CSE-MsgGUID: AbfMkOMYTRGPvZ9ZKwGAGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48480559"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48480559"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:15 -0700
X-CSE-ConnectionGUID: W/Nh2NvlScOaXwxee6lFMw==
X-CSE-MsgGUID: LFu6piZ8SpOsdIxzc0hSIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207689563"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/9] drm/i915/dsb:
 s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_delayed_vblank
Date: Tue, 23 Sep 2025 18:40:40 +0530
Message-ID: <20250923131043.2628282-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
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

The helper intel_dsb_wait_vblank_delay() is used in DSB to wait for the
delayed vblank after the send push operation. Rename it to
intel_dsb_wait_for_delayed_vblank() to align with the semantics.

v2: Rename to intel_dsb_wait_vblank_delay instead of the proposed SCL
semantics, as this will be ot only about SCL lines with different timing
generator and different refresh rate modes. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dsb.c     | 4 ++--
 drivers/gpu/drm/i915/display/intel_dsb.h     | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 671db6926e4c..51db70d07fae 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2013,7 +2013,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 
 	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
 		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
-		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
+		intel_dsb_wait_for_delayed_vblank(state, crtc_state->dsb_color);
 		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
 		intel_dsb_interrupt(crtc_state->dsb_color);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index aceafe4478d9..445400ed6592 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7268,7 +7268,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
-		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
 		intel_dsb_interrupt(new_crtc_state->dsb_commit);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index ca31e928ecb0..0584a9597327 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -815,8 +815,8 @@ void intel_dsb_chain(struct intel_atomic_state *state,
 			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
 }
 
-void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
-				 struct intel_dsb *dsb)
+void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
+				       struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
 	const struct intel_crtc_state *crtc_state =
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index c8f4499916eb..2f31f2c1d0c5 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -48,8 +48,8 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb);
 void intel_dsb_interrupt(struct intel_dsb *dsb);
 void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
 void intel_dsb_wait_vblanks(struct intel_dsb *dsb, int count);
-void intel_dsb_wait_vblank_delay(struct intel_atomic_state *state,
-				 struct intel_dsb *dsb);
+void intel_dsb_wait_for_delayed_vblank(struct intel_atomic_state *state,
+				       struct intel_dsb *dsb);
 void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 				struct intel_dsb *dsb,
 				int lower, int upper);
-- 
2.45.2

