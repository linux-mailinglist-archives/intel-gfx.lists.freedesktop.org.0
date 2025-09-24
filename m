Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E07BB99877
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8AB510E6EF;
	Wed, 24 Sep 2025 11:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HsdeZQ8+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DD2310E6F8;
 Wed, 24 Sep 2025 11:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758711936; x=1790247936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D6ej1g4+hfLaQpw9i6oGqhLKpGIZyAqdvTn1MogOrPo=;
 b=HsdeZQ8+wmcumRAtDO1tE2GAZe6rC2GYAiKaERVMKFCUvrJKbNsQJXiD
 k+VpPx46l8Pdzj4gi//RQn/Dfp/sMYFBwHPzt5bGQQZPi81LGsj7+iwzC
 RihsdlCrcNCqMUEF1My38I1256RrTGS2Vl/KQr1qQioiYU0L2G5kuQRiZ
 8OVsIwVVb3Lu5YQRF6NN9MDPwEHf4m8O74KBtYANmmtSru/hDabw25GNg
 mMsfEdYiak6nVFb76Salya0tmC/Y4tSXdFkLItCEYz1FmyQ/4j1eEMEis
 +ZdDfPPml0hrhTMKO6fd2Ed4mXcuKt3CThjv6t9azgVo0xFAp3OBbiYJm w==;
X-CSE-ConnectionGUID: 6BxIMT3sR1myGdUCQ1CLlQ==
X-CSE-MsgGUID: jgJhEI7iQbSnoqtXllSXeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71247832"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71247832"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:04:59 -0700
X-CSE-ConnectionGUID: 5suQyyIITo+kE1xKUAuEFQ==
X-CSE-MsgGUID: 0hKeTm/eQ9GW69FvGsUUSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176944096"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:04:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/9] drm/i915/dsb:
 s/intel_dsb_wait_vblank_delay/intel_dsb_wait_for_delayed_vblank
Date: Wed, 24 Sep 2025 16:21:25 +0530
Message-ID: <20250924105129.2771196-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
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

The helper intel_dsb_wait_vblank_delay() is used in DSB to wait for the
delayed vblank after the send push operation. Rename it to
intel_dsb_wait_for_delayed_vblank() to align with the semantics.

v2: Rename to intel_dsb_wait_vblank_delay instead of the proposed SCL
semantics, as this will be ot only about SCL lines with different timing
generator and different refresh rate modes. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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
index 050b6849dedc..b57efd870774 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7271,7 +7271,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
-		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
 		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
 					  new_crtc_state);
 		intel_dsb_interrupt(new_crtc_state->dsb_commit);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index dee44d45b668..135d40852e4c 100644
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

