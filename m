Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YP8/KZMRzGnGNgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:25:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4282936FEE1
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 20:25:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A247310EA4A;
	Tue, 31 Mar 2026 18:25:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eGvx4a4W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6386310EA44;
 Tue, 31 Mar 2026 18:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774981520; x=1806517520;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ymfjpmZddyJ8X7dVgTwN+Kw/xQksGHXi59vIEAw6BBk=;
 b=eGvx4a4WIC69KeSPvO7bbFQ/Cj96VJg2+/iGRYEBDClMyl7NWGzrnz3c
 N9IspUuGAPG/HDoAT7n5zWz3DrLWyCH5IWyJIBMwKQIsI0r/jCm3rH5bR
 6I/mWqQYvLP5a+wbd01gJbKHs4sxfoywriG9vV4KJywU6Id9kFIMF9XKg
 9aRHBgCTJ/+RUjBp8vEcti5OqYrNCtdiNIWlg1gggAQD/71wGI7ozo7Rx
 3GI7ZF3Kub0KpN3T8ll5cXZvwxDmOcYQBwYZS9lghPoib5Nl1qMlYpbcF
 btokvs30Bp3+P47JIHfm8nNn+LXdIkxDQVVi7+SX5bt1p7Gug+VwjPacO w==;
X-CSE-ConnectionGUID: JzqfWugISKCJ44TFQ8CqDQ==
X-CSE-MsgGUID: 8XpTmMhESRSI2oC3RxKUQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="87081179"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="87081179"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 11:25:19 -0700
X-CSE-ConnectionGUID: A94DM4LSReCtb509R09HPQ==
X-CSE-MsgGUID: NwlpDX61TfakktI1wmzrHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="264373961"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa001.jf.intel.com with ESMTP; 31 Mar 2026 11:25:18 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/pfit: Prevent negative coordinates in center mode
Date: Tue, 31 Mar 2026 23:46:56 +0530
Message-Id: <20260331181656.77300-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 4282936FEE1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When the pipe_src width or height are greater than adjusted_mode hdisplay
and vdisplay, computed x and y offsets for center mode can be negative.
Writing negative values into the pch_fit registers result in a state error.
Add a check to clamp these values so that they are never negative.

v2: Compare in terms of pipe_src width and height.[Ville]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 6dda496190e0..0edd29eef6ad 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -186,6 +186,7 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
@@ -200,6 +201,16 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 
 	switch (conn_state->scaling_mode) {
 	case DRM_MODE_SCALE_CENTER:
+		if (adjusted_mode->crtc_hdisplay < pipe_src_w ||
+		    adjusted_mode->crtc_vdisplay < pipe_src_h) {
+			drm_dbg_kms(display->drm,
+				    "[CRTC:%d:%s] pfit center mode source (%dx%d) exceeds display (%dx%d)\n",
+				    crtc->base.base.id, crtc->base.name,
+				    width, height,
+				    adjusted_mode->crtc_hdisplay,
+				    adjusted_mode->crtc_vdisplay);
+			return -EINVAL;
+		}
 		width = pipe_src_w;
 		height = pipe_src_h;
 		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
-- 
2.25.1

