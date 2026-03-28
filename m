Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WMerOa/mx2kYegUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4A134EAF5
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2026 15:33:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCAB10E00E;
	Sat, 28 Mar 2026 14:33:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nyr4k+yN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED2F510E11F
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2026 14:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774708395; x=1806244395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q8w7YjROLE5GFKA7h54A9BVSkeuCg8X1iPh6vsUe0a8=;
 b=Nyr4k+yN9zmpTEzbm/j9uiZwPquORL4L9MCXlKzqnU1sWsetn6dPma7S
 HLJOq71M2Tj85pgWuNUkb47yrPz6tRcQmzcrU9oaIuHfZzNwniO8SpRPX
 e3Pgfk/C5c+Ty5rSp4Ijb1w165s7xSvzI/XuntgroMkufSx9bUjsNPQqJ
 ZSbF+89AlZEpG9/HqbdTDuT5hfbaCmkX+PLxfVhRG/WLZOGvBW6beC+FE
 TkgGYy8hDBqUN1lhS42kCHMSxLRRYc0vQtudfv8Hk/CpPG8lLvfxZjDkL
 KK8sPv4lZkehSCx2b0u25LbDBOydRrHD8zy890Dx3chBpu6yu0W6dBXKG g==;
X-CSE-ConnectionGUID: qYE8dYQvQ3uB/t08CpphWg==
X-CSE-MsgGUID: 5AEOoG1LQ3muXTtbNQr2Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11742"; a="86839489"
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="86839489"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2026 07:33:15 -0700
X-CSE-ConnectionGUID: wa5GSo1aR2iEaE+c0EYMmQ==
X-CSE-MsgGUID: VdXiA4lvTwG2/T3h8cDRCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,146,1770624000"; d="scan'208";a="224621074"
Received: from administrator-system-product-name.igk.intel.com (HELO
 dev-417.igk.intel.com) ([10.91.214.181])
 by orviesa006.jf.intel.com with ESMTP; 28 Mar 2026 07:33:14 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 03/10] drm/i915/casf: rename t into tap in casf_coeff()
Date: Sat, 28 Mar 2026 15:32:05 +0100
Message-ID: <20260328143212.601656-4-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: BB4A134EAF5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add more description to the casf_coeff()'s argument and
casf_coeff_tap()'s returned value.

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 13682de697be..d59e5ed4275c 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -174,12 +174,12 @@ static int casf_coeff_tap(int i)
 	return i % SCALER_FILTER_NUM_TAPS;
 }
 
-static u32 casf_coeff(struct intel_crtc_state *crtc_state, int t)
+static u32 casf_coeff(struct intel_crtc_state *crtc_state, int tap)
 {
 	struct scaler_filter_coeff value;
 	u32 coeff;
 
-	value = crtc_state->hw.casf_params.coeff[t];
+	value = crtc_state->hw.casf_params.coeff[tap];
 	value.sign = 0;
 
 	coeff = value.sign << 15 | value.exp << 12 | value.mantissa << 3;
@@ -209,13 +209,13 @@ static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
 
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
-- 
2.45.2

