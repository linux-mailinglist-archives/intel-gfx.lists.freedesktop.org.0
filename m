Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aB40Itpj/2k86AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:42:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F9D500867
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D4910E3E0;
	Sat,  9 May 2026 16:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AMG6CIIT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D4AF10E3FB;
 Sat,  9 May 2026 16:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778344919; x=1809880919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b9bP0JzdEfj+hitbno5lq/UaoikE5n8pEulyHFwAO3E=;
 b=AMG6CIITd1Kc+1oUDwarM2XldyIPbpF5/fok14SdixDirqAd2HqsKMG7
 PyxBKfoOH9bytb/e11MNanhgDXBF/oo4IRqzkJZQSluT5XATR2Hu2EiE2
 wkr3ffQPfc8u4gW1MEAoCwMiiR91c8CvrRCA/Pk9Q+YYafMW/bb1FTzbc
 frNk6W8rQ3xM+Tyhsfrmx40Lc7JorprMzzKVsZ1DOO1vrhMo2gVi8eRWI
 u/JoUCSk8Sb9sNAcwUJNpFEZn1f60QAJgjTmYwQGbjf0Tw9XqElHMr2zK
 mcsqfp1iAl23nEObwti5nUgpujlU11SU50yog7lNFVpPsLnqQ0z6BzV3m Q==;
X-CSE-ConnectionGUID: UKutjh2DS+GcG8YBZWQmtw==
X-CSE-MsgGUID: XfgQNI9BRRu/xKou8qVExg==
X-IronPort-AV: E=McAfee;i="6800,10657,11781"; a="90763620"
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="90763620"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2026 09:41:59 -0700
X-CSE-ConnectionGUID: 2Hl8Qs3KQHiKME2z9sm9Hw==
X-CSE-MsgGUID: W9x/yAS7QquBY6G1LAcf7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="236212270"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 09 May 2026 09:41:57 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, nemesa.garg@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 8/9] drm/i915/scaler: abstract scaler searching loop
Date: Sat,  9 May 2026 18:40:47 +0200
Message-ID: <20260509164048.627399-9-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260509164048.627399-1-michal.grzelak@intel.com>
References: <20260509164048.627399-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Queue-Id: 59F9D500867
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Add a helper function hiding the search for scaler_id.

Changelog:
v2->v3
- keep ctl inside the loop (Ville)
- separate impure function call from variable declaration block (Ville)

Cc: Nemesa Garg <nemesa.garg@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 27 +++++++++++++++--------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4e2f4c4ffc45..6acb54d5781b 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -836,6 +836,22 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
 }
 
+static int skl_pipe_scaler_get_hw_state(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	for (int scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
+		u32 ctl;
+
+		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, scaler_id));
+		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) == (PS_SCALER_EN | PS_BINDING_PIPE))
+			return scaler_id;
+	}
+
+	return -1;
+}
+
 void
 skl_program_plane_scaler(struct intel_dsb *dsb,
 			 struct intel_plane *plane,
@@ -954,15 +970,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	u32 pos, size;
 
 	/* find scaler attached to this pipe */
-	for (scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
-		u32 ctl;
-
-		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, scaler_id));
-		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) == (PS_SCALER_EN | PS_BINDING_PIPE))
-			break;
-	}
-
-	if (scaler_id == crtc->num_scalers)
+	scaler_id = skl_pipe_scaler_get_hw_state(crtc_state);
+	if (scaler_id < 0)
 		return;
 
 	if (scaler_has_casf(display, scaler_id))
-- 
2.45.2

