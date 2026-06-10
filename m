Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FGpKJfGZKWryaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:08:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41AED66BDDB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:08:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=E9YIn1cb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D5F10EB39;
	Wed, 10 Jun 2026 17:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 919DE10EB39;
 Wed, 10 Jun 2026 17:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111279; x=1812647279;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d0+iO30Ec6wYaJCUob9C1b+ePS7qc0Qj1HM5jSbP4fA=;
 b=E9YIn1cbMu8po51a5EbTBWZ84EVzTtrS+a26bW8S2idFGHaZm7h0WqYb
 cMkvPLhwc9SOq1doTptcIDknxtT6+xBPcvF5AQrdWl76Un0EPqO8kVqw3
 xQPjMS0Ll0hbhd7Z/QQwvlVoQAX5J9Mq3C+3BxBmh5G66ZjqqwPB2Wj/f
 nSAvacyxAif1Y6V1BDRjbK0YCpRNcToyV4+8lvF6PuyiOg+9LW6ylhV1N
 AOlhbbc2VqIvpPlMQ/jDJb3xw1H8Q1LWcuMKOQc2/S8gU4TG8a7f8kXbS
 R7wfY8NC98bGpgw6RbEWwbzTH9Ht5071viSLkWwcgRUJdHHJggMzjKkrm g==;
X-CSE-ConnectionGUID: qujmZJj+Sf2W4vmhi9KY6g==
X-CSE-MsgGUID: 2IlWNa+QSPOPPAjfvr/haQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82103759"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="82103759"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:59 -0700
X-CSE-ConnectionGUID: KE9IqoYKTN6UUydWmYW5Rw==
X-CSE-MsgGUID: bz2Sx2MUSVuz1YidKgdSng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="251325912"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:57 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/14] drm/i915/cdclk: Introduce CDCLK .{pre,
 post}_notify() vfuncs
Date: Wed, 10 Jun 2026 20:06:50 +0300
Message-ID: <20260610170652.5320-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
References: <20260610170652.5320-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 41AED66BDDB

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Turn the cdclk pcode pre/post notify functiosn into vfuncs.
Mainly to get rid of the hideous if-ladders in bxt_set_cdclk().

DG2 is currently doing its own thing with its pcode notify funcs so
can't be converted yet. And MTL+ go via the pmdemand stuff so this
is all supposedly handled elsewhere.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 122 ++++++++++++---------
 1 file changed, 73 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 749e366e60ab..4154b4888eff 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -163,6 +163,9 @@ struct intel_cdclk_funcs {
 	void (*set_cdclk)(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe);
+	int (*pre_notify)(struct intel_display *display);
+	int (*post_notify)(struct intel_display *display,
+			   const struct intel_cdclk_config *cdclk_config);
 	int (*modeset_calc_cdclk)(struct intel_atomic_state *state);
 	u8 (*calc_voltage_level)(int cdclk);
 };
@@ -173,6 +176,35 @@ void intel_cdclk_get_cdclk(struct intel_display *display,
 	display->cdclk.funcs->get_cdclk(display, cdclk_config);
 }
 
+static int intel_cdclk_pre_notify(struct intel_display *display)
+{
+	int ret;
+
+	if (!display->cdclk.funcs->pre_notify)
+		return 0;
+
+	ret = display->cdclk.funcs->pre_notify(display);
+	if (ret)
+		drm_err(display->drm,
+			"Failed to inform system about start of CDCLK change (%d)\n", ret);
+
+	return ret;
+}
+
+static void intel_cdclk_post_notify(struct intel_display *display,
+				    const struct intel_cdclk_config *cdclk_config)
+{
+	int ret;
+
+	if (!display->cdclk.funcs->post_notify)
+		return;
+
+	ret = display->cdclk.funcs->post_notify(display, cdclk_config);
+	if (ret)
+		drm_err(display->drm,
+			"Failed to inform system about end of CDCLK change (%d)\n", ret);
+}
+
 static void intel_cdclk_set_cdclk(struct intel_display *display,
 				  const struct intel_cdclk_config *cdclk_config,
 				  enum pipe pipe)
