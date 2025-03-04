Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3794FA4E340
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 16:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF9410E629;
	Tue,  4 Mar 2025 15:29:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hXOmKNzf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1FA10E622;
 Tue,  4 Mar 2025 15:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741102169; x=1772638169;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7FiWaUuRURsnANGYzKdtTxj3PracIRdqjP9pZaRz89s=;
 b=hXOmKNzf7PPT/+PH07wGCj77SL900ZPimRKUdD4p2oYTY/O5rkct2CLq
 1XGQBoXJndf0Sgothx4wmjxkI3NRAUXL2jEGD4KEHRlQYaQZYyo9A9SkE
 FoF48fab7BcBL1eRhDWLTfWPlk0H4q/Onwg7WAbpAk2rvSLw4FcIldddM
 Gg1gNw/edMCSXixTc7RXTZB4lgGMoE3ARwicg3oDR+j747Eqj05qKUBIn
 V+X9YNiieVz0nPT8lEyTCMzbGKbjoDc5D+G3xa0Dy8NDoCasvOsVnxCNz
 xQcLNH5KoNNFoNge5+93AR+VPZ2DEOuHp+vi9lr3SG5STsYUrWYgOxdil g==;
X-CSE-ConnectionGUID: K6P1nfQ0S2iCt0U8ewbAOQ==
X-CSE-MsgGUID: aTPRI2c+T52ij6FE0Ul1bA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="59575830"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="59575830"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:28 -0800
X-CSE-ConnectionGUID: wOPZF/JeTPGElU2esoDirw==
X-CSE-MsgGUID: nUlgYJr0Rpm4rF5KNcZBTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118921364"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 07:29:27 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 5/6] drm/i915/dp: Queue a link check after link training is
 complete
Date: Tue,  4 Mar 2025 17:29:16 +0200
Message-ID: <20250304152917.3407080-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250304152917.3407080-1-imre.deak@intel.com>
References: <20250304152917.3407080-1-imre.deak@intel.com>
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
index 3906c11acc968..c1be073b9fc48 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1110,6 +1110,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	intel_dp->link_trained = true;
@@ -1124,6 +1125,13 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
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
@@ -1628,7 +1636,6 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
 	} else if (passed) {
 		intel_dp->link.seq_train_failures = 0;
-		intel_encoder_link_check_queue_work(encoder, 2000);
 		return;
 	}
 
@@ -1651,10 +1658,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
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

