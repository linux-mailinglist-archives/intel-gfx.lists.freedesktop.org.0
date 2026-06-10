Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PqO2A/aZKWr2aQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:08:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A64166BDDF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:08:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=RFodE438;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E8410EB43;
	Wed, 10 Jun 2026 17:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECEF310EB43;
 Wed, 10 Jun 2026 17:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111284; x=1812647284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zzlunuYVIRzJUtmVVNlxZlX8PgJz0p92vd6q7UVctXk=;
 b=RFodE438cBrXQWK7lBsEGCfsGUjfVaaNMJ8N1JklyGcPVBVRDZwvwbZD
 eQT3facC7HpFuuqFKgzPEvcw2W761bPgxORsQyOrxbLsed0VXvU8397/x
 evWdwqVWZZa9FuZ8e5BwW7c/oN7i3Risg4Bc+p576JepRdC1ZeiPMEz3O
 IlhtKj+2ONXqtRvHQawOZ2UlzDBPob99ur8HDIGOzuSOaIQUEJ3mvU2Sw
 VfJlNXxupWra9d25cMNPux1Pvp481waOtNPj/c7DX4jtTz/HJ8QeE+yZS
 T6QN0dZYhKUqTcQ5pif5F/fT3n0cEBV+7Rruv/w7OQ2oCYEcJlRs8fpLC Q==;
X-CSE-ConnectionGUID: Y80PbcsKTHK8gdFY3dIGtQ==
X-CSE-MsgGUID: mO491ealSUG3/096M7yimw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="82103773"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="82103773"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:08:03 -0700
X-CSE-ConnectionGUID: 7NqR2iZcQcuPmDPAxrf6+A==
X-CSE-MsgGUID: Ugi1SYezRbK5NChbVOO4XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="251325930"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:08:01 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 14/14] drm/i915/cdclk: Hoist intel_cdclk_{pre,
 post}_notify() calls upwards
Date: Wed, 10 Jun 2026 20:06:51 +0300
Message-ID: <20260610170652.5320-15-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 7A64166BDDF

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that intel_cdclk_{pre,post}_notify() are implemented via vfuncs
there is no need to keep them inside the .set_cdclk() hooks. Move
the calls one level up to intel_cdclk_set_cdclk().

We do need to adjust {skl,bxt}_cdclk_(un)init_hw() to call the wrapper
rather than the low level implementation directly, or else they would
not do the pcode notification anymore.

The two slight functions changes here are:
- bdw_set_cdclk() might theoretically bail out after doing the
  pre notification, but that codepath would only come into play
  if the hardware is seriously misprogrammed, so should never happen
- cdclk hw readout is still done from .set_cdclk(), so that now
  happens before the post notify vs. previously the readout happened
  before it. This should not matter as the readout is not affected
  by the post notify (since we can't actually read out anything from
  pcode).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 33 ++++++----------------
 1 file changed, 9 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 4154b4888eff..617ad154505c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -209,7 +209,12 @@ static void intel_cdclk_set_cdclk(struct intel_display *display,
 				  const struct intel_cdclk_config *cdclk_config,
 				  enum pipe pipe)
 {
+	if (intel_cdclk_pre_notify(display))
+		return;
+
 	display->cdclk.funcs->set_cdclk(display, cdclk_config, pipe);
+
+	intel_cdclk_post_notify(display, cdclk_config);
 }
 
 static int intel_cdclk_modeset_calc_cdclk(struct intel_atomic_state *state)
@@ -933,10 +938,6 @@ static void bdw_set_cdclk(struct intel_display *display,
 		     "trying to change cdclk frequency with cdclk not enabled\n"))
 		return;
 
-	ret = intel_cdclk_pre_notify(display);
-	if (ret)
-		return;
-
 	intel_de_rmw(display, LCPLL_CTL,
 		     0, LCPLL_CD_SOURCE_FCLK);
 
