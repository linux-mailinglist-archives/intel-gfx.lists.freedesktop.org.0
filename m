Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GG8lCPOI2mly3ggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 19:46:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C30E63E120C
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 19:46:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E0610E21B;
	Sat, 11 Apr 2026 17:46:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wxi/d6GI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299BD10E21E
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2026 17:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775929585; x=1807465585;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eMgxEN92SyMoAEVJnHaAyUi2QiStCH8b6bM0obOj3XI=;
 b=Wxi/d6GI7Bf91nm0hLql1xc3J+FAaUY2ofM9qSqfahTf9MIlTY5nHoiT
 P4ulnbfjatPr6Bz+Hf4T0NV8TqWJGh7/ssGU2dYzW2vpgPhDvJsDnwcXC
 +jSYXgT5I/3TKysVUr0x+22qYF1w+h/Dj/wBi89Uc8rhDycybdLhAXdou
 8+vnY5Tl1QLfZEp0KQQ2uWd08tuSX8yGg8rlXpSjhrqfFPwHiEw9TlaI+
 OKg70QEBL0hQ0vhcEOgqsAEZ/s7hgtx93idLD8tieLoK12KW9+hvnikZB
 HKgv1P/KwsegwmnHy3hNupQG4+PPnCFSP5dS1jSyExHI3g40e9/zuX7kJ w==;
X-CSE-ConnectionGUID: kU6Msa17TKiLgwXX/96C1g==
X-CSE-MsgGUID: fdJMOtzrTly1CVxHGMmEGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="99564238"
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="99564238"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2026 10:46:24 -0700
X-CSE-ConnectionGUID: ytAPJ2mZRT2iXW8Yev7J7g==
X-CSE-MsgGUID: 4k024U8vTuGo9oDNqv+6bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="222899888"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP; 11 Apr 2026 10:46:23 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 09/10] drm/i915/scaler: abstract scaler searching loop
Date: Sat, 11 Apr 2026 19:45:25 +0200
Message-ID: <20260411174526.2850179-10-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260411174526.2850179-1-michal.grzelak@intel.com>
References: <20260411174526.2850179-1-michal.grzelak@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: C30E63E120C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a helper function hiding the search for scaler_id.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 29 ++++++++++++++---------
 1 file changed, 18 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4e2f4c4ffc45a..1f47c5fc1802f 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -836,6 +836,21 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
 }
 
+static int skl_pipe_scaler_get_hw_state(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	u32 ctl;
+
+	for (int scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
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
@@ -950,19 +965,11 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
-	int scaler_id;
-	u32 pos, size;
-
 	/* find scaler attached to this pipe */
-	for (scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
-		u32 ctl;
-
-		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, scaler_id));
-		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) == (PS_SCALER_EN | PS_BINDING_PIPE))
-			break;
-	}
+	int scaler_id = skl_pipe_scaler_get_hw_state(crtc_state);
+	u32 pos, size;
 
-	if (scaler_id == crtc->num_scalers)
+	if (scaler_id < 0)
 		return;
 
 	if (scaler_has_casf(display, scaler_id))
-- 
2.45.2

