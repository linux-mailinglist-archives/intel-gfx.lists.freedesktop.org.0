Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNhuI+uI2mly3ggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 19:46:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 229BC3E11DA
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Apr 2026 19:46:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1728210E210;
	Sat, 11 Apr 2026 17:46:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l1w/ZeMx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6153C10E20F
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Apr 2026 17:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775929576; x=1807465576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W9ZRdtJwSFNmdYCd4kn0fq+WChuOU3sE+UmX6YhbZqw=;
 b=l1w/ZeMxW71Xw8hAHRX+Go2X3cK6keHkE16hSsRvt4QpxzPmEcFoIsE5
 VEs5QRSPC4Iu0n2pCjcpFdS0oqwho6VhjlGI4aBRb4DAd6eAEJrLXz99+
 tsn7ylDadMdouJ/Br+YQPd/JGv7V/Q1xiI8lmOF3PH0rbTKM1tcoRgswt
 BPpkXZXnHg/VSNoq8DDfL0L6Lxsx0f9Q9HiVdQWg2lISyZ+aYbi3C6S/s
 QHs+54rqB+FOp5utxbcv6gZSorrYfEcEL2ARmM7jVTvCTTWXiau6flDhs
 gSh92oaVYBCbv+bjUjZlXEv3HRHWc/ByK1899QScLS5PMv1+F4A0CVxpQ g==;
X-CSE-ConnectionGUID: TlJBBGc+TZCJYR1aLLseyg==
X-CSE-MsgGUID: +VHd+qH+T7qI8eQrJm581g==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="99564216"
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="99564216"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2026 10:46:16 -0700
X-CSE-ConnectionGUID: FhuIoIGeQPmBEGhPaWNrRQ==
X-CSE-MsgGUID: y/kk9QIXRFKv7eK0fSzlJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,173,1770624000"; d="scan'208";a="222899831"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by fmviesa009.fm.intel.com with ESMTP; 11 Apr 2026 10:46:14 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v2 02/10] drm/i915/casf: rename *_coeff*() into *_coef*()
Date: Sat, 11 Apr 2026 19:45:18 +0200
Message-ID: <20260411174526.2850179-3-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 229BC3E11DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Stick to the notion of already used *_coeff*() instead of *_coef*().
Rename that way convert_sharpness_coef_binary() and
intel_casf_scaler_compute_coef().

v1->v2
- rename intel_casf_scaler_compute_coef()

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 9a306aee21994..c4fabffa369e3 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -88,7 +88,7 @@ static void intel_casf_compute_win_size(struct intel_crtc_state *crtc_state)
 		crtc_state->pch_pfit.casf.win_size = SHARPNESS_FILTER_SIZE_7X7;
 }
 
-static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state);
+static void intel_casf_scaler_compute_coeff(struct intel_crtc_state *crtc_state);
 
 int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 {
@@ -118,7 +118,7 @@ int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
 
 	intel_casf_compute_win_size(crtc_state);
 
-	intel_casf_scaler_compute_coef(crtc_state);
+	intel_casf_scaler_compute_coeff(crtc_state);
 
 	return 0;
 }
@@ -196,7 +196,7 @@ static void intel_casf_write_coeff(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
+static void convert_sharpness_coeff_binary(struct scaler_filter_coeff *coeff,
 					  u16 coefficient)
 {
 	if (coefficient < 25) {
@@ -214,7 +214,7 @@ static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
 	}
 }
 
-static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state)
+static void intel_casf_scaler_compute_coeff(struct intel_crtc_state *crtc_state)
 {
 	const u16 *filtercoeff;
 	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
@@ -233,7 +233,7 @@ static void intel_casf_scaler_compute_coef(struct intel_crtc_state *crtc_state)
 
 	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++) {
 		filter_coeff[i] = (*(filtercoeff + i) * 100 / sumcoeff);
-		convert_sharpness_coef_binary(&crtc_state->pch_pfit.casf.coeff[i],
+		convert_sharpness_coeff_binary(&crtc_state->pch_pfit.casf.coeff[i],
 					      filter_coeff[i]);
 	}
 }
-- 
2.45.2

