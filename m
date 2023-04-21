Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5536A6EA99B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6702110EE01;
	Fri, 21 Apr 2023 11:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7416A10EE01
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077689; x=1713613689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4pRVioIhuEnXKJ9TvE2lvghrZLqZjfbEbxovOWRcYV0=;
 b=mEMdSflJDZO+5YwWVnSC4cg4ImhJAHFyzbAIKe6woMI0n9OM5sxlw3t1
 akNuRzGak0jq2wTGwQunmXrhDjlfkvjUFtjljY/TztEFU6Owfu1jKyOt1
 ubqOp52nzboQ6HLexalYXkJq7Ns2Nfc+B4hJbiJXZt/n3lkPlYEsUwFiO
 NaPgSA/BJgoEyAgxs3VgNFY6QAF28QhZ63WjIZGNDeuc5PutiRIftIJ32
 Aymi6AyHXJ89YImOon+nMSiGaOMeF6cCEF1eFdAVnCEXAHwxuZew1Kg1e
 jDk9gHkFvufHBjRd74KfRZtfDVufgoDd7qjXTbj4ghuaYERCWI84KAgqm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="326304811"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="326304811"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694942653"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="694942653"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:41 +0300
Message-Id: <8a2cfca8ae6d50a88b8293557332c86c46825a2e.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/dp: stop caching has_audio in
 struct intel_dp
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the information stored in display info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_types.h   | 1 -
 drivers/gpu/drm/i915/display/intel_dp.c              | 5 ++---
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 77caed2552d0..1416b82fc8a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -237,7 +237,7 @@ static void intel_dp_info(struct seq_file *m,
 
 	seq_printf(m, "\tDPCD rev: %x\n", intel_dp->dpcd[DP_DPCD_REV]);
 	seq_printf(m, "\taudio support: %s\n",
-		   str_yes_no(intel_dp->has_audio));
+		   str_yes_no(intel_connector->base.display_info.has_audio));
 
 	drm_dp_downstream_debug(m, intel_dp->dpcd, intel_dp->downstream_ports,
 				edid ? edid->data : NULL, &intel_dp->aux);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 35c260bd1461..9c9b771cbcbd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1670,7 +1670,6 @@ struct intel_dp {
 	u8 sink_count;
 	bool link_trained;
 	bool has_hdmi_sink;
-	bool has_audio;
 	bool reset_link_params;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1d28a2560ae0..cda69861b00a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2077,6 +2077,7 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_connector *connector = intel_dp->attached_connector;
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(conn_state);
 
@@ -2084,7 +2085,7 @@ static bool intel_dp_has_audio(struct intel_encoder *encoder,
 		return false;
 
 	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
-		return intel_dp->has_audio;
+		return connector->base.display_info.has_audio;
 	else
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
@@ -4712,7 +4713,6 @@ intel_dp_set_edid(struct intel_dp *intel_dp)
 	edid = drm_edid_raw(drm_edid);
 	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
 		intel_dp->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
-		intel_dp->has_audio = drm_detect_monitor_audio(edid);
 	}
 
 	drm_dp_cec_set_edid(&intel_dp->aux, edid);
@@ -4728,7 +4728,6 @@ intel_dp_unset_edid(struct intel_dp *intel_dp)
 	connector->detect_edid = NULL;
 
 	intel_dp->has_hdmi_sink = false;
-	intel_dp->has_audio = false;
 
 	intel_dp->dfp.max_bpc = 0;
 	intel_dp->dfp.max_dotclock = 0;
-- 
2.39.2

