Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA348C5B94
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2024 21:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7458710EA30;
	Tue, 14 May 2024 19:14:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eBH2WfHs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6042510E816
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2024 19:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715714067; x=1747250067;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4nI5rm+aw32IKk1WHjQwl/9eMVP5mL6QIsmKBbnl/r0=;
 b=eBH2WfHsgSpKCdwfjZrgw24vDo4NdhMvOykkNu9nRBYS8xkEklM8ZA2z
 M70Q6BynriT7feL8rjUpPlkQf7nSDo7cSZfN5eF5Kfs2mEZmGoEVBxnlR
 YKhVTK/7XbJZdOxu41ir0FUd6gcX2rsAndMPrv4+OotHeJvCj454B84hr
 51EDzPlcMAUtemSNBx+UZoap2+2w+BwDoZsfuuA63r1QJlYV36kHaLmzG
 a/keEPaFfpVtpgL5CQmm8AN5MwUuD3KaFhPpXpoAEu/iN49asbjcQn2ET
 xiUmNqfmDGxzOZ9n8XeLeyFJHF6d3E2ubSrHio23nhedjT+Zc+Fyhfgjk g==;
X-CSE-ConnectionGUID: 7sf0RD/6SYesBIxSJppLGg==
X-CSE-MsgGUID: 2/suyR7dSomTWCMwLp74Tg==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="23124992"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23124992"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:26 -0700
X-CSE-ConnectionGUID: VGXRxvpnQw6fcFuq8duaWw==
X-CSE-MsgGUID: UTJ/vKrqRcSeh+WTwz2Z7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30724617"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2024 12:14:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/20] drm/i915/dp: Send a link training modeset-retry uevent
 to all MST connectors
Date: Tue, 14 May 2024 22:14:08 +0300
Message-ID: <20240514191418.2863344-11-imre.deak@intel.com>
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

Send a modeset-retry uevent to all connectors in the same MST topology
after a link training failure and reduction of the link parameters. This
matches the way the same uevent is sent after a DP tunnel BW allocation
failure.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c               | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h               | 1 -
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 ++--
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6969d35b6bb0a..e0f1d020033ce 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2791,7 +2791,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
 					intel_dp_is_uhbr(pipe_config);
 }
 
-void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
+static void intel_dp_queue_modeset_retry_work(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 05016e13fb944..9d75a9446df58 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -44,7 +44,6 @@ bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state);
 int intel_dp_min_bpp(enum intel_output_format output_format);
 void intel_dp_init_modeset_retry_work(struct intel_connector *connector);
-void intel_dp_queue_modeset_retry_work(struct intel_connector *connector);
 void intel_dp_queue_modeset_retry_for_link(struct intel_encoder *encoder);
 bool intel_dp_init_connector(struct intel_digital_port *dig_port,
 			     struct intel_connector *intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6b0aab278ae8d..769ad93f615e8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1189,7 +1189,7 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 						     const struct intel_crtc_state *crtc_state)
 {
-	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 
 	if (!intel_digital_port_connected(&dp_to_dig_port(intel_dp)->base)) {
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Link Training failed on disconnected sink.\n");
@@ -1205,7 +1205,7 @@ static void intel_dp_schedule_fallback_link_training(struct intel_dp *intel_dp,
 	}
 
 	/* Schedule a Hotplug Uevent to userspace to start modeset */
-	intel_dp_queue_modeset_retry_work(intel_connector);
+	intel_dp_queue_modeset_retry_for_link(encoder);
 }
 
 /* Perform the link training on all LTTPRs and the DPRX on a link. */
-- 
2.43.3