@@ -901,12 +933,9 @@ static void bdw_set_cdclk(struct intel_display *display,
 		     "trying to change cdclk frequency with cdclk not enabled\n"))
 		return;
 
-	ret = bdw_cdclk_pcode_pre_notify(display);
-	if (ret) {
-		drm_err(display->drm,
-			"Failed to inform PCODE about start of CDCLK change (%d)\n", ret);
+	ret = intel_cdclk_pre_notify(display);
+	if (ret)
 		return;
-	}
 
 	intel_de_rmw(display, LCPLL_CTL,
 		     0, LCPLL_CD_SOURCE_FCLK);
@@ -931,10 +960,7 @@ static void bdw_set_cdclk(struct intel_display *display,
 	if (ret)
 		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
-	ret = bdw_cdclk_pcode_post_notify(display, cdclk_config);
-	if (ret)
-		drm_err(display->drm,
-			"Failed to inform PCODE about end of CDCLK change (%d)\n", ret);
+	intel_cdclk_post_notify(display, cdclk_config);
 
 	intel_de_write(display, CDCLK_FREQ,
 		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
@@ -1205,12 +1231,9 @@ static void skl_set_cdclk(struct intel_display *display,
 	drm_WARN_ON_ONCE(display->drm,
 			 display->platform.skylake && vco == 8640000);
 
-	ret = skl_cdclk_pcode_pre_notify(display);
-	if (ret) {
-		drm_err(display->drm,
-			"Failed to inform PCODE about start of CDCLK change (%d)\n", ret);
+	ret = intel_cdclk_pre_notify(display);
+	if (ret)
 		return;
-	}
 
 	freq_select = skl_cdclk_freq_sel(display, cdclk, vco);
 
@@ -1247,10 +1270,7 @@ static void skl_set_cdclk(struct intel_display *display,
 	intel_de_write(display, CDCLK_CTL, cdclk_ctl);
 	intel_de_posting_read(display, CDCLK_CTL);
 
-	ret = skl_cdclk_pcode_post_notify(display, cdclk_config);
-	if (ret)
-		drm_err(display->drm,
-			"Failed to inform PCODE about end of CDCLK change (%d)\n", ret);
+	intel_cdclk_post_notify(display, cdclk_config);
 
 	intel_update_cdclk(display);
 }
@@ -2290,24 +2310,9 @@ static void bxt_set_cdclk(struct intel_display *display,
 	int cdclk = cdclk_config->cdclk;
 	int ret;
 
-	/*
-	 * Inform power controller of upcoming frequency change.
-	 * Display versions 14 and beyond do not follow the PUnit
-	 * mailbox communication, skip
-	 * this step.
-	 */
-	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
-		ret = 0; /* NOOP */
-	else if (DISPLAY_VER(display) >= 11)
-		ret = skl_cdclk_pcode_pre_notify(display);
-	else
-		ret = bxt_cdclk_pcode_pre_notify(display);
-
-	if (ret) {
-		drm_err(display->drm,
-			"Failed to inform PCODE about start of CDCLK change (%d)\n", ret);
+	ret = intel_cdclk_pre_notify(display);
+	if (ret)
 		return;
-	}
 
 	if (DISPLAY_VER(display) >= 20 && cdclk < display->cdclk.hw.cdclk)
 		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
@@ -2323,16 +2328,7 @@ static void bxt_set_cdclk(struct intel_display *display,
 	if (DISPLAY_VER(display) >= 20 && cdclk > display->cdclk.hw.cdclk)
 		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
 
-	if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
-		ret = 0; /* NOOP */
-	else if (DISPLAY_VER(display) >= 11)
-		ret = skl_cdclk_pcode_post_notify(display, cdclk_config);
-	else
-		ret = bxt_cdclk_pcode_post_notify(display, cdclk_config);
-
-	if (ret)
-		drm_err(display->drm,
-			"Failed to inform PCODE about end of CDCLK change (%d)\n", ret);
+	intel_cdclk_post_notify(display, cdclk_config);
 
 	intel_update_cdclk(display);
 
@@ -3929,9 +3925,25 @@ static const struct intel_cdclk_funcs xe3lpd_cdclk_funcs = {
 	.calc_voltage_level = xe3lpd_calc_voltage_level,
 };
 
+static const struct intel_cdclk_funcs mtl_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = rplu_calc_voltage_level,
+};
+
+static const struct intel_cdclk_funcs dg2_cdclk_funcs = {
+	.get_cdclk = bxt_get_cdclk,
+	.set_cdclk = bxt_set_cdclk,
+	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
+	.calc_voltage_level = tgl_calc_voltage_level,
+};
+
 static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
+	.pre_notify = skl_cdclk_pcode_pre_notify,
+	.post_notify = skl_cdclk_pcode_post_notify,
 	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
 	.calc_voltage_level = rplu_calc_voltage_level,
 };
@@ -3939,6 +3951,8 @@ static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
 static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
+	.pre_notify = skl_cdclk_pcode_pre_notify,
+	.post_notify = skl_cdclk_pcode_post_notify,
 	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
 	.calc_voltage_level = tgl_calc_voltage_level,
 };
@@ -3946,6 +3960,8 @@ static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
 static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
+	.pre_notify = skl_cdclk_pcode_pre_notify,
+	.post_notify = skl_cdclk_pcode_post_notify,
 	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
 	.calc_voltage_level = ehl_calc_voltage_level,
 };
@@ -3953,6 +3969,8 @@ static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
 static const struct intel_cdclk_funcs icl_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
+	.pre_notify = skl_cdclk_pcode_pre_notify,
+	.post_notify = skl_cdclk_pcode_post_notify,
 	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
 	.calc_voltage_level = icl_calc_voltage_level,
 };
