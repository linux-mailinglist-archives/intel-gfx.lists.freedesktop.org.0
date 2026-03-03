Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAYBIAjapmmfXwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 13:54:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 313D01EFC28
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 13:54:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84CAC10E7F2;
	Tue,  3 Mar 2026 12:54:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hjAAepYe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B0A891D9;
 Tue,  3 Mar 2026 12:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772542467; x=1804078467;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dYnJ+m3EGbNouSGA1NcXpZO5HLq06AFcmCC40qn4K1Y=;
 b=hjAAepYe5cXYvOY3Yy9a+RzhM4dv0ebpW7JduOIMiwKsLJSAo22TVCbZ
 qjR/0LB4qdU90uiCS9jE4f0vl2Ymf4Qr5i44oFQc3K6OrQIQcE90koZJL
 jRn5KrzPHBWFD6px5rJ9eH1phcJ9PXkNHptm5gg938xhdltz9+ztFfU0S
 KSQe4md5hj/19qgcWk/EZ0nm0nhFhOElFERwfDRQ63WWyIsTcckvO83Aw
 6KSDhIODGWZgflcOAgJ7vUMLy5XZ0Y7QAkawK587yv2cnwB16hc47165Z
 8wZ8rBkMAjV6jvHdtawrFka2YiJNoSQfMUnwB1W5md62DNc+S8lNS3rAN A==;
X-CSE-ConnectionGUID: GxwyypjPTYKl+Ov0fGAgbA==
X-CSE-MsgGUID: ADApztdwQq+dLYv2Kq9igw==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="77421863"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="77421863"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 04:54:27 -0800
X-CSE-ConnectionGUID: H8dzbkgASYObzChblWf3AQ==
X-CSE-MsgGUID: tppxsBIcS8y13qMGe3FKdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="222651981"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.245.74])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 04:54:25 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/4] drm/i915/dsc: Add helper for writing DSC Selective
 Update ET parameters
Date: Tue,  3 Mar 2026 14:54:08 +0200
Message-ID: <20260303125409.503148-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260303125409.503148-1-jouni.hogander@intel.com>
References: <20260303125409.503148-1-jouni.hogander@intel.com>
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
X-Rspamd-Queue-Id: 313D01EFC28
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

There are slice row per frame and pic height configuration in DSC Selective
Update Parameter Set 1 register. Add helper for configuring these.

Bspec: 71709
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 22 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h |  3 +++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 7e53201b3cb1..ae3af3c2e41a 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -820,6 +820,28 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
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
+
+	val = DSC_SUPS0_SU_SLICE_ROW_PER_FRAME(slice_row_per_frame);
+	val |= DSC_SUPS0_SU_PIC_HEIGHT(su_lines);
+
+	intel_de_write_dsb(display, dsb, LNL_DSC0_SU_PARAMETER_SET_0(pipe), val);
+
+	if (vdsc_instances_per_pipe > 1)
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

