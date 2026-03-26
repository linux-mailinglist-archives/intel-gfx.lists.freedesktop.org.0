Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iN7IGwYWxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:18:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4613344CA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:18:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D70D10E2BB;
	Thu, 26 Mar 2026 11:18:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GgdKlRjL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40EE310E2B9;
 Thu, 26 Mar 2026 11:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774523906; x=1806059906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=itD5/pCoTTNzzw9QWHCHwg+/7rxBQNMYNfP+fTXpFUo=;
 b=GgdKlRjLvcs084a4yCpi1eAchYiWhCoPmM15LN0mCMRjjq5ESZ7UfTwa
 DE04PuY4O+HIGpo3Svuc39Mcs0p9c/9HBaU129szwt3d9rj3sKH98zTvr
 R+rq+1Ev/xWG1n9UQSuopowpv6J8xaIyA5VDjGOsdF/tiMEQ98PtwAQjr
 8n0VzlpShcSKjltVCq+xgpXqNZ+qPU+9eBW0vR5DfGyOgv/vkjLThFtnX
 CAPG2dTLIjGVm3f9B70UJXsHqNpEpbAj++7C1jPNq941efyU9btTTILTA
 lDeH1P13zJLzl0h9WH++w8IyNkMzv9q764mOZ3DTHrRPhyMq1aV+tVXd4 g==;
X-CSE-ConnectionGUID: 1qwZKPxvQhmO+W3v8/oOSg==
X-CSE-MsgGUID: k4Le1W4PQiKipB40oHgwmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75692314"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75692314"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:18:26 -0700
X-CSE-ConnectionGUID: 9jj9Bx8pSsqEepeSBBfLFg==
X-CSE-MsgGUID: fV00seVFQs+WEq842O774Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="220127436"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:18:24 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915/dsi: s/eotp_pkt/eot_pkt/
Date: Thu, 26 Mar 2026 13:18:11 +0200
Message-ID: <20260326111814.9800-3-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 1D4613344CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

eotp == "End of Transmission Packet". Drop the redundant
extra 'p' from 'eotp_pkt', and make the thing a boolean
while at it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 2 +-
 drivers/gpu/drm/i915/display/intel_dsi.h     | 3 +--
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 4 ++--
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 2 +-
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index a763f2b13ff2..6ea37929198c 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -711,7 +711,7 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		dsi_trans = dsi_port_to_transcoder(port);
 		tmp = intel_de_read(display, DSI_TRANS_FUNC_CONF(dsi_trans));
 
-		if (intel_dsi->eotp_pkt)
+		if (intel_dsi->eot_pkt)
 			tmp &= ~EOTP_DISABLED;
 		else
 			tmp |= EOTP_DISABLED;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index 489d26ffd235..8e39d2b52c54 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -80,8 +80,7 @@ struct intel_dsi {
 	/* NON_BURST_SYNC_PULSE, NON_BURST_SYNC_EVENTS, or BURST_MODE */
 	int video_mode;
 
-	/* eot for MIPI_EOT_DISABLE register */
-	u8 eotp_pkt;
+	bool eot_pkt;
 	u8 clock_stop;
 
 	u8 escape_clk_div;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 18755a8e613d..51f6a5b82cb2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -718,7 +718,7 @@ void intel_dsi_log_params(struct intel_dsi *intel_dsi)
 		   "burst" : "<unknown>");
 	drm_printf(&p, "Burst mode ratio %d\n", intel_dsi->burst_mode_ratio);
 	drm_printf(&p, "Reset timer %d\n", intel_dsi->rst_timer_val);
-	drm_printf(&p, "Eot %s\n", str_enabled_disabled(intel_dsi->eotp_pkt));
+	drm_printf(&p, "EoT packet %s\n", str_enabled_disabled(intel_dsi->eot_pkt));
 	drm_printf(&p, "Clockstop %s\n", str_enabled_disabled(!intel_dsi->clock_stop));
 	drm_printf(&p, "Mode %s\n", intel_dsi->operation_mode ? "command" : "video");
 	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK)
@@ -770,7 +770,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 
 	drm_dbg_kms(display->drm, "\n");
 
-	intel_dsi->eotp_pkt = mipi_config->eot_pkt_disabled ? 0 : 1;
+	intel_dsi->eot_pkt = !mipi_config->eot_pkt_disabled;
 	intel_dsi->clock_stop = mipi_config->enable_clk_stop ? 1 : 0;
 	intel_dsi->lane_count = mipi_config->lane_cnt + 1;
 	intel_dsi->pixel_format =
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 36591d724638..d4db73c184e5 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1367,7 +1367,7 @@ static void intel_dsi_prepare(struct intel_encoder *encoder,
 	}
 
 	tmp = 0;
-	if (intel_dsi->eotp_pkt == 0)
+	if (!intel_dsi->eot_pkt)
 		tmp |= EOT_DISABLE;
 	if (intel_dsi->clock_stop)
 		tmp |= CLOCKSTOP;
-- 
2.52.0

