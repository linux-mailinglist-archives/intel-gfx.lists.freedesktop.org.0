Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKm0AWVTimkVJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 22:36:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3ACA114D6E
	for <lists+intel-gfx@lfdr.de>; Mon, 09 Feb 2026 22:36:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B007710E48C;
	Mon,  9 Feb 2026 21:36:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DihTtuyg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4296D10E48F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Feb 2026 21:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770672995; x=1802208995;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xIstjECxsdvQqLlBGfFJd1mZRQgY3gBwtW9MPcvX8CM=;
 b=DihTtuygU2WT2GwiHFTA1avZ3CfawYSm2hnP4Xd2KgWR7a0JjRrf8vzV
 ae3KTQnTiNDMkSFFxD0IB6kcQC836JxwlKsYV/HWSHG8RH3fGhGq+IgUo
 PucurQ/ftIUI+uiwP4T+Ax0f+u3IoYlJxDcFNd8gprPMfxSz1leVxOPln
 YNHcafkyve0iXVu3wZDzNfFn3gNJB9zMs7VNY3ikVuf3/Wgijc2ZrAc+s
 1MnrQfbPM3PAbmS3fzrokkOgYktHcYyktZtvwHaKqYejckQmms7O8ZKZs
 uxpiIJWIIR1eXNN0ZZuEPW1KQIzZzfVmnsyRG39Dk6jX+dczfAE9Dk5xU g==;
X-CSE-ConnectionGUID: u+w++TOVTtSYUEt8FLw7JA==
X-CSE-MsgGUID: 5mTF9XgTSDS1dFzX+YYJtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11696"; a="94437738"
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="94437738"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 13:36:35 -0800
X-CSE-ConnectionGUID: XWOjZHK/SACoQaE9A+aWAA==
X-CSE-MsgGUID: tLHWKi3QSDK52Xlu5OYQOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,282,1763452800"; d="scan'208";a="216214516"
Received: from chu13-desk.fm.intel.com ([10.80.209.210])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2026 13:36:34 -0800
From: Austin Hu <austin.hu@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com
Subject: [PATCH 3/3] drm/i915/color: Adjust DE version checking for 3D LUT.
Date: Mon,  9 Feb 2026 13:34:22 -0800
Message-Id: <20260209213422.2640277-3-austin.hu@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260209213422.2640277-1-austin.hu@intel.com>
References: <20260209213422.2640277-1-austin.hu@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[austin.hu@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A3ACA114D6E
X-Rspamd-Action: no action

To distinguish the valid 3D LUT settings for Intel platforms with
different Display Engine IPs.

Signed-off-by: Austin Hu <austin.hu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c    | 38 +++++++++++--------
 .../drm/i915/display/intel_color_pipeline.c   |  6 +--
 2 files changed, 25 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index dff33c9c1..1e89dc006 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -4106,22 +4106,28 @@ static void glk_lut_3d_commit(struct intel_dsb *dsb,
 	}
 
 	if (enable) {
-		val = LUT_3D_ENABLE | LUT_3D_READY;
-
-		switch (plane->id) {
-		case PLANE_1:
-			val |= LUT_3D_BIND_PLANE_1;
-			break;
-		case PLANE_2:
-			val |= LUT_3D_BIND_PLANE_2;
-			break;
-		case PLANE_3:
-			val |= LUT_3D_BIND_PLANE_3;
-			break;
-		default:
-			/* Attached the 3D LUT block to Pipe. */
-			val |= LUT_3D_BIND_PIPE;
-			break;
+		val = LUT_3D_ENABLE;
+
+		if (DISPLAY_VER(display) >= 30) {
+			val |= LUT_3D_READY;
+
+			if (DISPLAY_VER(display) >= 35) {
+				switch (plane->id) {
+				case PLANE_1:
+					val |= LUT_3D_BIND_PLANE_1;
+					break;
+				case PLANE_2:
+					val |= LUT_3D_BIND_PLANE_2;
+					break;
+				case PLANE_3:
+					val |= LUT_3D_BIND_PLANE_3;
+					break;
+				default:
+					/* Attached the 3D LUT block to Pipe. */
+					val |= LUT_3D_BIND_PIPE;
+					break;
+				}
+			}
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
index d26b0f134..e1bf7990c 100644
--- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
+++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
@@ -12,6 +12,7 @@
 #define MAX_COLOR_PIPELINES 1
 #define PLANE_DEGAMMA_SIZE 128
 #define PLANE_GAMMA_SIZE 32
+#define DIM_SIZE_3D_LUT 17
 
 static
 int _intel_color_pipeline_plane_init(struct drm_plane *plane, struct drm_prop_enum_list *list,
@@ -47,11 +48,10 @@ int _intel_color_pipeline_plane_init(struct drm_plane *plane, struct drm_prop_en
 	drm_colorop_set_next_property(prev_op, &colorop->base);
 	prev_op = &colorop->base;
 
-	if ((DISPLAY_VER(display) >= 15) && HAS_3D_LUT(display) &&
-			intel_color_crtc_has_3dlut(display, pipe)) {
+	if (HAS_3D_LUT(display) && intel_color_crtc_has_3dlut(display, pipe)) {
 		colorop = intel_colorop_create(INTEL_PLANE_CB_3DLUT);
 
-		ret = drm_plane_colorop_3dlut_init(dev, &colorop->base, plane, 17,
+		ret = drm_plane_colorop_3dlut_init(dev, &colorop->base, plane, DIM_SIZE_3D_LUT,
 						   DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL,
 						   true);
 		if (ret)
-- 
2.34.1

