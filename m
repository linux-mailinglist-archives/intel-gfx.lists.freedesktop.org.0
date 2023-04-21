Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0175A6EA99E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 475B410E0B0;
	Fri, 21 Apr 2023 11:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1367C10E066
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077700; x=1713613700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gqKdrI1gJXf5kUq01M/bRtm0+D1dizCoROLsjGTP47k=;
 b=fO+tA4AqqjAhveUnZNzgnV91hQTQk4PDHMJOvaZBzNRzORA7g1FZ0Hoq
 IH+lgOXX4cbWyfe0/7D+0+2XXFmJr7e7TVJJhez+6L9Q5Te94UUkI2ivI
 oHFKYGr1KT19oQVZ6HAzNVt4RTUYyCwCvpUpnIEkLR/rIWmq4VbvSePfR
 Ajz+tk/3TIL7zzsIw4e1Ebv3nz00tBKqPsCmoRHJ6o41qDnv+lEc2vn8n
 HdlXT6t1n2KJZLjS3qW/HIx6+i3k22AwXCyu7Dps3XB3cz2ftsKNi3PYN
 ldL3G3sk7PA6dyDr0URbCvQnl14c+hhh2UZyNsgmIQ5thaH2fobpRUIC7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="326304833"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="326304833"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="694942698"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="694942698"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:44 +0300
Message-Id: <71d2795970723d83a446239c72e4d2e9ebbe112e.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/hdmi: stop caching has_hdmi_sink
 in struct intel_hdmi
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
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 drivers/gpu/drm/i915/display/intel_hdmi.c          | 8 +++-----
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d7ff75167f1f..dc7f3bf731cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1548,7 +1548,6 @@ struct intel_hdmi {
 		enum drm_dp_dual_mode_type type;
 		int max_tmds_clock;
 	} dp_dual_mode;
-	bool has_hdmi_sink;
 	struct intel_connector *attached_connector;
 	struct cec_notifier *cec_notifier;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 3045bf21ba8f..aa0c726cb525 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1789,7 +1789,9 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
 static bool intel_has_hdmi_sink(struct intel_hdmi *hdmi,
 				const struct drm_connector_state *conn_state)
 {
-	return hdmi->has_hdmi_sink &&
+	struct intel_connector *connector = hdmi->attached_connector;
+
+	return connector->base.display_info.is_hdmi &&
 		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) != HDMI_AUDIO_OFF_DVI;
 }
 
@@ -2359,8 +2361,6 @@ intel_hdmi_unset_edid(struct drm_connector *connector)
 {
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
 
-	intel_hdmi->has_hdmi_sink = false;
-
 	intel_hdmi->dp_dual_mode.type = DRM_DP_DUAL_MODE_NONE;
 	intel_hdmi->dp_dual_mode.max_tmds_clock = 0;
 
@@ -2452,8 +2452,6 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 	/* FIXME: Get rid of drm_edid_raw() */
 	edid = drm_edid_raw(drm_edid);
 	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
-		intel_hdmi->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
-
 		intel_hdmi_dp_dual_mode_detect(connector);
 
 		connected = true;
-- 
2.39.2

