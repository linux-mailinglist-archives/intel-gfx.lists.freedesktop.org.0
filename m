Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id PyTmE9CTuGnCgAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:35:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C45852A2021
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 00:35:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1615E10E0A9;
	Mon, 16 Mar 2026 23:35:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S5URnk2R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62FB110E0A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2026 23:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773704140; x=1805240140;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=g7KRRG9WQu6x+ONbYI7yb+n+LOtAz6aLwcLQMd/7oNo=;
 b=S5URnk2RhIH9gxk2odHIc9qwB7+ti1Mc/KMSmtx70Vas9shFvv4+v5OI
 vHk16NwvWy79FOSRmUFIgt+B+yJ+8RS3Z8wrPCS/T3+Fkx037QUExta/C
 +N43hS0fuXeVUb1cmLRp+x7SNS73/zNAV3lD0xKYwR5TuR2ubrRawCdH3
 LzwmCZ4umUgAvh3hrG9LECVd6waBl7k10bsLOnajummwIOee9SFPBiC/8
 NJyIZaIqFP/OHXqGId2wVBzquXobI4lVUFETdXtEXzDjXtuiVAS60i7cV
 cSs2VjXCidcFa3IO0LCn2UZeBtbsxRF1Yk0MoySx8270w4NllgvFw/dP+ A==;
X-CSE-ConnectionGUID: zYdpG2ItQuK+wBcVAeHl+Q==
X-CSE-MsgGUID: 9uem4JcIRIyE0WOSWB04Mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74434969"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74434969"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 16:35:40 -0700
X-CSE-ConnectionGUID: rq539omcTaybbJU1GZnR+w==
X-CSE-MsgGUID: xTgpp/+vSx690m4Gi+WkPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="222138027"
Received: from chu13-desk.fm.intel.com ([10.80.209.210])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 16:35:38 -0700
From: Austin Hu <austin.hu@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	maarten.lankhorst@linux.intel.com
Subject: [PATCH 1/2] drm/i915/plane: don't assume the linked Y Plane is
 invisible
Date: Mon, 16 Mar 2026 16:32:53 -0700
Message-Id: <20260316233254.393640-1-austin.hu@intel.com>
X-Mailer: git-send-email 2.34.1
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[austin.hu@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: C45852A2021
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DRM would pop up warning complaining that the linked Y Plane is
visible, when destroying all old Plane links of previous frame
which has YUV semiplanar buffer to be DMAed by 2 Planes
respectively. But when testing the passed buffers (layers) during
current frame atomic commit, the previously linked Plane may be
configured with another RGB buffer (layer) from user mode, so that
its UAPI visible is set (by intel_plane_check_clipping()) before
it'd be unlinked (by unlink_nv12_plane()).

So not to assume the linked Y plane is invisible when unlinking it
for current frame.

Signed-off-by: Austin Hu <austin.hu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index e06a0618b4c6..3d945fe99b67 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -1510,7 +1510,6 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
 static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
 			      struct intel_plane_state *plane_state)
 {
-	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
 	plane_state->planar_linked_plane = NULL;
@@ -1518,8 +1517,6 @@ static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
 	if (!plane_state->is_y_plane)
 		return;
 
-	drm_WARN_ON(display->drm, plane_state->uapi.visible);
-
 	plane_state->is_y_plane = false;
 
 	crtc_state->enabled_planes &= ~BIT(plane->id);
-- 
2.34.1