@@ -960,8 +961,6 @@ static void bdw_set_cdclk(struct intel_display *display,
 	if (ret)
 		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
-	intel_cdclk_post_notify(display, cdclk_config);
-
 	intel_de_write(display, CDCLK_FREQ,
 		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
 
@@ -1218,7 +1217,6 @@ static void skl_set_cdclk(struct intel_display *display,
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 	u32 freq_select, cdclk_ctl;
-	int ret;
 
 	/*
 	 * Based on WA#1183 CDCLK rates 308 and 617MHz CDCLK rates are
@@ -1231,10 +1229,6 @@ static void skl_set_cdclk(struct intel_display *display,
 	drm_WARN_ON_ONCE(display->drm,
 			 display->platform.skylake && vco == 8640000);
 
-	ret = intel_cdclk_pre_notify(display);
-	if (ret)
-		return;
-
 	freq_select = skl_cdclk_freq_sel(display, cdclk, vco);
 
 	if (display->cdclk.hw.vco != 0 &&
@@ -1270,8 +1264,6 @@ static void skl_set_cdclk(struct intel_display *display,
 	intel_de_write(display, CDCLK_CTL, cdclk_ctl);
 	intel_de_posting_read(display, CDCLK_CTL);
 
-	intel_cdclk_post_notify(display, cdclk_config);
-
 	intel_update_cdclk(display);
 }
 
@@ -1343,7 +1335,7 @@ static void skl_cdclk_init_hw(struct intel_display *display)
 	cdclk_config.cdclk = skl_calc_cdclk(0, cdclk_config.vco);
 	cdclk_config.voltage_level = skl_calc_voltage_level(cdclk_config.cdclk);
 
-	skl_set_cdclk(display, &cdclk_config, INVALID_PIPE);
+	intel_cdclk_set_cdclk(display, &cdclk_config, INVALID_PIPE);
 }
 
 static void skl_cdclk_uninit_hw(struct intel_display *display)
@@ -1354,7 +1346,7 @@ static void skl_cdclk_uninit_hw(struct intel_display *display)
 	cdclk_config.vco = 0;
 	cdclk_config.voltage_level = skl_calc_voltage_level(cdclk_config.cdclk);
 
-	skl_set_cdclk(display, &cdclk_config, INVALID_PIPE);
+	intel_cdclk_set_cdclk(display, &cdclk_config, INVALID_PIPE);
 }
 
 struct intel_cdclk_vals {
@@ -2308,11 +2300,6 @@ static void bxt_set_cdclk(struct intel_display *display,
 {
 	struct intel_cdclk_config mid_cdclk_config;
 	int cdclk = cdclk_config->cdclk;
-	int ret;
-
-	ret = intel_cdclk_pre_notify(display);
-	if (ret)
-		return;
 
 	if (DISPLAY_VER(display) >= 20 && cdclk < display->cdclk.hw.cdclk)
 		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
@@ -2328,8 +2315,6 @@ static void bxt_set_cdclk(struct intel_display *display,
 	if (DISPLAY_VER(display) >= 20 && cdclk > display->cdclk.hw.cdclk)
 		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
 
-	intel_cdclk_post_notify(display, cdclk_config);
-
 	intel_update_cdclk(display);
 
 	/*
@@ -2413,7 +2398,7 @@ static void bxt_cdclk_init_hw(struct intel_display *display)
 	cdclk_config.voltage_level =
 		intel_cdclk_calc_voltage_level(display, cdclk_config.cdclk);
 
-	bxt_set_cdclk(display, &cdclk_config, INVALID_PIPE);
+	intel_cdclk_set_cdclk(display, &cdclk_config, INVALID_PIPE);
 }
 
 static void bxt_cdclk_uninit_hw(struct intel_display *display)
@@ -2425,7 +2410,7 @@ static void bxt_cdclk_uninit_hw(struct intel_display *display)
 	cdclk_config.voltage_level =
 		intel_cdclk_calc_voltage_level(display, cdclk_config.cdclk);
 
-	bxt_set_cdclk(display, &cdclk_config, INVALID_PIPE);
+	intel_cdclk_set_cdclk(display, &cdclk_config, INVALID_PIPE);
 }
 
 /**
-- 
2.53.0

