Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JY5Mq7mx2kYegUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A10DA34EAEE
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BA210E029;
	Sat, 28 Mar 2026 14:33:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lM/tpzFr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43BF710E029
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2026 14:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774708396; x=1806244396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f5WFxkJ3q7IXQcBjx0MuytX38kkzhRwKlsj5VXWsqsY=;
 b=lM/tpzFrYBbah8NC+8YcLGpyn4yrW3tAS2C3KwGZCHs5z3W08wMptf10
 Ruhw+bnnkmf2SMP2kZnPXtKq6SUKyrfSAXKwC7HLaxXodMslguIowPLfR
 /jiR4L36FXfbtBCkZNotaY/fF9//iEa2VLQOYrO5D3vymBgy5As9tbCMg
 gT8U2/c0v1UHjrwGY41B65VGS5HgROx6hx5EuKaLTFY11g41vi/2dRmL/
 0yGo2I+pR4fEunIdMMlmELnlhBbmeGtTGAdSoRroQBo2VPwREQdg2Xo/k
 nVi8u9zTxcNaEsyz64dCZars05bTlPan0bN7Z5piH6NOwEORRt+qSIEad g==;
X-CSE-ConnectionGUID: M4fzaT5tRvuqDHCligTLAw==
X-CSE-MsgGUID: AtYC530HR8qg84fQ1B2/vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="86839490"
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="86839490"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 07:33:16 -0700
X-CSE-ConnectionGUID: EariXoJtSWmJUnFxfEDxRg==
X-CSE-MsgGUID: tbkCNandQhihO5C1xouYSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="224621077"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 28 Mar 2026 07:33:15 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 04/10] drm/i915/casf: rename sumcoeff into sum_coeff
Date: Sat, 28 Mar 2026 15:32:06 +0100
Message-ID: <20260328143212.601656-5-michal.grzelak@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: A10DA34EAEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Stick to using snake_case in intel_casf_scaler_compute_config() where
it is possible.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index d59e5ed4275c..0d23014f5976 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -244,7 +244,7 @@ void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
 {
 	const u16 *filtercoeff;
 	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
-	u16 sumcoeff = 0;
+	u16 sum_coeff = 0;
 	int i;
 
 	if (crtc_state->hw.casf_params.win_size == 0)
@@ -255,10 +255,10 @@ void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
 		filtercoeff = filtercoeff_3;
 
 	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++)
-		sumcoeff += *(filtercoeff + i);
+		sum_coeff += *(filtercoeff + i);
 
 	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++) {
-		filter_coeff[i] = (*(filtercoeff + i) * 100 / sumcoeff);
+		filter_coeff[i] = (*(filtercoeff + i) * 100 / sum_coeff);
 		convert_sharpness_coeff_binary(&crtc_state->hw.casf_params.coeff[i],
 					      filter_coeff[i]);
 	}
-- 
2.45.2

