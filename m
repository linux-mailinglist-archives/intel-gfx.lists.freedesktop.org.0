Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4D02EF6BC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CC1F6E861;
	Fri,  8 Jan 2021 17:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44726E861
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:45:39 +0000 (UTC)
IronPort-SDR: +VFxXRS/CrxS7MbjVmK+sRiumAAibZVMm25chVNpi2K5/hAMkkdvk4eQ/htppVo4PWi+KUhAMp
 lU6fgoanQUfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="176852905"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="176852905"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:39 -0800
IronPort-SDR: N6GiVs4goip43anSwYiZuOeEdpNeG7sEIaFJ0NaYl6y7bxAxiJ+lLbcBS6ikIEufxhjXsBjbR+
 J4XUw8DGQCKw==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="396368963"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:45:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 19:44:20 +0200
Message-Id: <644b89c1d88d4d2cd7a9426ec7d7ea14eb65a8bc.1610127741.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/17] drm/i915/pps: rename
 vlv_init_panel_power_sequencer to vlv_pps_init
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This function is a bit of an outlier, but try to change to a name that
is more in line with the rest of the intel_pps functions. No functional
changes.

Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_pps.h | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ffb6f6c9b858..a8835e3b1ac1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3516,7 +3516,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 
 	with_intel_pps_lock(intel_dp, wakeref) {
 		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-			vlv_init_panel_power_sequencer(encoder, pipe_config);
+			vlv_pps_init(encoder, pipe_config);
 
 		intel_dp_enable_port(intel_dp, pipe_config);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 79276ab20c75..8925df55e22e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1005,8 +1005,8 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 	}
 }
 
-void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *crtc_state)
+void vlv_pps_init(struct intel_encoder *encoder,
+		  const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index fdf7a17e2dfa..22045c5cdc86 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -43,7 +43,7 @@ void intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct drm_i915_private *i915);
 
-void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
-				    const struct intel_crtc_state *crtc_state);
+void vlv_pps_init(struct intel_encoder *encoder,
+		  const struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PPS_H__ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
