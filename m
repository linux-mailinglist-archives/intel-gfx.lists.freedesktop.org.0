Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MK75CbsY1mkxBAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:58:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C0D3B97D1
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:58:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB2A10E5E3;
	Wed,  8 Apr 2026 08:58:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGJH6WiD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A03110E5E4;
 Wed,  8 Apr 2026 08:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775638711; x=1807174711;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TwY0wYJs2TRK9zudNY/ylb8o4QM635WLNRi6qIrto1M=;
 b=hGJH6WiD/cnrvi6u2vniJID0w0r1L/4I7Bv6q64GVxsIRdjeeg9rhz/r
 wPeIS9gpGSLDWEHcY0HeR++KlJsdrzdAjaBYyVVUCm7GJtrY+/m5GInjV
 mOQ48jOosIMTQdg++T0ud1+LUAPXDUMY+/sPcXNYearbzGQGofZR7o1OB
 czr4LCvQ5Nk/P850/RN0wZkOzCZktFu3RG/6tlkjMk/+GnfIJI8yyWcpr
 rk6DjGXKfhihmWVUKvlA8oqd8k/2LKo55KGg+rIUjeXqdK40vV+ffsU1o
 Cmj1nJ2wCJf+Yg05HOy2HVTt+07YEPIfQ5IuouOlGEdsxjFjN07MjONC1 Q==;
X-CSE-ConnectionGUID: /3bTEIjMRCeYMqOWDNyshA==
X-CSE-MsgGUID: WcSR02B9RfmRsdK/Zhncxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="76516700"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76516700"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:58:31 -0700
X-CSE-ConnectionGUID: O9EV8cWqTc+BwIoz45JDLg==
X-CSE-MsgGUID: bYnyo4FEQoesLyYCn1GEpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="227572632"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:58:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 21/26] drm/i915/psr: Program Panel Replay CONFIG3 using AS SDP
 transmission time
Date: Wed,  8 Apr 2026 14:12:33 +0530
Message-ID: <20260408084239.1295325-22-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260408084239.1295325-1-ankit.k.nautiyal@intel.com>
References: <20260408084239.1295325-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B6C0D3B97D1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Panel Replay requires the AS SDP transmission time to be written into
PANEL_REPLAY_CONFIG3. This field was previously not programmed.

Use the AS SDP transmission-time helper to populate CONFIG3.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e011c15ef7d8..b20a1df330ed 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -784,6 +784,7 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 				      const struct intel_crtc_state *crtc_state)
 {
 	u8 panel_replay_config[2];
+	u8 panel_replay_config_3;
 
 	panel_replay_config[0] = DP_PANEL_REPLAY_ENABLE |
 				 DP_PANEL_REPLAY_VSC_SDP_CRC_EN |
@@ -791,7 +792,6 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 				 DP_PANEL_REPLAY_RFB_STORAGE_ERROR_EN |
 				 DP_PANEL_REPLAY_ACTIVE_FRAME_CRC_ERROR_EN;
 	panel_replay_config[1] = DP_PANEL_REPLAY_CRC_VERIFICATION;
-
 	if (crtc_state->has_sel_update)
 		panel_replay_config[0] |= DP_PANEL_REPLAY_SU_ENABLE;
 
@@ -804,6 +804,9 @@ static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
 
 	drm_dp_dpcd_write(&intel_dp->aux, PANEL_REPLAY_CONFIG,
 			  panel_replay_config, sizeof(panel_replay_config));
+
+	panel_replay_config_3 = intel_dp_as_sdp_transmission_time();
+	drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG3, panel_replay_config_3);
 }
 
 static void _psr_enable_sink(struct intel_dp *intel_dp,
-- 
2.45.2

