Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLLqF9Nj/2kx6AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:41:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C61F500840
	for <lists+intel-gfx@lfdr.de>; Sat, 09 May 2026 18:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC37810E3DE;
	Sat,  9 May 2026 16:41:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N9nRnyd3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D6910E3DA;
 Sat,  9 May 2026 16:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778344912; x=1809880912;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GrP8S4SjQsCWQsMNhUzMo5NirR49JcKictkpuXLWNAQ=;
 b=N9nRnyd3pHlATASKItNw+EpO0O/WsO2WkTEYiqyfh5RPhRJybchktAqg
 dVXaccxIYgVVSsd1AepATtOq/2JE/woqOFqw6fioHu7/d/K0mSomBIriF
 fJZlGONt+/BW78SanoU83/Yrehq6D5neqAYS5Yo9Chw7TDRiCraVr1KaW
 ryP1bGsgPQvUfgz9F0Rk0YQTPWyWPJdgKR5mSaHtGaJh0uk/KZz+GmC8C
 14ZINqmFdpegxiry8+yuxxT611HezYhPR0yF4yzH3pVVUdC0TrhWBHxFL
 Kq1EbPZjd++VlLNS42wXViQbnspxLElnpRwL2+FEiLcCZ6T5xFPjj8lKQ g==;
X-CSE-ConnectionGUID: aKilHSJoTiS8zM4eAhRrmQ==
X-CSE-MsgGUID: CtHVpZB+TbCeOQqA4g2fLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11781"; a="90763610"
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="90763610"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2026 09:41:51 -0700
X-CSE-ConnectionGUID: ulQM3AjvR6+nU4a7bXZMhw==
X-CSE-MsgGUID: TGI2aoUnQsW2oJ6/7LMVWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,225,1770624000"; d="scan'208";a="236212239"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 09 May 2026 09:41:49 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, nemesa.garg@intel.com,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 3/9] drm/i915: rename t into tap
Date: Sat,  9 May 2026 18:40:42 +0200
Message-ID: <20260509164048.627399-4-michal.grzelak@intel.com>
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
X-Rspamd-Queue-Id: 0C61F500840
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Add more description to the casf_coeff()'s argument and
casf_coeff_tap()'s returned value.

Do the same for glk_nearest_filter_coef().

v1->v2
- apply the rename to nearest neighbor filter (Ville)

Cc: Nemesa Garg <nemesa.garg@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c | 14 +++++++-------
 drivers/gpu/drm/i915/display/skl_scaler.c | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index c4fabffa369e..b9643548d182 100644
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
index 308b8d363bba..eceda1a909cc 100644
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

