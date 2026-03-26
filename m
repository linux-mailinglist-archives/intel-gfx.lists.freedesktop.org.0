Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oO+LL+ezxWnKAwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 23:32:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8F933C76F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 23:32:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B9D10E9D1;
	Thu, 26 Mar 2026 22:32:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mdi/+W/h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFBD210EACA;
 Thu, 26 Mar 2026 22:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774564324; x=1806100324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r+4DnT25PYVhx/TTB1yzOT0QCT/v4gVmwJbggfUkmmc=;
 b=Mdi/+W/h75yuuPngsKyMjBLGdUBTD9jOuhXNm5i+QtFiPG3CliSqKPVI
 jW1Zk6itw8pkJhQFnttru0/c/Jh+juz62Mh4nBijnLxvvvAk+ujV/atpK
 fduisUxDb/OFHOTD50nyozFlajcaZWWd1p53u1ahA/nqdgvsduCl7BHrs
 wwTcF1UlbYX70yPMGpJwNEK6x14ZkPO6a6lPlUfc6tU11PCtjHR2yBG3c
 rW78ZecFTdpsKewNA2qWv+SQFHii5Kmbn0xxV0H+j5sA83XzVRBbvvLDG
 VWaQKBL36sfRgQlUl14mpVeEgNN7NddelM6E4gdQHJaJnQ/IMrYP0TPTD g==;
X-CSE-ConnectionGUID: HsxQ3dxxTFe4PT8q9w+GTg==
X-CSE-MsgGUID: QXMV3AyZQuy+RSTDix6HkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="78233073"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="78233073"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 15:32:04 -0700
X-CSE-ConnectionGUID: f3wreDAdQl61pMBetHdJ1Q==
X-CSE-MsgGUID: I5KIuZMPSOO6g+cRbezr6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="226769495"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 15:32:02 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 5/9] drm/i915/casf: Handle CASF in
 skl_scaler_get_filter_select()
Date: Fri, 27 Mar 2026 00:31:35 +0200
Message-ID: <20260326223139.19116-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
References: <20260326223139.19116-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 6E8F933C76F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Nuke the duplicate CASF_SCALER_FILTER_SELECT and just have
skl_scaler_get_filter_select() return the proper value for
sharpness filter use. It is the same "use programmable coefficients"
value we already use for the nearest neighbor filtering.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 525afd736195..d8bf65c6b4a7 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -730,9 +730,9 @@ static void glk_program_nearest_filter_coefs(struct intel_display *display,
 			   GLK_PS_COEF_INDEX_SET(pipe, id, set), 0);
 }
 
-static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter)
+static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, bool casf)
 {
-	if (filter == DRM_SCALING_FILTER_NEAREST_NEIGHBOR)
+	if (filter == DRM_SCALING_FILTER_NEAREST_NEIGHBOR || casf)
 		return (PS_FILTER_PROGRAMMED |
 			PS_Y_VERT_FILTER_SELECT(0) |
 			PS_Y_HORZ_FILTER_SELECT(0) |
@@ -757,13 +757,6 @@ static void skl_scaler_setup_filter(struct intel_display *display,
 	}
 }
 
-#define CASF_SCALER_FILTER_SELECT \
-	(PS_FILTER_PROGRAMMED | \
-	PS_Y_VERT_FILTER_SELECT(0) | \
-	PS_Y_HORZ_FILTER_SELECT(0) | \
-	PS_UV_VERT_FILTER_SELECT(0) | \
-	PS_UV_HORZ_FILTER_SELECT(0))
-
 void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -794,7 +787,7 @@ void skl_scaler_setup_casf(struct intel_crtc_state *crtc_state)
 	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
 
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
-		  CASF_SCALER_FILTER_SELECT;
+		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, true);
 
 	intel_de_write_fw(display, SKL_PS_CTRL(pipe, id), ps_ctrl);
 	intel_de_write_fw(display, SKL_PS_WIN_POS(pipe, id),
@@ -844,7 +837,7 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	id = scaler_state->scaler_id;
 
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
-		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter);
+		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, false);
 
 	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
 
@@ -910,7 +903,7 @@ skl_program_plane_scaler(struct intel_dsb *dsb,
 	}
 
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PLANE(plane->id) | scaler->mode |
-		skl_scaler_get_filter_select(plane_state->hw.scaling_filter);
+		skl_scaler_get_filter_select(plane_state->hw.scaling_filter, false);
 
 	trace_intel_plane_scaler_update_arm(plane, scaler_id,
 					    crtc_x, crtc_y, crtc_w, crtc_h);
-- 
2.52.0

