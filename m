Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KGtGHJ+wBGriNAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 19:10:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C82537C54
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 19:10:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CC210EFBB;
	Wed, 13 May 2026 17:10:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BpuHMEdT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A0AD10EFCB;
 Wed, 13 May 2026 17:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778692252; x=1810228252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gPD+UQnkWacHkL4DYQXXI+X/r+k00C0Ytf6MFagmzeY=;
 b=BpuHMEdTPiNjkVb1c97rOaw7ZX7q6SEQRSwEQsMrvrJ7/qYBR237n1Ht
 dE0AffQ7aPFEnseUFegMFptF2CmdA225GDkf+iZ4LCvM/o8MdzKzTCUBd
 sziPSYbA6zFvL7qdFHacZmxgXTib/SP7IasVZ1cO56jEoAJ4mblBMDEeP
 GC6iHxodS2xzYmaiPYmWHnVwYaXy61vBTZZ88UkiWUZfNQ1SQMW4Vg2Wu
 tiZ44NCLkwK0lvdyuA03MGhKzcWwbWtIM/JBomkxoWY5xQG/IzB8FMCXg
 kR6K0jEgV9xb6uBZy1JHTzazUJe826fEyQDSmdwdN3Jv0RTOzxAkXXIRW g==;
X-CSE-ConnectionGUID: vIb9ImB0RMGCVauW6oAGDw==
X-CSE-MsgGUID: zOEAUWLMSliXIFtIelaaUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="102295352"
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="102295352"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 10:10:51 -0700
X-CSE-ConnectionGUID: kgh7J+jIQvybOrZjsO5+AA==
X-CSE-MsgGUID: 3KAZelx1QK2gkdcsexUhUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,233,1770624000"; d="scan'208";a="238030325"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa008.jf.intel.com with ESMTP; 13 May 2026 10:10:50 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v6 16/16] [NOT FOR REVIEW] debug patch
Date: Wed, 13 May 2026 22:08:57 +0530
Message-Id: <20260513163857.1541888-17-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20260513163857.1541888-1-animesh.manna@intel.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
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
X-Rspamd-Queue-Id: 21C82537C54
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c | 24 ++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index f3ec4d9402a0..dd85a7ec7ecf 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -242,10 +242,11 @@ void intel_cmtg_sanitize(struct intel_display *display)
 
 bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
+	//struct intel_display *display = to_intel_display(crtc_state);
 
-	if (intel_cmtg_is_supported(crtc_state) &&
-	    intel_display_power_get_current_dc_state(display) == DC_STATE_EN_DC3CO)
+	//if (intel_cmtg_is_supported(crtc_state) &&
+	//    intel_display_power_get_current_dc_state(display) == DC_STATE_EN_DC3CO)
+	if (intel_cmtg_is_supported(crtc_state))
 		return true;
 
 	return false;
@@ -331,6 +332,14 @@ void intel_cmtg_set_timings(const struct intel_crtc_state *crtc_state, bool lrr)
 		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 	intel_de_write(display, TRANS_SET_CONTEXT_LATENCY(display, cmtg_transcoder),
 		       crtc_state->set_context_latency);
+
+	drm_dbg_kms(display->drm, "0x%x\n", INTEL_DISPLAY_DEVICE_TRANS_OFFSET(display, cmtg_transcoder));
+	drm_dbg_kms(display->drm, "0x%x\n", TRANS_HTOTAL(display, cmtg_transcoder).reg);
+	drm_dbg_kms(display->drm, "0x%x\n", TRANS_HBLANK(display, cmtg_transcoder).reg);
+	drm_dbg_kms(display->drm, "0x%x\n", TRANS_HSYNC(display, cmtg_transcoder).reg);
+	drm_dbg_kms(display->drm, "0x%x\n", TRANS_VTOTAL(display, cmtg_transcoder).reg);
+	drm_dbg_kms(display->drm, "0x%x\n", TRANS_VBLANK(display, cmtg_transcoder).reg);
+	drm_dbg_kms(display->drm, "0x%x\n", TRANS_VSYNC(display, cmtg_transcoder).reg);
 }
 
 void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state)
@@ -345,6 +354,10 @@ void intel_cmtg_set_vrr_timings(const struct intel_crtc_state *crtc_state)
 	intel_de_write(display, TRANS_VRR_VMAX(display, cmtg_transcoder), crtc_state->vrr.vmax - 1);
 	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cmtg_transcoder),
 		       crtc_state->vrr.flipline - 1);
+
+	drm_dbg_kms(display->drm, "0x%x, 0x%x\n", TRANS_VRR_VMIN(display, cmtg_transcoder).reg, crtc_state->vrr.vmin - 1);
+	drm_dbg_kms(display->drm, "0x%x, 0x%x\n", TRANS_VRR_VMAX(display, cmtg_transcoder).reg, crtc_state->vrr.vmax - 1);
+	drm_dbg_kms(display->drm, "0x%x, 0x%x\n", TRANS_VRR_FLIPLINE(display, cmtg_transcoder).reg, crtc_state->vrr.flipline - 1);
 }
 
 void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
@@ -364,6 +377,7 @@ void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
 	intel_de_write(display, TRANS_VRR_CTL(display, cmtg_transcoder), vrr_ctl);
+	drm_dbg_kms(display->drm, "0x%x, 0x%x\n", TRANS_VRR_CTL(display, cmtg_transcoder).reg, vrr_ctl);
 }
 
 void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
@@ -377,6 +391,8 @@ void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(display, PIPE_DATA_M1(display, cmtg_transcoder), m_n->link_m);
 	intel_de_write(display, PIPE_DATA_N1(display, cmtg_transcoder), m_n->link_n);
+	drm_dbg_kms(display->drm, "0x%x, 0x%x\n", PIPE_DATA_M1(display, cmtg_transcoder).reg, m_n->link_m);
+	drm_dbg_kms(display->drm, "0x%x, 0x%x\n", PIPE_DATA_N1(display, cmtg_transcoder).reg, m_n->link_n);
 }
 
 void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
@@ -391,6 +407,7 @@ void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
 	cmtg_ctl = CMTG_SYNC_TO_PORT | CMTG_ENABLE;
 
 	intel_de_rmw(display, TRANS_CMTG_CTL(cpu_transcoder), 0, cmtg_ctl);
+	drm_dbg_kms(display->drm, "0x%x, 0x%x\n", TRANS_CMTG_CTL(cpu_transcoder).reg, cmtg_ctl);
 	if (intel_de_wait_for_clear_ms(display, TRANS_CMTG_CTL(cpu_transcoder),
 				       CMTG_SYNC_TO_PORT, 50)) {
 		drm_WARN(display->drm, 1, "CMTG: %s enable timeout\n",
@@ -478,4 +495,5 @@ void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state)
 	REG_FIELD_PREP(CMTG_HW_GB_UP_LW_BG_DIFF_MASK, 1);
 
 	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);
+	drm_dbg_kms(display->drm, "0x%x, 0x%x\n", CMTG_HW_GB(cpu_transcoder).reg, val);
 }
-- 
2.29.0

