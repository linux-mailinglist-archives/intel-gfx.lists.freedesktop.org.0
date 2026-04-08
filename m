Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGQbMtBf1mkfEwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A38553BD539
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66EE910E676;
	Wed,  8 Apr 2026 14:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eyWnLb16";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4BCE10E670;
 Wed,  8 Apr 2026 14:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775656904; x=1807192904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V+dyHm1efiMz1CBklW5LyIqisW0MaENS9Q9iSlONn+w=;
 b=eyWnLb16oGfKEqqYxhkDY3IlnBNPw5Aulq1v1ApZn3dlN3aJocl+8VC+
 DgvVhw4qYWvhfOKsb8fxZWKSL1WioLWvq6+8FQq5dM1wN9Sg0u//XmW+3
 FP4vHBkOu67MJ8JJj8R0xX+WrJiPSKHnrgqSoM7oIU/cUZXeJlI0XS3vt
 6luGkqUp5TvYizmEg+02q3zi9yKDgyq+gDZJIjA+efKULPGPMeIPgD26h
 8SBVEWXiaOvbHWPWa3o0A9P0Tep1xjecBUBAX01ZnyupEbDMr/fVS/uZU
 /nM2NPtl2GoMPO7GKCosD0V8w4OJ27QETAxvcVWUUwd9UP5Vn8RXRQoFF A==;
X-CSE-ConnectionGUID: qLb68KXaSliPHwq8HWubNw==
X-CSE-MsgGUID: BtpNvRCJTXG7CIEvLtcXiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75811513"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75811513"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:22 -0700
X-CSE-ConnectionGUID: Zbze29bxSXqUfMZ4OInDoQ==
X-CSE-MsgGUID: RNFVwDDETDWdM71ECEmDpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228726662"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.244.251])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/7] drm/i915/alpm: Dump out computed ALPM parameters in crtc
 state dump
Date: Wed,  8 Apr 2026 17:00:54 +0300
Message-ID: <20260408140059.252067-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260408140059.252067-1-jouni.hogander@intel.com>
References: <20260408140059.252067-1-jouni.hogander@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[jouni.hogander.intel.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: A38553BD539
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We are currently not dumping out any information about computed ALPM
parameters. Add this missing information.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 41aa28f1c72c..e610527bb5f6 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -254,6 +254,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   str_enabled_disabled(pipe_config->enable_psr2_su_region_et),
 			   str_enabled_disabled(pipe_config->req_psr2_sdp_prior_scanline),
 			   pipe_config->entry_setup_frames);
+		drm_printf(&p, "alpm: lobf = %s, io wake lines = %d, fast wake lines = %d, check entry lines = %d, aux less wake lines = %d, silence period symbol clocks = %d, lfps half cycle number of symbols = %d\n",
+			   str_enabled_disabled(pipe_config->has_lobf),
+			   pipe_config->alpm_state.io_wake_lines,
+			   pipe_config->alpm_state.fast_wake_lines,
+			   pipe_config->alpm_state.check_entry_lines,
+			   pipe_config->alpm_state.aux_less_wake_lines,
+			   pipe_config->alpm_state.silence_period_sym_clocks,
+			   pipe_config->alpm_state.lfps_half_cycle_num_of_syms);
 		drm_printf(&p, "minimum hblank: %d\n", pipe_config->min_hblank);
 	}
 
-- 
2.43.0