@@ -3960,6 +3978,8 @@ static const struct intel_cdclk_funcs icl_cdclk_funcs = {
 static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
 	.get_cdclk = bxt_get_cdclk,
 	.set_cdclk = bxt_set_cdclk,
+	.pre_notify = bxt_cdclk_pcode_pre_notify,
+	.post_notify = bxt_cdclk_pcode_post_notify,
 	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
 	.calc_voltage_level = bxt_calc_voltage_level,
 };
@@ -3967,12 +3987,16 @@ static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
 static const struct intel_cdclk_funcs skl_cdclk_funcs = {
 	.get_cdclk = skl_get_cdclk,
 	.set_cdclk = skl_set_cdclk,
+	.pre_notify = skl_cdclk_pcode_pre_notify,
+	.post_notify = skl_cdclk_pcode_post_notify,
 	.modeset_calc_cdclk = skl_modeset_calc_cdclk,
 };
 
 static const struct intel_cdclk_funcs bdw_cdclk_funcs = {
 	.get_cdclk = bdw_get_cdclk,
 	.set_cdclk = bdw_set_cdclk,
+	.pre_notify = bdw_cdclk_pcode_pre_notify,
+	.post_notify = bdw_cdclk_pcode_post_notify,
 	.modeset_calc_cdclk = bdw_modeset_calc_cdclk,
 };
 
@@ -4078,16 +4102,16 @@ void intel_init_cdclk_hooks(struct intel_display *display)
 		display->cdclk.funcs = &xe3lpd_cdclk_funcs;
 		display->cdclk.table = xe3lpd_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 20) {
-		display->cdclk.funcs = &rplu_cdclk_funcs;
+		display->cdclk.funcs = &mtl_cdclk_funcs;
 		display->cdclk.table = xe2lpd_cdclk_table;
 	} else if (DISPLAY_VERx100(display) >= 1401) {
-		display->cdclk.funcs = &rplu_cdclk_funcs;
+		display->cdclk.funcs = &mtl_cdclk_funcs;
 		display->cdclk.table = xe2hpd_cdclk_table;
 	} else if (DISPLAY_VER(display) >= 14) {
-		display->cdclk.funcs = &rplu_cdclk_funcs;
+		display->cdclk.funcs = &mtl_cdclk_funcs;
 		display->cdclk.table = mtl_cdclk_table;
 	} else if (display->platform.dg2) {
-		display->cdclk.funcs = &tgl_cdclk_funcs;
+		display->cdclk.funcs = &dg2_cdclk_funcs;
 		display->cdclk.table = dg2_cdclk_table;
 	} else if (display->platform.alderlake_p) {
 		/* Wa_22011320316:adl-p[a0] */
-- 
2.53.0

