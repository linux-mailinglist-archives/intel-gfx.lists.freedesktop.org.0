Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DNSFv0HzGn+NQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 19:44:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44D836F3D4
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 19:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 619B410E234;
	Tue, 31 Mar 2026 17:44:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MMMSouaQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8AAD10E234;
 Tue, 31 Mar 2026 17:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774979066; x=1806515066;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8KLzKFND1dc9SaKso6zYgm22JBDQpdGpCj86HUjpMvI=;
 b=MMMSouaQX2MLg+6O3cGmEehMtLvvSMYtwFvbL1AAt3ghKzieE3wVV2cM
 TRLv1bb4eKxPFB89kK+zg3WbAqBcweZrVOoKNevd2hXAUuvT014lIgD/2
 WtaB4vlXAaGvZ9umYNVNb/IjPtgHFSD3OEnI6GtXPIQFor2A5IiuTdVOq
 mTosXEDFEquN+S9CvLxistR22sEL6SKtkd7U0HzV3uprDOzCeH5RWHzAV
 WmCXuzNdcU9vco4IOqnBQOQgmfoPMjshj2xkFxSq2RMInOk8d9xsXPdkF
 1sRdS6QiiPamkY38MRX8IJyctKlV+04BsjsiBu1QXTDF3UACZeiK4zl14 Q==;
X-CSE-ConnectionGUID: o7NPuCE2QB60l4qaM5LxQQ==
X-CSE-MsgGUID: 2oWeuIikROSSW+lkch2qhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="98611907"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="98611907"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 10:44:26 -0700
X-CSE-ConnectionGUID: tLI47O1sToqCERPUZ9bR3g==
X-CSE-MsgGUID: I2cb33JsRPKrVe4yzjV6BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="226678847"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa007.jf.intel.com with ESMTP; 31 Mar 2026 10:44:24 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/pfit: Prevent negative coordinates in center mode
Date: Tue, 31 Mar 2026 23:10:44 +0530
Message-Id: <20260331174044.73300-1-nemesa.garg@intel.com>
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
X-Rspamd-Queue-Id: E44D836F3D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When the pipe_src width or height are greater than adjusted_mode hdisplay
and vdisplay, computed x and y offsets for center mode can be negative.
Writing negative values into the pch_fit registers result in a state error.
Add a check to clamp these values so that they are never negative.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 6dda496190e0..1507c2b5b5c7 100644
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
@@ -204,6 +205,16 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 		height = pipe_src_h;
 		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
 		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
+		if (adjusted_mode->crtc_hdisplay < width ||
+		    adjusted_mode->crtc_vdisplay < height) {
+			drm_dbg_kms(display->drm,
+				    "[CRTC:%d:%s] pfit center mode source (%dx%d) exceeds display (%dx%d)\n",
+				    crtc->base.base.id, crtc->base.name,
+				    width, height,
+				    adjusted_mode->crtc_hdisplay,
+				    adjusted_mode->crtc_vdisplay);
+			return -EINVAL;
+		}
 		break;
 
 	case DRM_MODE_SCALE_ASPECT:
-- 
2.25.1

