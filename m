Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBlqGnxUqWkj4wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 11:01:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E72D820F364
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 11:01:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51ADC10EBEC;
	Thu,  5 Mar 2026 10:01:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NF6PjGBa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A451010EBE9;
 Thu,  5 Mar 2026 10:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772704889; x=1804240889;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y4E5mFxCUbo9pmidmfbhaGXPXHspo6XFteQBxfwlKK8=;
 b=NF6PjGBa1SPWmX3NLqHqFJhamoABRoczPvrd2dAN5D7v/PMhxXfndDZo
 kuBchpV/4Dt6EYObxk6ruhkGc5PId8T5SNLT1WJHIeAbDQ5WxD5MaceFx
 bZSvqzUhEMJ5YRFxO4b3c6gqIFTiXZ2zQyZIyj6gUI8k8HG4vLeI1Ng47
 2/saVCGbNMoIMqVSKoDF7PqvqFmL806bVattZzQudlooOJISgX4h9GgVL
 POTxag4U2TaXay6qkgzkl07Lb1D+4/IqeQF2lYta1qDV7FYMTsSTA4VmL
 yJLW//Drf2cblk1nHvnVuqbOvrdXBmTXUQ5bojji8UhmxidjSDg8gpU5l w==;
X-CSE-ConnectionGUID: G45OtyakRIuCA9CTytTWLw==
X-CSE-MsgGUID: Kk45yhqxSlKNPXaagKPjSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73758092"
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="73758092"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 02:01:28 -0800
X-CSE-ConnectionGUID: BguwytVyTvasoQhfqBPkOA==
X-CSE-MsgGUID: LeRIax2oSYiIzLDdawz7oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="215460244"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.57])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 02:01:18 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v5 04/16] drm/i915/display: convert W/As in intel_cdclk.c to
 new framework
Date: Thu,  5 Mar 2026 11:59:07 +0200
Message-ID: <20260305100100.332956-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260305100100.332956-1-luciano.coelho@intel.com>
References: <20260305100100.332956-1-luciano.coelho@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: E72D820F364
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RSPAMD_EMAILBL_FAIL(0.00)[luciano.coelho.intel.com:server fail];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_display_wa.c | 3 +++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7767f8c198da..121a12c5b8ac 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -4007,7 +4007,7 @@ void intel_init_cdclk_hooks(struct intel_display *display)
 		display->cdclk.table = dg2_cdclk_table;
 	} else if (display->platform.alderlake_p) {
 		/* Wa_22011320316:adl-p[a0] */
-		if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0)) {
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_22011320316)) {
 			display->cdclk.table = adlp_a_step_cdclk_table;
 			display->funcs.cdclk = &tgl_cdclk_funcs;
 		} else if (display->platform.alderlake_p_raptorlake_u) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 011749b680e8..aef6eca51119 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -104,6 +104,9 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return intel_display_needs_wa_16025573575(display);
 	case INTEL_DISPLAY_WA_22010178259:
 		return DISPLAY_VER(display) == 12;
+	case INTEL_DISPLAY_WA_22011320316:
+		return display->platform.alderlake_p &&
+			IS_DISPLAY_STEP(display, STEP_A0, STEP_B0);
 	case INTEL_DISPLAY_WA_22014263786:
 		return IS_DISPLAY_VERx100(display, 1100, 1400);
 	case INTEL_DISPLAY_WA_22021048059:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 380cb64cf774..aa96d111111c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -41,6 +41,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
 	INTEL_DISPLAY_WA_22010178259,
+	INTEL_DISPLAY_WA_22011320316,
 	INTEL_DISPLAY_WA_22014263786,
 	INTEL_DISPLAY_WA_22021048059,
 };
-- 
2.51.0

