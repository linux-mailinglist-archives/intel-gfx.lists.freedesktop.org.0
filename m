Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qKJcHDwLl2lEuAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 14:08:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF9915EE76
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 14:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8392210E6E1;
	Thu, 19 Feb 2026 13:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W5juXETj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA1210E6DC;
 Thu, 19 Feb 2026 13:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771506489; x=1803042489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=27RuguUc24Foz/Z0yMb63i9Bn80pnNrEE9wi9biXXOM=;
 b=W5juXETjVVo1hLyXJxk9G0oSP7u3Fu1BkrKqhAESl1Q/slhV76Y/P2Uf
 vRyLfA6ZelJIz303+2FC2w66DONb1E/ubb4/HGdYIukJJgdIgs28xu18w
 jUKKh6P7whvNH1TGv/0YVYezrmhnRSY3bPl4iYGA45tC2eiHFx74uk4CW
 0N1cpmu6QVCrc9QqNTqgI4SYX+wY4VBAhQG3tGvoMYPQcRh45fPmCpQoT
 +Bk3YHT1Ox7PeTQ3R9WydkLe4jbNA6tqe4isCc/QEwDQHjAx5l+KzRyiE
 58vsrMmWsE8oZjSS/lKwCdilweVJEIY2OSssv+2lTIAlHBmzKu9w/rz7E w==;
X-CSE-ConnectionGUID: TowGoMSvQn6EA8TjB7CijA==
X-CSE-MsgGUID: +1sFBsp7SU+D0/ZasItjNw==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72475531"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="72475531"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 05:08:09 -0800
X-CSE-ConnectionGUID: xUdHBKghRzOuz/qi5X3xXg==
X-CSE-MsgGUID: 9xbGTC8vTSyhC9HNgbqMIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="212458604"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.120])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 05:08:07 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 stable@vger.kernel.org
Subject: [PATCH 4/5] drm/i915/psr: DSC configuration for Early Transport
Date: Thu, 19 Feb 2026 15:07:42 +0200
Message-ID: <20260219130743.1232188-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260219130743.1232188-1-jouni.hogander@intel.com>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
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
X-Rspamd-Server: lfdr
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 1FF9915EE76
X-Rspamd-Action: no action

There is Selective Update slice row per frame and picture height
configurations needed on DSC when using Selective Update Early
Transport. Calculate and configure these when using Early Transport.

Bspec: 68927
Fixes: 467e4e061c44 ("drm/i915/psr: Enable psr2 early transport as possible")
Cc: <stable@vger.kernel.org> # v6.9+
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 24 +++++++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e8e4af03a6a6..8903804c04b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1381,6 +1381,7 @@ struct intel_crtc_state {
 	u32 psr2_man_track_ctl;
 
 	u32 pipe_srcsz_early_tpt;
+	u32 dsc_su_parameter_set_0_calc;
 
 	struct drm_rect psr2_su_area;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 331645a2c9f6..0a2948ec308d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2618,6 +2618,11 @@ void intel_psr2_program_trans_man_trk_ctl(struct intel_dsb *dsb,
 
 	intel_de_write_dsb(display, dsb, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
 			   crtc_state->pipe_srcsz_early_tpt);
+	intel_de_write_dsb(display, dsb, DSC_SU_PARAMETER_SET_0_DSC0(crtc->pipe),
+			   crtc_state->dsc_su_parameter_set_0_calc);
+	if (intel_dsc_get_vdsc_per_pipe(crtc_state) > 1)
+		intel_de_write_dsb(display, dsb, DSC_SU_PARAMETER_SET_0_DSC1(crtc->pipe),
+				   crtc_state->dsc_su_parameter_set_0_calc);
 }
 
 static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
@@ -2668,6 +2673,23 @@ static u32 psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
 	return PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1);
 }
 
+static u32 psr2_dsc_su_parameter_set_0_calc(struct intel_crtc_state *crtc_state,
+					    bool full_update)
+{
+	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+	int slice_row_per_frame, pic_height;
+
+	if (!crtc_state->enable_psr2_su_region_et || full_update ||
+	    !crtc_state->dsc.compression_enable)
+		return 0;
+
+	slice_row_per_frame = drm_rect_height(&crtc_state->psr2_su_area) / vdsc_cfg->slice_height;
+	pic_height = slice_row_per_frame * vdsc_cfg->slice_height;
+
+	return DSC_SU_PARAMETER_SET_0_SU_SLICE_ROW_PER_FRAME(slice_row_per_frame) |
+		DSC_SU_PARAMETER_SET_0_SU_PIC_HEIGHT(pic_height);
+}
+
 static void clip_area_update(struct drm_rect *overlap_damage_area,
 			     struct drm_rect *damage_area,
 			     struct drm_rect *pipe_src)
@@ -3026,6 +3048,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	psr2_man_trk_ctl_calc(crtc_state, full_update);
 	crtc_state->pipe_srcsz_early_tpt =
 		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
+	crtc_state->dsc_su_parameter_set_0_calc = psr2_dsc_su_parameter_set_0_calc(crtc_state,
+										   full_update);
 	return 0;
 }
 
-- 
2.43.0

