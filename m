Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id x2BaNxx6VGrSmQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEF87474BE
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 07:39:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bw9YGXHq;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4D6910E793;
	Mon, 13 Jul 2026 05:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E2E10E793;
 Mon, 13 Jul 2026 05:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783921178; x=1815457178;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8v1AQ6RMT3arnr8+DdPXZNB8uzBonTYlva092aZp1p8=;
 b=bw9YGXHqbXchf/IsZvtcKCQIYks7u3IJbh6MxKOnn7708lSSUH8rBmXD
 9/EdK7rUFtRh5XqHcoIb9mFFq3C9eyEFI+38KrowqM19cL5bBFEDB9QeC
 gZkTLUA7h10VQkTc/4pp4wNjjELShWeVbbmC3ug4ubY1xCgIh5Q1ymc3V
 CoqDoRyQ1vwHurwYWMH+S1wlER8CODM//CbhirJ/FW5LJOnZ45oufMtDI
 TpJsvbvAMtOXs6mOxiWDdHjui058EnAi8uWtwDEHKnMtGZNxO5K9s6KPs
 NWTp2JiNpm0nGccuYSW1koghTSE8kaOPlcvYz9TWM1PErJZeMkEnH2nEp g==;
X-CSE-ConnectionGUID: 3YYyLPASTTGdjpeVpnLiTQ==
X-CSE-MsgGUID: fMQZeBVLSZO4uj14KvJ+Ng==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95670003"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95670003"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2026 22:39:37 -0700
X-CSE-ConnectionGUID: rArzjlcgTSanUokrRaADug==
X-CSE-MsgGUID: f62UvS9GQ1uo6reJiKt9uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="252066345"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa007.fm.intel.com with ESMTP; 12 Jul 2026 22:39:35 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Pranay Samala <pranay.samala@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [CI v4 10/14] drm/i915/color: Extract HDR pre-CSC LUT programming to
 helper function
Date: Mon, 13 Jul 2026 10:45:12 +0530
Message-Id: <20260713051516.4087420-11-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260713051516.4087420-1-chaitanya.kumar.borah@intel.com>
References: <20260713051516.4087420-1-chaitanya.kumar.borah@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BEF87474BE

From: Pranay Samala <pranay.samala@intel.com>

As we prepare to add support for LUT programming in SDR planes,
refactor HDR plane pre-CSC LUT programming to a helper.

Signed-off-by: Pranay Samala <pranay.samala@intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 30 ++++++++++++++--------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 87ced9f6ff40..2a32ab62721c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3959,20 +3959,15 @@ xelpd_load_plane_csc_matrix(struct intel_dsb *dsb,
 }
 
 static void
-xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
-				const struct intel_plane_state *plane_state)
+xelpd_load_hdr_pre_csc_lut(struct intel_display *display,
+			   struct intel_dsb *dsb,
+			   enum pipe pipe,
+			   enum plane_id plane,
+			   const struct drm_color_lut32 *pre_csc_lut)
 {
-	struct intel_display *display = to_intel_display(plane_state);
-	const struct drm_plane_state *state = &plane_state->uapi;
-	enum pipe pipe = to_intel_plane(state->plane)->pipe;
-	enum plane_id plane = to_intel_plane(state->plane)->id;
-	const struct drm_color_lut32 *pre_csc_lut = plane_state->hw.degamma_lut->data;
 	int i, lut_size = 128;
 	u32 lut_val;
 
-	if (!icl_is_hdr_plane(display, plane))
-		return;
-
 	intel_de_write_dsb(display, dsb,
 			   PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0),
 			   PLANE_PAL_PREC_AUTO_INCREMENT);
@@ -3997,6 +3992,21 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
 	intel_de_write_dsb(display, dsb, PLANE_PRE_CSC_GAMC_INDEX_ENH(pipe, plane, 0), 0);
 }
 
+static void
+xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
+				const struct intel_plane_state *plane_state)
+{
+	struct intel_display *display = to_intel_display(plane_state);
+	const struct drm_plane_state *state = &plane_state->uapi;
+	enum pipe pipe = to_intel_plane(state->plane)->pipe;
+	enum plane_id plane = to_intel_plane(state->plane)->id;
+	const struct drm_color_lut32 *pre_csc_lut = plane_state->hw.degamma_lut ?
+			plane_state->hw.degamma_lut->data : NULL;
+
+	if (icl_is_hdr_plane(display, plane))
+		xelpd_load_hdr_pre_csc_lut(display, dsb, pipe, plane, pre_csc_lut);
+}
+
 static void
 xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
 				 const struct intel_plane_state *plane_state)
-- 
2.25.1

