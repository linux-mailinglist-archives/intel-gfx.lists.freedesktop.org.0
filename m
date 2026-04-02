Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sI0cLdMJzmkwkgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:16:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 425A93845A7
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10FB810EE43;
	Thu,  2 Apr 2026 06:16:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GkIgsR0l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32EAD10E0A3;
 Thu,  2 Apr 2026 06:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775110608; x=1806646608;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1Jjw6D+ut4mvq4+wpOXg4kczZwPq/rHFoX73m9GyC40=;
 b=GkIgsR0lyv66udlJamAcfEpZBUjnVpI05ecdXe648fIIz2B50wr/kOpj
 eHNI1lChYCl66k9bpBxJNo2rh0vd44LA9teEa6DqxHqGre9/P1hlMCiph
 9En1tZa6Ra/n7KRa4R5lkD2i9IPxu5BY4DdZAq6I6GMLdzM68Jl39XHFZ
 U2ktRINTAHB3AqyXbcz68CYViQ3p8r/f/0h9iGlMfG+ex4LXIrb5VYpTW
 qF19oskj3oRdbFl/6uRQZWg2AwiW2CObGH5koxmaF7H+KdkFcncxCQMuk
 12ilZ86cm2AWS0sRyduPfXo4AunhDWtLcVxCsw+dPg1ndVwBA87cOgYuB Q==;
X-CSE-ConnectionGUID: 8KmWr9PbS3Wm5EmUQ3n1KA==
X-CSE-MsgGUID: yao+0N+rSH6aplNPasSSKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="93744931"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="93744931"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 23:16:48 -0700
X-CSE-ConnectionGUID: Se1ofbY9S8GdNRKngqMriQ==
X-CSE-MsgGUID: yDtVsB06QoeAu6Q5jWfLxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="223619800"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa007.fm.intel.com with ESMTP; 01 Apr 2026 23:16:46 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/pfit: Prevent negative coordinates in center mode
Date: Thu,  2 Apr 2026 11:43:10 +0530
Message-Id: <20260402061310.111073-1-nemesa.garg@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 425A93845A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When the pipe_src width or height are greater than adjusted_mode hdisplay
and vdisplay, computed x and y offsets for center mode can be negative.
Writing negative values into the pch_fit registers result in a state error.
Add a check to clamp these values so that they are never negative.

v2: Compare in terms of pipe_src width and height.[Ville]
v3: Change width/height to pipe_src_w/h in logging. [Ville]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pfit.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 6dda496190e0..2dec4ccf74ce 100644
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
+				    pipe_src_w, pipe_src_h,
+				    adjusted_mode->crtc_hdisplay,
+				    adjusted_mode->crtc_vdisplay);
+			return -EINVAL;
+		}
 		width = pipe_src_w;
 		height = pipe_src_h;
 		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
-- 
2.25.1

