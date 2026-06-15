Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QmsZIsphMGpPSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CDB689E1E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:34:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Lv2h1pbx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FCC10E6A9;
	Mon, 15 Jun 2026 20:34:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D937A10E660;
 Mon, 15 Jun 2026 20:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555656; x=1813091656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ahwYYL3I2KAi6EDYvqRIaz26YYNhFACz5rbjaCVcUXw=;
 b=Lv2h1pbxVE9ZIdQOmzLM4nLCArYOOF3++guDXnuWu61DoDWX9VkQJBW4
 pMfnp/p3MBKwprEYGikunH/+ebEPkHijp+YciLULEroPv8GvaBzBkCoWZ
 yec9EVTtBzUDkpJsBhMg9CsD6r/piyZp/UNREQtavtQUw6596Ltnnlv/H
 w5Hu2sCPInbZNRPYer9hILX2y6tV24aahLjFibMOjdPKgRRaCTTaIwX37
 IKON8Ya1Y5n7xjHqyACmi/d71cyP5FVnmaz0/oiIyeU/94qWaPB01EKnE
 SR2NLOAm6sdM3mNiJFg2Tqjxntm/HErgvua8kDM/79XDFGj7qDxs04bCi g==;
X-CSE-ConnectionGUID: YmDUjseTQ0+U3onO1ffElw==
X-CSE-MsgGUID: Eb8RN+3RRJq9s22N6QNaQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694569"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694569"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:16 -0700
X-CSE-ConnectionGUID: cBl9WWq6R/GB8OBuEm/Srw==
X-CSE-MsgGUID: dxMh6MvrQcmH2arM7xkemQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="252538463"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.246])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:34:14 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 2/7] drm/i915/pm_demand: introduce HAS_PMDEMAND macro
Date: Mon, 15 Jun 2026 23:33:50 +0300
Message-ID: <20260615203355.218578-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615203355.218578-1-vinod.govindapillai@intel.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 32CDB689E1E

PM demand feature introduces a new way to set bw, power and
performance requirements to pcode from display version 14 onwards.
Use an identifiable name as a macro to distinguish the pm demand
specific changes in the code.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c             |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_device.h |  1 +
 drivers/gpu/drm/i915/display/intel_display_irq.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_display_power.c  |  4 ++--
 drivers/gpu/drm/i915/display/intel_pmdemand.c       | 12 ++++++------
 5 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 41539fdfeac5..4557de85fade 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -184,7 +184,7 @@ static int icl_pcode_restrict_qgv_points(struct intel_display *display,
 {
 	int ret;
 
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_PMDEMAND(display))
 		return 0;
 
 	/* bspec says to keep retrying for at least 1 ms */
@@ -1238,7 +1238,7 @@ static int intel_bw_check_qgv_points(struct intel_display *display,
 
 	data_rate = DIV_ROUND_UP(data_rate, 1000);
 
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_PMDEMAND(display))
 		return mtl_find_qgv_points(display, data_rate, num_active_planes,
 					   new_bw_state);
 	else
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 12e5a522a299..13e93a4b4f5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -193,6 +193,7 @@ struct intel_display_platforms {
 #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
 #define HAS_PIPEDMC(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_PIXEL_NORMALIZER(__display)	(DISPLAY_VER(__display) >= 35)
+#define HAS_PMDEMAND(__display)		(DISPLAY_VER(__display) >= 14)
 #define HAS_PSR(__display)		(DISPLAY_INFO(__display)->has_psr)
 #define HAS_PSR_HW_TRACKING(__display)	(DISPLAY_INFO(__display)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(__display)	(DISPLAY_VER(__display) >= 12)
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 4a821b0674fd..a58bd54e2dc3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1262,7 +1262,7 @@ gen8_de_misc_irq_handler(struct intel_display *display, u32 iir)
 		}
 	}
 
-	if (DISPLAY_VER(display) >= 14) {
+	if (HAS_PMDEMAND(display)) {
 		if (iir & (XELPDP_PMDEMAND_RSP |
 			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
 			if (iir & XELPDP_PMDEMAND_RSPTOUT_ERR)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2e51dfcd5dce..03f860313515 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1122,7 +1122,7 @@ static void gen9_dbuf_enable(struct intel_display *display)
 
 	slices_mask = BIT(DBUF_S1) | display->dbuf.enabled_slices;
 
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_PMDEMAND(display))
 		intel_pmdemand_program_dbuf(display, slices_mask);
 
 	/*
@@ -1136,7 +1136,7 @@ static void gen9_dbuf_disable(struct intel_display *display)
 {
 	gen9_dbuf_slices_update(display, 0);
 
-	if (DISPLAY_VER(display) >= 14)
+	if (HAS_PMDEMAND(display))
 		intel_pmdemand_program_dbuf(display, 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 6d32c52269a6..f96545a5b881 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -152,7 +152,7 @@ intel_pmdemand_update_phys_mask(struct intel_display *display,
 {
 	enum phy phy;
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	if (!encoder)
@@ -174,7 +174,7 @@ intel_pmdemand_update_port_clock(struct intel_display *display,
 				 struct intel_pmdemand_state *pmdemand_state,
 				 enum pipe pipe, int port_clock)
 {
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	pmdemand_state->ddi_clocks[pipe] = port_clock;
@@ -324,7 +324,7 @@ int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
 	const struct intel_dbuf_state *new_dbuf_state;
 	struct intel_pmdemand_state *new_pmdemand_state;
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return 0;
 
 	if (!intel_pmdemand_needs_update(state))
@@ -404,7 +404,7 @@ intel_pmdemand_init_pmdemand_params(struct intel_display *display,
 {
 	u32 reg1, reg2;
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	mutex_lock(&display->pmdemand.lock);
@@ -637,7 +637,7 @@ void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state)
 	const struct intel_pmdemand_state *old_pmdemand_state =
 		intel_atomic_get_old_pmdemand_state(state);
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	if (!new_pmdemand_state ||
@@ -660,7 +660,7 @@ void intel_pmdemand_post_plane_update(struct intel_atomic_state *state)
 	const struct intel_pmdemand_state *old_pmdemand_state =
 		intel_atomic_get_old_pmdemand_state(state);
 
-	if (DISPLAY_VER(display) < 14)
+	if (!HAS_PMDEMAND(display))
 		return;
 
 	if (!new_pmdemand_state ||
-- 
2.43.0

