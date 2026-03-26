Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFSAKQwWxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:18:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BC63344F1
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C070F10E372;
	Thu, 26 Mar 2026 11:18:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DbWLaHE/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4CA10E372;
 Thu, 26 Mar 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774523913; x=1806059913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E9blMPC+o0ZNnmCGQRsT0q/mCLb7nTk1HhN96nvXs8I=;
 b=DbWLaHE/qYpR6g5ZFOmkt1MDtbfWbIEwNhzPNGN2u/yBJPdwimIXJnNr
 nD0qovfa0PYCUdP8DPBMbsNHh+VOdV36Yi/5RuC7CvYlKXq9FDEU8JP4L
 haxuQpu9lnAoXCTAjzoproBcpERboxumpFvRVssxe896G1uDaJvHiELWU
 DwmgSjhaCh3w0qkX9HKlMCGKnTKh7cMHGhNGsCb4ZdkH/RaTPFXlvrUvP
 WGS8ve2+jQ/PqaLSIg1CnnwYLUN6+Uf/hOnZQ2BAXJtDBGSc/UnAYkBfh
 Zw0H+kIZx2p3JpT1HH78TaSfyb7U/TQESI3Ixww9isTPkfwcSHe8CA+VN A==;
X-CSE-ConnectionGUID: k7a7IB4VR9SH6/cId3uFEQ==
X-CSE-MsgGUID: k3S2Ev0ZSza9rwyR+g3WEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75692320"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75692320"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:18:33 -0700
X-CSE-ConnectionGUID: lOGPC/XJSJKLu5yh4GecRA==
X-CSE-MsgGUID: qidUL1tVScqP4TWthcozKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="220127451"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:18:31 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/5] drm/i915/dsi: Fill BLLPs with blanking packets if
 requested
Date: Thu, 26 Mar 2026 13:18:13 +0200
Message-ID: <20260326111814.9800-5-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 58BC63344F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

TGL/ADL DSI can be configured to fill all BLLPs with blanking
packets. Currently we enable that always, but the VBT actually
tells us whether this is desired or not. Hook that up.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 9 +++++----
 drivers/gpu/drm/i915/display/icl_dsi_regs.h  | 2 +-
 drivers/gpu/drm/i915/display/intel_dsi.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 ++
 4 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 6ea37929198c..45ba02486c56 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -765,10 +765,11 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 			}
 		}
 
-		if (DISPLAY_VER(display) >= 12) {
-			if (is_vid_mode(intel_dsi))
-				tmp |= BLANKING_PACKET_ENABLE;
-		}
+		if (DISPLAY_VER(display) >= 12 &&
+		    is_vid_mode(intel_dsi) && intel_dsi->blanking_pkt)
+			tmp |= BLANKING_PACKET_ENABLE;
+		else
+			tmp &= ~BLANKING_PACKET_ENABLE;
 
 		/* program DSI operation mode */
 		if (is_vid_mode(intel_dsi)) {
diff --git a/drivers/gpu/drm/i915/display/icl_dsi_regs.h b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
index b601b7632339..641e8f0b8cdb 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/icl_dsi_regs.h
@@ -232,7 +232,7 @@
 #define  CALIBRATION_DISABLED		(0x0 << 4)
 #define  CALIBRATION_ENABLED_INITIAL_ONLY	(0x2 << 4)
 #define  CALIBRATION_ENABLED_INITIAL_PERIODIC	(0x3 << 4)
-#define  BLANKING_PACKET_ENABLE		(1 << 2)
+#define  BLANKING_PACKET_ENABLE		(1 << 2) /* tgl+ */
 #define  S3D_ORIENTATION_LANDSCAPE	(1 << 1)
 #define  EOTP_DISABLED			(1 << 0)
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index 0023ac341aa0..f55d48e43af1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -80,6 +80,7 @@ struct intel_dsi {
 	/* NON_BURST_SYNC_PULSE, NON_BURST_SYNC_EVENTS, or BURST_MODE */
 	int video_mode;
 
+	bool blanking_pkt;
 	bool eot_pkt;
 	bool clock_stop;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 23da7f5f9578..c544871dac0b 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -718,6 +718,7 @@ void intel_dsi_log_params(struct intel_dsi *intel_dsi)
 		   "burst" : "<unknown>");
 	drm_printf(&p, "Burst mode ratio %d\n", intel_dsi->burst_mode_ratio);
 	drm_printf(&p, "Reset timer %d\n", intel_dsi->rst_timer_val);
+	drm_printf(&p, "Blanking packets during BLLP %s\n", str_enabled_disabled(intel_dsi->blanking_pkt));
 	drm_printf(&p, "EoT packet %s\n", str_enabled_disabled(intel_dsi->eot_pkt));
 	drm_printf(&p, "Clock stop during BLLP %s\n", str_enabled_disabled(intel_dsi->clock_stop));
 	drm_printf(&p, "Mode %s\n", intel_dsi->operation_mode ? "command" : "video");
@@ -770,6 +771,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 
 	drm_dbg_kms(display->drm, "\n");
 
+	intel_dsi->blanking_pkt = mipi_config->blanking_packets_during_bllp;
 	intel_dsi->eot_pkt = !mipi_config->eot_pkt_disabled;
 	intel_dsi->clock_stop = mipi_config->enable_clk_stop;
 	intel_dsi->lane_count = mipi_config->lane_cnt + 1;
-- 
2.52.0

