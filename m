Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GHLVGdWZKWrfaQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12EBC66BDA2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 19:07:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="KxL/B+rc";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DF2510E682;
	Wed, 10 Jun 2026 17:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E660110E643;
 Wed, 10 Jun 2026 17:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781111252; x=1812647252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cf23lVnwYpTaLhy0+zhvysrgdoig2rATCOSAh7ZpAvI=;
 b=KxL/B+rcS+3weCRxVekpAUOA/qq4QEbK3gGEQJU3ec36fI2H2MWKXj8q
 Y5sbs1GG4Zs5pcO1WZLdCvd0OJCLwE0C4HSle3KRDaQbtqjr+YDGFQ4IC
 9Abr7yYPFZ75lRrNAQMrXqcpYZK5TS9GbJtLeKTSZnn+nyrnYy6NHEPkh
 KIt3AKkdnD+cDraZN3n5xptsHYl3dRZZ5ZZEXaSw1yikUtpv1SWg9yu1d
 0oggawZmdgSWghYXvB4x2XDTIgjx2uZsn58rG+z3xPCFGaEDSb7NBSLf8
 wTxAIokTgEQ0cv8pHsJzrP2T3W9uP6IJJ3xrtVL3xu8mdToAvrg5sb9PT Q==;
X-CSE-ConnectionGUID: 9piecZo7R4e8tCN8fWnlIw==
X-CSE-MsgGUID: uX8VD1grQ+KMN3qjF2XeLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="81887181"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81887181"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:31 -0700
X-CSE-ConnectionGUID: CFrgT7ncSZ6CQKfvBzFouQ==
X-CSE-MsgGUID: tXBCfRP0QC2NerZ6wlrZSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="246306456"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.62])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 10:07:29 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/14] drm/i915/dg2: s/intel_/dg2_/ for DG2 specific stuff
Date: Wed, 10 Jun 2026 20:06:44 +0300
Message-ID: <20260610170652.5320-8-ville.syrjala@linux.intel.com>
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
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 12EBC66BDA2

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_pcode_*notify() are all DG2 specific code. Rename them
to have a dg2_ namespace.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 31 ++++++++++------------
 1 file changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index bbf3603f889b..659c1c0e3432 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2575,19 +2575,16 @@ void intel_cdclk_dump_config(struct intel_display *display,
 		    cdclk_config->voltage_level);
 }
 
-static void intel_pcode_notify(struct intel_display *display,
-			       u8 voltage_level,
-			       u8 active_pipe_count,
-			       u16 cdclk,
-			       bool cdclk_update_valid,
-			       bool pipe_count_update_valid)
+static void dg2_cdclk_pcode_notify(struct intel_display *display,
+				   u8 voltage_level,
+				   u8 active_pipe_count,
+				   u16 cdclk,
+				   bool cdclk_update_valid,
+				   bool pipe_count_update_valid)
 {
 	int ret;
 	u32 update_mask = 0;
 
-	if (!display->platform.dg2)
-		return;
-
 	update_mask = DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, active_pipe_count, voltage_level);
 
 	if (cdclk_update_valid)
@@ -2672,7 +2669,7 @@ static bool dg2_power_well_count(struct intel_display *display,
 	return display->platform.dg2 ? hweight8(cdclk_state->active_pipes) : 0;
 }
 
-static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
+static void dg2_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_cdclk_state *old_cdclk_state =
@@ -2715,11 +2712,11 @@ static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
 	if (update_pipe_count)
 		num_active_pipes = dg2_power_well_count(display, new_cdclk_state);
 
-	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
-			   change_cdclk, update_pipe_count);
+	dg2_cdclk_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
+			       change_cdclk, update_pipe_count);
 }
 
-static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
+static void dg2_cdclk_pcode_post_notify(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2754,8 +2751,8 @@ static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
 	if (update_pipe_count)
 		num_active_pipes = dg2_power_well_count(display, new_cdclk_state);
 
-	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
-			   update_cdclk, update_pipe_count);
+	dg2_cdclk_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
+			       update_cdclk, update_pipe_count);
 }
 
 bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state)
@@ -2821,7 +2818,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 	drm_WARN_ON(display->drm, !new_cdclk_state->base.changed);
 
 	if (display->platform.dg2)
-		intel_cdclk_pcode_pre_notify(state);
+		dg2_cdclk_pcode_pre_notify(state);
 
 	intel_set_cdclk(display, &cdclk_config, pipe,
 			"Pre changing CDCLK to");
@@ -2865,7 +2862,7 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 			"Post changing CDCLK to");
 
 	if (display->platform.dg2)
-		intel_cdclk_pcode_post_notify(state);
+		dg2_cdclk_pcode_post_notify(state);
 }
 
 /* pixels per CDCLK */
-- 
2.53.0

