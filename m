Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84AE5A42CC6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 20:30:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48EFD10E4FA;
	Mon, 24 Feb 2025 19:30:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hZHd3C4Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B075110E4F0;
 Mon, 24 Feb 2025 19:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740425420; x=1771961420;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=F2ndRzzv9RdxqB4+mjAP/ULX7oQx30cTeJS9NGvP7H8=;
 b=hZHd3C4ZtWuPqv9czM5FQ5K0p4eeTPvYfyoWOiQRTE6yum+Ndbi+4XS3
 XUk0vM810fUIIkADZQlql27sUfMVHUGvarmywbK41tu2MFzlNOvTqJ1TI
 3EEPzK4yWPv6saZiGUJoJJ3PTevZd3GqQSMYr3UYeiNKEPgt1gutZJS4o
 TDSI/ltzQws6CiVWiaoJ1XFolpaHr6pTPYw0Yzfr95OISSnsDzopaPpO4
 +YjrmpNwoCoCyHfELZyIywJBBvMdausYqpWpJaEx57bg3PmHN3tu4ZAo7
 U3eDH9kuifxkklKO59+fCGFIfkunKMEy2sIM/jq/xi6lQE69/4PN1vZOB Q==;
X-CSE-ConnectionGUID: abMpEObWTH+yo0zYmwsfiQ==
X-CSE-MsgGUID: 7jx1pzH+SvO/8hC/YiV/5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40388257"
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="40388257"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:20 -0800
X-CSE-ConnectionGUID: f0L/E0/8TEKCyojPNkJf1Q==
X-CSE-MsgGUID: tjN55mGjSJGrrCCsFnqXGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,312,1732608000"; d="scan'208";a="116169062"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 11:30:18 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 4/5] drm/i915/dp: Queue a link check after link training is
 complete
Date: Mon, 24 Feb 2025 21:31:14 +0200
Message-ID: <20250224193115.2058512-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250224193115.2058512-1-imre.deak@intel.com>
References: <20250224193115.2058512-1-imre.deak@intel.com>
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
index 1519c202bf8c1..75bc7cde8165e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1123,6 +1123,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	intel_dp->link_trained = true;
@@ -1137,6 +1138,13 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	}
 
 	intel_hpd_resume(encoder);
+
+	if (!display->hotplug.ignore_long_hpd &&
+	    intel_dp->link.seq_train_failures < 2) {
+		int delay_ms = intel_dp->link.seq_train_failures ? 0 : 2000;
+
+		intel_encoder_link_check_queue_work(encoder, delay_ms);
+	}
 }
 
 static bool
@@ -1641,7 +1649,6 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
 	} else if (passed) {
 		intel_dp->link.seq_train_failures = 0;
-		intel_encoder_link_check_queue_work(encoder, 2000);
 		return;
 	}
 
@@ -1664,10 +1671,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
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

