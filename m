Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QCEVNBEWxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:18:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A6F334501
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E889F10E37C;
	Thu, 26 Mar 2026 11:18:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHpfzlN6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB1010E1DE;
 Thu, 26 Mar 2026 11:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774523916; x=1806059916;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aSG1ADNdgeWOS6RsXWBaMbISfQXOJtw+APFlnCgUsaM=;
 b=ZHpfzlN6ghRrMVqCkEZhzyahij3LBhkaOnd/ehUs+eRVR/iyj16lOpkP
 Yz5bcW/gd4Ay5ctPEL3yZpMh5nxiYbM0wbfkFQlb5gL4Sh6hAP9K7O8Rr
 wiITw5sWi4l/lqDf3Wx4Rc480sU8J8PMMJCRwo3rYNgH7oVJEo2hudkC1
 MFCch07+K64HD/IXEkVjfj1MoZtA9d3YvqjSbBEY1D8/BE13nee/+xvtT
 3f3wz4vVzNaY/hXO72/Qex465nVHFrnFkzP2/odTOUfZX+Pz10aVLfXPw
 JWvlZ1aGsXatxRVuBeeMhNHzzZr0gsLjPLgcwwV2AxOMr6n3SuMU45z+Y Q==;
X-CSE-ConnectionGUID: S8muC6FITE+b8NqJAzVShw==
X-CSE-MsgGUID: rbCyvS5lQAmALKG5dtYn6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75692322"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75692322"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:18:36 -0700
X-CSE-ConnectionGUID: 548rGh7qQnWmtZdDnhI/Fg==
X-CSE-MsgGUID: 6uRpm8V1TVaO3AjRSYfNxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="220127456"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:18:35 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/5] drm/i915/dsi: Place clock into LP during LPM if requested
Date: Thu, 26 Mar 2026 13:18:14 +0200
Message-ID: <20260326111814.9800-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260326111814.9800-1-ville.syrjala@linux.intel.com>
References: <20260326111814.9800-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 85A6F334501
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

TGL/ADL DSI can be configured to place the clock lane into
LP state during LPM, if otherwise configured for continuous
HS clock.

Hook that up. VBT tells us whether this should be done.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 6 ++++++
 drivers/gpu/drm/i915/display/icl_dsi_regs.h  | 1 +
 drivers/gpu/drm/i915/display/intel_dsi.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 ++
 4 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 45ba02486c56..afbaa0465842 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -729,6 +729,12 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		else
 			tmp |= CLK_HS_CONTINUOUS;
 
+		if (DISPLAY_VER(display) >= 12 &&
+		    intel_dsi->lp_clock_during_lpm)
+			tmp |= LP_CLK_DURING_LPM;
+		else
+			tmp &= ~LP_CLK_DURING_LPM;
+
 		/* configure buffer threshold limit to minimum */
 		tmp &= ~PIX_BUF_THRESHOLD_MASK;
 		tmp |= PIX_BUF_THRESHOLD_1_4;
diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
index 641e8f0b8cdb..55ab57adcb0f 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
@@ -227,6 +227,7 @@
 #define  CLK_ENTER_LP_AFTER_DATA	(0x0 << 8)
 #define  CLK_HS_OR_LP			(0x2 << 8)
 #define  CLK_HS_CONTINUOUS		(0x3 << 8)
+#define  LP_CLK_DURING_LPM		(1 << 7) /* tgl+ */
 #define  LINK_CALIBRATION_MASK		(0x3 << 4)
 #define  LINK_CALIBRATION_SHIFT		4
 #define  CALIBRATION_DISABLED		(0x0 << 4)
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index f55d48e43af1..9fcdabbf3740 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -80,6 +80,7 @@ struct intel_dsi {
 	/* NON_BURST_SYNC_PULSE, NON_BURST_SYNC_EVENTS, or BURST_MODE */
 	int video_mode;
 
+	bool lp_clock_during_lpm;
 	bool blanking_pkt;
 	bool eot_pkt;
 	bool clock_stop;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index c544871dac0b..fe12041e913c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -718,6 +718,7 @@ void intel_dsi_log_params(struct intel_dsi *intel_dsi)
 		   "burst" : "<unknown>");
 	drm_printf(&p, "Burst mode ratio %d\n", intel_dsi->burst_mode_ratio);
 	drm_printf(&p, "Reset timer %d\n", intel_dsi->rst_timer_val);
+	drm_printf(&p, "LP clock during LPM %s\n", str_enabled_disabled(intel_dsi->lp_clock_during_lpm));
 	drm_printf(&p, "Blanking packets during BLLP %s\n", str_enabled_disabled(intel_dsi->blanking_pkt));
 	drm_printf(&p, "EoT packet %s\n", str_enabled_disabled(intel_dsi->eot_pkt));
 	drm_printf(&p, "Clock stop during BLLP %s\n", str_enabled_disabled(intel_dsi->clock_stop));
@@ -771,6 +772,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 
 	drm_dbg_kms(display->drm, "\n");
 
+	intel_dsi->lp_clock_during_lpm = mipi_config->lp_clock_during_lpm;
 	intel_dsi->blanking_pkt = mipi_config->blanking_packets_during_bllp;
 	intel_dsi->eot_pkt = !mipi_config->eot_pkt_disabled;
 	intel_dsi->clock_stop = mipi_config->enable_clk_stop;
-- 
2.52.0

