Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ueU2BtDNJmpNkwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:12:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C002C656FEC
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:12:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Q4Ivk2Ga;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53CA610F44C;
	Mon,  8 Jun 2026 14:12:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B18210F462;
 Mon,  8 Jun 2026 14:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780927948; x=1812463948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cETCDzwnTG8GFpa60tD6Dekw++yMRPdGnlKN0j9ov/E=;
 b=Q4Ivk2GaniUYtvTO+31d0bDH3JSzqLz63wFSlu9UZD4Nfzpdqvrkp6XH
 loGJO2I4e5QJfPZ7V86WQb7BPdfPIauxFusRAtStp/4fO/rpUxblZ6/Tk
 ZwWyOtzZTptDyGcjGWJgCWyPztrHYfKZIoN6RtpevW9Hp9enwaGjbky8z
 mxs8g5WfP2t0WezgjaK5MLrZXvUvu6FgDiVe4wkUG4EmcXlefzCMpVbGN
 ADkf7XIKOiR6ifmyFh472IkzjcC6jqg9QIj8DdunbTsLhB5CnVEntpluq
 ECBHT6cZSvgj/ySLyS045xSh8jqRM7h7g+iSryJuAejGhJfh5HguPVejb A==;
X-CSE-ConnectionGUID: CE3oxH3zTRysO8UrmC2U9g==
X-CSE-MsgGUID: H4zDX/HpQtencFbxiyLKkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81781325"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81781325"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:12:28 -0700
X-CSE-ConnectionGUID: Xl+5Lh+XQZKLdSfhKsTnaQ==
X-CSE-MsgGUID: q55yuZLTSSaSFOSZS5xPDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241113776"
Received: from carterle-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.213])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:12:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 7/7] drm/i915/psr: Enable FEC if using DP Panel Replay
Date: Mon,  8 Jun 2026 17:11:24 +0300
Message-ID: <20260608141124.144878-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260608141124.144878-1-jouni.hogander@intel.com>
References: <20260608141124.144878-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C002C656FEC

DP spec says uisng FEC is mandatory if Panel Replay is enabled. Enable FEC
for DP Panel Replay.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 5 ++++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2f36d34ab6871..52af6319691c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2494,7 +2494,8 @@ bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
 		return false;
 
-	return dsc_enabled_on_crtc || intel_fec_enabled_on_link(crtc_state);
+	return dsc_enabled_on_crtc || intel_fec_enabled_on_link(crtc_state) ||
+		crtc_state->has_panel_replay;
 }
 
 void intel_dp_dsc_reset_config(struct intel_crtc_state *crtc_state)
@@ -3678,6 +3679,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_psr_pre_compute_config(intel_dp, pipe_config, conn_state);
 
+	pipe_config->fec_enable = intel_dp_needs_8b10b_fec(pipe_config, false);
+
 	/*
 	 * Try to respect downstream TMDS clock limits first, if
 	 * that fails assume the user might know something we don't.
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a2675defaa3bf..28d3b4aca9b10 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -642,6 +642,8 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 
 	intel_psr_pre_compute_config(intel_dp, pipe_config, conn_state);
 
+	pipe_config->fec_enable = intel_dp_needs_8b10b_fec(pipe_config, true);
+
 	/* enable compression if the mode doesn't fit available BW */
 	if (dsc_needed) {
 		int dsc_slice_count;
-- 
2.43.0

