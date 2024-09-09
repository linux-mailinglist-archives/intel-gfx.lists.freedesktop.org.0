Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 536E697191A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5E4410E4E9;
	Mon,  9 Sep 2024 12:16:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AGj5MphJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D327C10E4E7;
 Mon,  9 Sep 2024 12:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884181; x=1757420181;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1wUgmu1YITJrHDb4/yTsP2GcsJc8nz3BqNGqGZyzfo8=;
 b=AGj5MphJ2MU0rt7ubiu8mtVeFbKKAE0H9pWUvY7Oq/rUCPB5Kdx5nsi1
 VuuOSHa1Ppk5wKGkJwUnvyZ9jbqkLxEO9jx/Yhs/YKKBSbsNRjc/YBln7
 gH6nS3fFCAp3aiHDASZoxM7g3pYdKQLky1F2po/KT3yGpkjPMqh/dQ8fX
 BKP8rHJWMbdZ67jkg5PgKPasBgkG6cDobO2zbN+v6agwLOYTBv70pIn7S
 UE5QkQ7tDJOgOc1OEpDYaeFbIp+qwbqDswtd6JHz2RS8yj5jPuCVgb2Q0
 2o2zOacezIPmQzDDjCD63Y09QZc4jlZs1TIQZUGPmQ22bjAz3omxJJd7v Q==;
X-CSE-ConnectionGUID: 5rI2LXTyRpeC+CR8h1ZKZQ==
X-CSE-MsgGUID: TegvJHdTTaS7w1cUgk+eSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="35719383"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="35719383"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:20 -0700
X-CSE-ConnectionGUID: 0RDDG2z1QOmjL1tfeKo6ag==
X-CSE-MsgGUID: HNKPtERnTmqtBxWJVYh9bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="89942924"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 6/8] drm/i915/pps: rename vlv_pps_init() to
 vlv_pps_port_enable()
Date: Mon,  9 Sep 2024 15:15:41 +0300
Message-Id: <6123d8aa71f352cfe58cf2285c0bb19d58d999e0.1725883885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725883885.git.jani.nikula@intel.com>
References: <cover.1725883885.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Follow the naming for vlv_pps_port_disable(), as these are counterparts.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_pps.c | 5 +++--
 drivers/gpu/drm/i915/display/intel_pps.h | 4 ++--
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index e3db1cba11c9..796ec2244a4d 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -690,7 +690,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 
 	with_intel_pps_lock(intel_dp, wakeref) {
 		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-			vlv_pps_init(encoder, pipe_config);
+			vlv_pps_port_enable(encoder, pipe_config);
 
 		intel_dp_enable_port(intel_dp, pipe_config);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 33fae565588a..c91d14face20 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1227,8 +1227,9 @@ void vlv_pps_pipe_reset(struct intel_dp *intel_dp)
 		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
 }
 
-void vlv_pps_init(struct intel_encoder *encoder,
-		  const struct intel_crtc_state *crtc_state)
+/* Call on all DP, not just eDP */
+void vlv_pps_port_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 58df4cd3addd..b57a0c448e6c 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -48,8 +48,8 @@ void intel_pps_reset_all(struct intel_display *display);
 
 void vlv_pps_pipe_init(struct intel_dp *intel_dp);
 void vlv_pps_pipe_reset(struct intel_dp *intel_dp);
-void vlv_pps_init(struct intel_encoder *encoder,
-		  const struct intel_crtc_state *crtc_state);
+void vlv_pps_port_enable(struct intel_encoder *encoder,
+			 const struct intel_crtc_state *crtc_state);
 void vlv_pps_port_disable(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state);
 
-- 
2.39.2

