Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E34971916
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8AD10E47D;
	Mon,  9 Sep 2024 12:16:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUbuzacl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C85E10E47D;
 Mon,  9 Sep 2024 12:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884164; x=1757420164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nj6F/AFGAUhSPjZP1Zgun/Kztcw9Prl/4zYLEJ8ERr4=;
 b=eUbuzaclWHBdZo/7XlWpDSCURm1LOCbUP5+8V1VMf1Edflya6DxNTFdw
 WPngeB0+uCoJbKHbKmpiWAhk9BTD/84v9Vj1LrnBMpm9t2leG5Pf9GTAO
 aqr6Yf/ZfE0evA5ckj+QoShcV7Yj4U9IjRzMUFTBBuIf/+aCc5w5mF8F+
 Zyq0zrANmm0tDGm9W3q2CsrEiaheMtQqVlXPuOi9O5K8x9Js1n9K12+Y5
 VF5W40YEn8zZ51GCV0kRagoK7kxftRpe4qkRRDSK4Kg4XqxI35rOK652K
 blzAKuJLrGcHufh09lP85wXUj0bewj3ga1F0iaNErHgOx+7PY5S32GmRg g==;
X-CSE-ConnectionGUID: M2YUdwvVSkSfQooz41Pqhw==
X-CSE-MsgGUID: LBaESxnuRA+aBZLkYKWYFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="27500895"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="27500895"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:04 -0700
X-CSE-ConnectionGUID: gs5ddkXcQQmBJJ6IQBkgfA==
X-CSE-MsgGUID: vGJeeVO/T3SZUEfqVhbfjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="67383698"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:16:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 3/8] drm/i915/pps: add vlv_pps_pipe_init()
Date: Mon,  9 Sep 2024 15:15:38 +0300
Message-Id: <d400819a5017a42223fa226a58892ba974b22c79.1725883885.git.jani.nikula@intel.com>
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

We need to track PPS also for non-eDP usage on VLV/CHV. Add new
vlv_pps_pipe_init() for initializing the related parts, hiding the PPS
pipe details inside PPS code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 6 ++----
 drivers/gpu/drm/i915/display/intel_pps.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_pps.h | 2 ++
 3 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e36a7820fec..f0866ddc707e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6869,10 +6869,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
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
index 2fb32ac1b7cf..c316950218c0 100644
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
index 0c5da83a559e..3061fab30097 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -42,9 +42,11 @@ void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
 
 bool intel_pps_init(struct intel_dp *intel_dp);
 void intel_pps_init_late(struct intel_dp *intel_dp);
+
 void intel_pps_encoder_reset(struct intel_dp *intel_dp);
 void intel_pps_reset_all(struct intel_display *display);
 
+void vlv_pps_pipe_init(struct intel_dp *intel_dp);
 void vlv_pps_init(struct intel_encoder *encoder,
 		  const struct intel_crtc_state *crtc_state);
 
-- 
2.39.2

