Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOzSEu+I2mly3ggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 19:46:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBB13E11F7
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 19:46:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D39A10E219;
	Sat, 11 Apr 2026 17:46:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bJK2YIyk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C627010E214
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2026 17:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775929577; x=1807465577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s5UJJrnBz6HnyDQBbiTbnju49OE2gBKl3hI58vb3yUk=;
 b=bJK2YIyk7GFznl0e6w4qi/E0PbrnREaIFx66FGoLr5YStMPG6A78hiRX
 83lVWzioIgfD8MIJEkoUFW8jxMGQ8LbgQL7uBKbgZRf7NS4rKj7hlKIyg
 1Fu1iqUajCDA9tMRrp41duHZgxkCSliIzWI/cUH3PsQjidmg1OZRQTXJz
 sahXkt3p9wQCiDQjcmQIqMNFEZ5/d1DsUgodCvFqCCF62G5avDZJTo5oG
 j3mkVwypzqTF3YFblJewQF6k6PkuhNKEvkaNNLVo2lhEIkanxyb6+DLu3
 2k9Fldz104yCwj3GaZ4BLK8lY8YokHBvupKvbaYF1FICwiafh3HWeFkR9 w==;
X-CSE-ConnectionGUID: q5Q180i4SLG8NOT2bRK2+w==
X-CSE-MsgGUID: J+XGym99RD60k+pqTuZXjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="99564219"
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="99564219"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2026 10:46:17 -0700
X-CSE-ConnectionGUID: ejuiaNM7Rke5KP/SXtbtxw==
X-CSE-MsgGUID: kfbeQoPHSZ+5fjD1xWow7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="222899839"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP; 11 Apr 2026 10:46:15 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 03/10] drm/i915: rename t into tap
Date: Sat, 11 Apr 2026 19:45:19 +0200
Message-ID: <20260411174526.2850179-4-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: EEBB13E11F7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add more description to the casf_coeff()'s argument and
casf_coeff_tap()'s returned value.

Do the same for glk_nearest_filter_coef().

v1->v2
- apply the rename to nearest neighbor filter (Ville)

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c | 14 +++++++-------
 drivers/gpu/drm/i915/display/skl_scaler.c | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index c4fabffa369e3..b9643548d1822 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -148,12 +148,12 @@ static int casf_coeff_tap(int i)
 	return i % SCALER_FILTER_NUM_TAPS;
 }
 
-static u32 casf_coeff(const struct intel_crtc_state *crtc_state, int t)
+static u32 casf_coeff(const struct intel_crtc_state *crtc_state, int tap)
 {
 	struct scaler_filter_coeff value;
 	u32 coeff;
 
-	value = crtc_state->pch_pfit.casf.coeff[t];
+	value = crtc_state->pch_pfit.casf.coeff[tap];
 	value.sign = 0;
 
 	coeff = value.sign << 15 | value.exp << 12 | value.mantissa << 3;
@@ -183,13 +183,13 @@ static void intel_casf_write_coeff(const struct intel_crtc_state *crtc_state)
 
 	for (i = 0; i < 17 * SCALER_FILTER_NUM_TAPS; i += 2) {
 		u32 tmp;
-		int t;
+		int tap;
 
-		t = casf_coeff_tap(i);
-		tmp = casf_coeff(crtc_state, t);
+		tap = casf_coeff_tap(i);
+		tmp = casf_coeff(crtc_state, tap);
 
-		t = casf_coeff_tap(i + 1);
-		tmp |= casf_coeff(crtc_state, t) << 16;
+		tap = casf_coeff_tap(i + 1);
+		tmp |= casf_coeff(crtc_state, tap) << 16;
 
 		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc->pipe, id, 0),
 				  tmp);
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 308b8d363bba0..eceda1a909ccd 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -661,9 +661,9 @@ static int glk_coef_tap(int i)
 	return i % 7;
 }
 
-static u16 glk_nearest_filter_coef(int t)
+static u16 glk_nearest_filter_coef(int tap)
 {
-	return t == 3 ? 0x0800 : 0x3000;
+	return tap == 3 ? 0x0800 : 0x3000;
 }
 
 /*
@@ -715,13 +715,13 @@ static void glk_program_nearest_filter_coefs(struct intel_display *display,
 
 	for (i = 0; i < 17 * 7; i += 2) {
 		u32 tmp;
-		int t;
+		int tap;
 
-		t = glk_coef_tap(i);
-		tmp = glk_nearest_filter_coef(t);
+		tap = glk_coef_tap(i);
+		tmp = glk_nearest_filter_coef(tap);
 
-		t = glk_coef_tap(i + 1);
-		tmp |= glk_nearest_filter_coef(t) << 16;
+		tap = glk_coef_tap(i + 1);
+		tmp |= glk_nearest_filter_coef(tap) << 16;
 
 		intel_de_write_dsb(display, dsb,
 				   GLK_PS_COEF_DATA_SET(pipe, id, set), tmp);
-- 
2.45.2

