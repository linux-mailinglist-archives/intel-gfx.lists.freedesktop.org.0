Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHvxJkx7smkENAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:37:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE96C26F059
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:37:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3295B10EA23;
	Thu, 12 Mar 2026 08:37:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dFJxGkxT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5782110EA22;
 Thu, 12 Mar 2026 08:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773304647; x=1804840647;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tiWtAovlTjAKHZNl/3BWfmav2Tc88WZI6jjRnuOE4yA=;
 b=dFJxGkxTRUVr8grMzpMicsTSOfqbqLw/IM7UU1bEEGXyZyXsqEPo98kv
 vD0hdjxhe9y7L69utjlf/L+/wi0qEkGMtrphJYN56APzipVCwGUlwBemE
 xUhfsw5QoMf1ItSU5UOaj4n03te99v8g18mcK3QQlZstHAFjcTpc9tSRl
 DD8BW+tEar5fAg3Sj4vm+20qILdy99bKZh2ND8Qa0OkxFHaPw771d4Fa2
 hP+ZkUDFfKEh+WBtVSq0F+7dI9RPsSDW6qbX82Ou+PUeNHw1yPYlfqG0W
 zuPYZ6M0AwREIois86FVCHKOX7/4l/ihhBZtA83tO3iN0gsL+zmht9Okb g==;
X-CSE-ConnectionGUID: 4Mc/yQ8ASr+ZUFe+rYz2ug==
X-CSE-MsgGUID: V+9yxWVGSySI5U4oZdZ3yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74280171"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74280171"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:37:27 -0700
X-CSE-ConnectionGUID: ZIjzzrBMTvySrc6Q30atrw==
X-CSE-MsgGUID: 3ZvPQL6nTtilzc9dAJ5bFg==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.245.57])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:37:24 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Mika Kahola <mika.kahola@intel.com>, stable@vger.kernel.org
Subject: [PATCH 2/2] drm/i915/psr: Compute psr_entry_setup_frames into
 intel_crtc_state
Date: Thu, 12 Mar 2026 10:37:10 +0200
Message-ID: <20260312083710.1593781-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260312083710.1593781-1-jouni.hogander@intel.com>
References: <20260312083710.1593781-1-jouni.hogander@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EE96C26F059
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Psr_entry_setup_frames is currently computed directly into struct
intel_dp:intel_psr:entry_setup_frames. This causes a problem if mode change
gets rejected after PSR compute config: Psr_entry_setup_frames computed for
this rejected state is in intel_dp:intel_psr:entry_setup_frame. Fix this by
computing it into intel_crtc_state and copy the value into
intel_dp:intel_psr:entry_setup_frames on PSR enable.

Fixes: 2b981d57e480 ("drm/i915/display: Support PSR entry VSC packet to be transmitted one frame earlier")
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: <stable@vger.kernel.org> # v6.8+
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 5 +++--
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e189f8c39ccb..d3a9ace4c9d1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1188,6 +1188,7 @@ struct intel_crtc_state {
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	u8 active_non_psr_pipes;
+	u8 entry_setup_frames;
 	const char *no_psr_reason;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7e0e4c3bf985..c13116e6f17f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1716,7 +1716,7 @@ static bool _psr_compute_config(struct intel_dp *intel_dp,
 	entry_setup_frames = intel_psr_entry_setup_frames(intel_dp, conn_state, adjusted_mode);
 
 	if (entry_setup_frames >= 0) {
-		intel_dp->psr.entry_setup_frames = entry_setup_frames;
+		crtc_state->entry_setup_frames = entry_setup_frames;
 	} else {
 		crtc_state->no_psr_reason = "PSR setup timing not met";
 		drm_dbg_kms(display->drm,
@@ -1814,7 +1814,7 @@ static bool intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	return (DISPLAY_VER(display) == 20 && intel_dp->psr.entry_setup_frames > 0 &&
+	return (DISPLAY_VER(display) == 20 && crtc_state->entry_setup_frames > 0 &&
 		!crtc_state->has_sel_update);
 }
 
@@ -2190,6 +2190,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_dp->psr.pkg_c_latency_used = crtc_state->pkg_c_latency_used;
 	intel_dp->psr.io_wake_lines = crtc_state->alpm_state.io_wake_lines;
 	intel_dp->psr.fast_wake_lines = crtc_state->alpm_state.fast_wake_lines;
+	intel_dp->psr.entry_setup_frames = crtc_state->entry_setup_frames;
 
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
-- 
2.43.0

