Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAjiNil922mCCgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC1E3E37E7
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2191710E2BA;
	Sun, 12 Apr 2026 11:08:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m9c3NzmU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B49B210E2BA;
 Sun, 12 Apr 2026 11:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775992103; x=1807528103;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YYM+YvQuXrqAUwtZwMqIjtspxdL3exgwNUXpth1pTHM=;
 b=m9c3NzmU50i8Fpx4E0fRtHFCJmPBc8HaoWw3JPca3qhOzxeA3kZHWi9p
 Tt+F7Rpjyd492mj6pDixgQIT5VaEg8Mg3gx1xx+BgZlw5fLfyDXLt1D3M
 Rvsn9AfW1G7PARVYj889HyO9V2kZfXgHZ/MknZIypv7pGUiO7xc4iIJ3e
 kb0Fo+sk/rUfvyZ2ZPYtNVNHPGit+PdOiE63mnmzroR4PCWOJKAOitjwv
 rCGhV6cIpkTEC+N22ZMkwTUosZTcwB3FZS4WN1mUyhP9myrGd1+m3Oinu
 clzxDyDIQaJF3MpEoostIZiNhVycJQHakdoQNzjLFuoTI5jaQhQSAGdjK g==;
X-CSE-ConnectionGUID: ROrnLlm1Qs6anF13LRpaSQ==
X-CSE-MsgGUID: XCRTFGM8Rz+5U9SxVZ2MFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76115143"
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="76115143"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 04:08:22 -0700
X-CSE-ConnectionGUID: UJkVl/KiT9qrreVDkfOcow==
X-CSE-MsgGUID: qY1J8OVHRl+vdpbcgscC3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="267507757"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 12 Apr 2026 04:08:20 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 13/13] drm/i915/cmtg: Set target_dc_state flag for
 lobf/psr2/pr-alpm
Date: Sun, 12 Apr 2026 16:07:12 +0530
Message-Id: <20260412103712.4021213-14-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260412103712.4021213-1-animesh.manna@intel.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8FC1E3E37E7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Set the target_dc_state in specific scenarios such as LOBF/PSR2/PR-ALPM,
where DC3CO enablement will be targeted, allowing CMTG to be programmed.
DC3CO enablement will be implemented in a separate patch series.

Note: This patch currently added to test cmtg and need to revisit once
DC3co enablement design in finilized.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b8b6d62fb275..5de6cfde8bf5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7342,6 +7342,7 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	int ret;
 
@@ -7353,6 +7354,13 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 
 	intel_alpm_lobf_compute_config_late(intel_dp, crtc_state);
 
+	if (DISPLAY_VER(display) >= 35 && intel_dp_is_edp(intel_dp) &&
+	    (crtc_state->has_lobf || crtc_state->has_sel_update ||
+	     crtc_state->has_panel_replay))
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_DC3CO);
+	else
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
+
 	return 0;
 }
 
-- 
2.29.0

