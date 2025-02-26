Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DC1A467CC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 18:18:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDF1A10E97C;
	Wed, 26 Feb 2025 17:18:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SyBo/Ffo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A157B10E96F;
 Wed, 26 Feb 2025 17:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740590310; x=1772126310;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rYP85rnRXx60XHyQ+lN2Iq0Q6/4ZZWj09sdW6r0YdqA=;
 b=SyBo/Ffo2qmGh22RnkdaO+H6syRatwWx+0rJugheLuavqHe7dsEl2UkC
 x1b8krcj9xwqFte3D4FpEnXrla/bWiUzDxvEyyf2gNkslYKEQQDQebWpn
 2xm1NPiVPUV9iNHhPYRIvdMDhZB128KoHPyWjSL2uHqYRsnZ1qPRITH8V
 lccXC69W5bPU9SrJG4FElxSANAwCqymmqqxic934+ikGuiWnsK4LhG+DH
 FINVPS2wbjr057eJlJV2ac7d6fR9WSJ4Vo9etEhD0HO+91FcmE+z7idZY
 qV5p5Lreg0iWng6bXUXUfQ+o7OypEw4ugvlaL/Z0GUHmptQ1ipqfqOUhw Q==;
X-CSE-ConnectionGUID: nwYu5cIPRumvXzbl0SbfDw==
X-CSE-MsgGUID: I6tclqa9Tje98lTsAnyfbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="40628477"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="40628477"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:28 -0800
X-CSE-ConnectionGUID: nkoaC/7mRXGlspJMZj7C/Q==
X-CSE-MsgGUID: U7SbiyMqRIe+YS6EX9kGew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="121371358"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 09:18:27 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 4/5] drm/i915/dp: Queue a link check after link training is
 complete
Date: Wed, 26 Feb 2025 19:19:22 +0200
Message-ID: <20250226171924.2646997-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250226171924.2646997-1-imre.deak@intel.com>
References: <20250226171924.2646997-1-imre.deak@intel.com>
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

After link training - both in case of a passing and failing LT result -
a work is scheduled to check the link state. This check should take
place after the link training is completed by disabling the link
training pattern and setting intel_dp::link_trained=true. Atm, the work
is scheduled before these steps, which may result in checking the link
state too early (and thus not retraining the link as expected).

Fix the above by scheduling the link check work after link training is
complete.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c   | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ce0601a4f0e20..3316a830e18d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1109,6 +1109,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	intel_dp->link_trained = true;
@@ -1123,6 +1124,13 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	}
 
 	intel_hpd_unblock(encoder);
+
+	if (!display->hotplug.ignore_long_hpd &&
+	    intel_dp->link.seq_train_failures < 2) {
+		int delay_ms = intel_dp->link.seq_train_failures ? 0 : 2000;
+
+		intel_encoder_link_check_queue_work(encoder, delay_ms);
+	}
 }
 
 static bool
@@ -1627,7 +1635,6 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
 	} else if (passed) {
 		intel_dp->link.seq_train_failures = 0;
-		intel_encoder_link_check_queue_work(encoder, 2000);
 		return;
 	}
 
@@ -1650,10 +1657,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (intel_dp->link.seq_train_failures < 2) {
-		intel_encoder_link_check_queue_work(encoder, 0);
+	if (intel_dp->link.seq_train_failures < 2)
 		return;
-	}
 
 	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
 		return;
-- 
2.44.2

