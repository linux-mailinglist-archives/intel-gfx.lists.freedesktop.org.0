Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D6697BFD3
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:48:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B9510E60F;
	Wed, 18 Sep 2024 17:48:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fjVGCOnu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF51910E60F;
 Wed, 18 Sep 2024 17:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726681696; x=1758217696;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VrXkDiODxFwkxb8rzuo0QITXBf3gQH4u1BWImgCYya0=;
 b=fjVGCOnuXtN+4yiEDO4XkbMONDKDgnnSirJndCLLJg+z7EFz9n1+59N0
 0E9N8/hbNwEGGylxFjwCmMfY6Z4VijBVzEkt1xKDGHE1UUJ7BTOg4lVMH
 REJ9jY390f2dv698/5p2WZTprtqy6m96esx38zX3WMLQ5dBKhWgNivg2G
 2uqXjgTvfpLzNYEpc6mpW4xZaC9/vwW8ybtSNIUbZCM0Eh3lvNw83IjOF
 wv8spljlXqZn4RE+gUGCovvkIGuw3LU97n0Cs5QQa5mmSw1Gndpg0JAE3
 +1LXrxb6Hy9v+kua9ncm5CJtCzk+33sxwOuqKPIhGx8xtn5yapLa10uDi w==;
X-CSE-ConnectionGUID: aFVskMDGSwu7fCob5oJSZA==
X-CSE-MsgGUID: qyImzdyDSwGYCJ45F56rtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25095142"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25095142"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:16 -0700
X-CSE-ConnectionGUID: 55M/o4XrSeCTz/F4ay7iyg==
X-CSE-MsgGUID: epTTnyyPSRuWSAQXKGwocw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="74447341"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 4/9] drm/i915/pps: add vlv_pps_pipe_init()
Date: Wed, 18 Sep 2024 20:47:44 +0300
Message-Id: <2829a5bab5e9a4dcddc3a2bb87e12559000543ea.1726681620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726681620.git.jani.nikula@intel.com>
References: <cover.1726681620.git.jani.nikula@intel.com>
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

We need to track PPS also for non-eDP usage on VLV/CHV. Add new
vlv_pps_pipe_init() for initializing the related parts, hiding the PPS
pipe details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 6 ++----
 drivers/gpu/drm/i915/display/intel_pps.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_pps.h | 1 +
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9f908dbd45ea..12706f24a36d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6893,10 +6893,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp_set_default_sink_rates(intel_dp);
 	intel_dp_set_default_max_sink_lane_count(intel_dp);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
-		intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
-		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
-	}
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		vlv_pps_pipe_init(intel_dp);
 
 	intel_dp_aux_init(intel_dp);
 	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 649dc6ad2278..5957e79186f0 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1211,6 +1211,13 @@ static void vlv_steal_power_sequencer(struct intel_display *display,
 	}
 }
 
+/* Call on all DP, not just eDP */
+void vlv_pps_pipe_init(struct intel_dp *intel_dp)
+{
+	intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
+	intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
+}
+
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index 0c5da83a559e..5686e900e7de 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -45,6 +45,7 @@ void intel_pps_init_late(struct intel_dp *intel_dp);
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct intel_display *display);
 
+void vlv_pps_pipe_init(struct intel_dp *intel_dp);
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state);
 
-- 
2.39.2

