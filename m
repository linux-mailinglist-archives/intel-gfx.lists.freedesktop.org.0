Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6D7OHrbmx2kYegUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A79034EB13
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C09B10E3E2;
	Sat, 28 Mar 2026 14:33:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HAYB4ufH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E03E10E00E
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2026 14:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774708398; x=1806244398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ppLoSNykuVEY74Cx68cCGZYh4QSv6IZ4lPOQ7EFp1Fg=;
 b=HAYB4ufHf6crd0NaRYEZus9QKE9r0mGZH/H6Huh25v6mm9zX6ZiHEhw0
 oSELFf+7AKCbjzCPYq56UbFysn5q7Yee6vY51MKE1JcnIX+oHHs82NQ6+
 V8JL63ICKwdLiskCahDbUX3z+O4uaiq2hc9usTfvPOEoAZhqhKg00Lit+
 jFiWgCQYrEjQ7vXeiEfaK/Tw/0qxmefhPi5uso2IznI7yGsN9+AioqJTB
 a/IDCVZF7UBTNmBCbihbeUM6Sc605ays/lTSU0/f5Cm2godCZHppRle9N
 NIXVGKoCAII8j6ZWrGJsmMg/l7nh8PPyCaruYxPO7FqcOpCNkxbgCNm/R g==;
X-CSE-ConnectionGUID: aKH2wiZMSLOUxJnuyObwxQ==
X-CSE-MsgGUID: h37AdRsrSFSe87hfTc5fWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="86839491"
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="86839491"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 07:33:17 -0700
X-CSE-ConnectionGUID: 17uXw9GYSmuD+wn5taStqQ==
X-CSE-MsgGUID: Z8OF7opyQB6luiv9l88rsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="224621084"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 28 Mar 2026 07:33:17 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 05/10] drm/i915/casf: s/i/scaler_id where appropriate
Date: Sat, 28 Mar 2026 15:32:07 +0100
Message-ID: <20260328143212.601656-6-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260328143212.601656-1-michal.grzelak@intel.com>
References: <20260328143212.601656-1-michal.grzelak@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 2A79034EB13
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Switch from generic iterator naming into more specific scaler_id where
it is possible.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 7c5cb188ebf0..729ef51beeb4 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -970,17 +970,17 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
 	int id = -1;
-	int i;
+	int scaler_id;
 
 	/* find scaler attached to this pipe */
-	for (i = 0; i < crtc->num_scalers; i++) {
+	for (scaler_id = 0; scaler_id < crtc->num_scalers; scaler_id++) {
 		u32 ctl, pos, size;
 
-		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, i));
+		ctl = intel_de_read(display, SKL_PS_CTRL(crtc->pipe, scaler_id));
 		if ((ctl & (PS_SCALER_EN | PS_BINDING_MASK)) != (PS_SCALER_EN | PS_BINDING_PIPE))
 			continue;
 
-		id = i;
+		id = scaler_id;
 
 		/* Read CASF regs for second scaler */
 		if (HAS_CASF(display) && id == 1)
@@ -989,8 +989,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 		if (!crtc_state->hw.casf_params.casf_enable)
 			crtc_state->pch_pfit.enabled = true;
 
-		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
-		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
+		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, scaler_id));
+		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, scaler_id));
 
 		if (!crtc_state->hw.casf_params.casf_enable)
 			drm_rect_init(&crtc_state->pch_pfit.dst,
@@ -999,7 +999,7 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 				      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
 				      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
 
-		scaler_state->scalers[i].in_use = true;
+		scaler_state->scalers[scaler_id].in_use = true;
 		break;
 	}
 
-- 
2.45.2

