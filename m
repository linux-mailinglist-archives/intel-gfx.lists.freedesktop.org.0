Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHF4KNoXqGmgnwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 12:30:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B911FEFF7
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 12:30:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B58910E9BD;
	Wed,  4 Mar 2026 11:30:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QjloDRvA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0A510E9BB;
 Wed,  4 Mar 2026 11:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772623831; x=1804159831;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sFZgICEhpaTtIMj4KxNCcAgF9CSNJHxQzo7Zt1/XtzA=;
 b=QjloDRvAqxMSqG9KBPZH8i+aEb27cKOSKsEZH5oDbBfz9lhrgY8B3CU+
 9LnD1TThSd+cXOlN3BcuVOG+r38XenrCOCsgDwOaFqpcRuMVHqo8LRW7o
 3tSN2wstnozgDHGKiLDH/1xMzeFcWXU6MBA52rJzfWiIgjzefNvaJ6yIa
 4jd3YIhBPJsF5O1XIaeJ8LevExG1CZaJGJwARFZcjI1nfYKAHGlwFXihF
 3wQSWbDF9SFyWafGAidPi58Jk5QONfDkaX2Xy2T1MuPYgBlsBEDje98wu
 yu9Gy7sXohpOe8EJ59rxvNzfla/04HWbXnxnrDTzUTOdeMG1j3IEudUDz A==;
X-CSE-ConnectionGUID: qiXYJv+DQ9SCMo0qLlnIxw==
X-CSE-MsgGUID: QXcwaxHfRQ2gKJ7XUhSCLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="91255321"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="91255321"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 03:30:31 -0800
X-CSE-ConnectionGUID: lqRwRZ4BSNyg1eVGgWGgpQ==
X-CSE-MsgGUID: v2/BmKJnQoWUixZnD1ZGvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="248790014"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.245.129])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 03:30:30 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 3/4] drm/i915/dsc: Add helper for writing DSC Selective
 Update ET parameters
Date: Wed,  4 Mar 2026 13:30:10 +0200
Message-ID: <20260304113011.626542-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260304113011.626542-1-jouni.hogander@intel.com>
References: <20260304113011.626542-1-jouni.hogander@intel.com>
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
X-Rspamd-Queue-Id: 15B911FEFF7
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
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

There are slice row per frame and pic height configuration in DSC Selective
Update Parameter Set 1 register. Add helper for configuring these.

v2:
  - Add WARN_ON_ONCE if vdsc instances per pipe > 2
  - instead of checking vdsc instances per pipe being > 1 check == 2

Bspec: 71709
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 23 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h |  3 +++
 2 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 7e53201b3cb1..6c09c6d99ffe 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -820,6 +820,29 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 				  sizeof(dp_dsc_pps_sdp));
 }
 
+void intel_dsc_su_et_parameters_configure(struct intel_dsb *dsb, struct intel_encoder *encoder,
+					  const struct intel_crtc_state *crtc_state, int su_lines)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+	enum pipe pipe = crtc->pipe;
+	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
+	int slice_row_per_frame = su_lines / vdsc_cfg->slice_height;
+	u32 val;
+
+	drm_WARN_ON_ONCE(display->drm, su_lines % vdsc_cfg->slice_height);
+	drm_WARN_ON_ONCE(display->drm, vdsc_instances_per_pipe > 2);
+
+	val = DSC_SUPS0_SU_SLICE_ROW_PER_FRAME(slice_row_per_frame);
+	val |= DSC_SUPS0_SU_PIC_HEIGHT(su_lines);
+
+	intel_de_write_dsb(display, dsb, LNL_DSC0_SU_PARAMETER_SET_0(pipe), val);
+
+	if (vdsc_instances_per_pipe == 2)
+		intel_de_write_dsb(display, dsb, LNL_DSC1_SU_PARAMETER_SET_0(pipe), val);
+}
+
 static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
 	return is_pipe_dsc(crtc, cpu_transcoder) ?
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index f4d5b37293cf..3372f8694054 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -14,6 +14,7 @@ enum transcoder;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
+struct intel_dsb;
 struct intel_dsc_slice_config;
 struct intel_encoder;
 
@@ -37,6 +38,8 @@ void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state);
 void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state);
+void intel_dsc_su_et_parameters_configure(struct intel_dsb *dsb, struct intel_encoder *encoder,
+					  const struct intel_crtc_state *crtc_state, int su_lines);
 void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
-- 
2.43.0

