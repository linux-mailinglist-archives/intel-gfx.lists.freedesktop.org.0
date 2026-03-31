Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCYbKCG7y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:16:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C51369583
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:16:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC41C10EA9D;
	Tue, 31 Mar 2026 12:16:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gntT1N+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8287D10E372;
 Tue, 31 Mar 2026 12:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774959388; x=1806495388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KoD/5SXNv/OcvU1ya0P/71beUgxm7nLl1tNTfR3Ymp8=;
 b=gntT1N+w/1CQf2ekS9zbQCPyUKk/MPPdAumzg/NIGzdt9RtgYP+a+p50
 YRsnjDrpKZksS5q977ehs71AN8Ad1jI20XtZ2+2bqe+mswQBvlr/pUyN1
 bsi5LYZ5aVapCFHbjGJmsLQLmVD/UMOw6l6GDz/kOx001fyVu4s7O5B5h
 odvzQjn/4LT35G6nCuIsog/qoxbBOIEEj0lx8MPrYygaROFsASkvV/y+o
 X2+O0Q7GzN7Uv8NusFSScm2LJqRyDQxCMTMqxHqI4izIwa9ABjp3/DfBu
 pcxlqBOaGnTAXVI8SogmbWInpetIvi4fu96ot1H1dh9E+MOoiXPHLvvA8 w==;
X-CSE-ConnectionGUID: zfqvVhDuRd6eMisJmQyStg==
X-CSE-MsgGUID: 280zfePOQwiwE7rdXhQGTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87361404"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87361404"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:16:28 -0700
X-CSE-ConnectionGUID: CecJybiyTSGr77XJkavduA==
X-CSE-MsgGUID: 6InsP9/HQDOwOZv3gbzySA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="223469008"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.244])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:16:26 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 2/8] drm/i915: move KBL clock gating init to display
Date: Tue, 31 Mar 2026 15:07:13 +0300
Message-ID: <20260331121608.1016333-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260331121608.1016333-1-luciano.coelho@intel.com>
References: <20260331121608.1016333-1-luciano.coelho@intel.com>
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
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 54C51369583
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the KBL-specific display clock gating programming into a
display intel_display_clock_gating.c, to remove more dependencies from
i915 to display registers.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../gpu/drm/i915/display/intel_display_clock_gating.c    | 9 +++++++++
 .../gpu/drm/i915/display/intel_display_clock_gating.h    | 1 +
 drivers/gpu/drm/i915/intel_clock_gating.c                | 6 +-----
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
index 4a94593335e0..508735212d6b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
@@ -17,3 +17,12 @@ void intel_display_skl_init_clock_gating(struct intel_display *display)
 	 */
 	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
 }
+
+void intel_display_kbl_init_clock_gating(struct intel_display *display)
+{
+	/*
+	 * WaFbcTurnOffFbcWatermark:kbl
+	 * Display WA #0562: kbl
+	 */
+	intel_de_rmw(display, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
index 00f416db7f47..8c21217de66a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
@@ -9,5 +9,6 @@
 struct intel_display;
 
 void intel_display_skl_init_clock_gating(struct intel_display *display);
+void intel_display_kbl_init_clock_gating(struct intel_display *display);
 
 #endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 454334fef5e7..5f7910dbe164 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -331,11 +331,7 @@ static void kbl_init_clock_gating(struct drm_i915_private *i915)
 		intel_uncore_rmw(&i915->uncore, GEN6_UCGCTL1,
 				 0, GEN6_GAMUNIT_CLOCK_GATE_DISABLE);
 
-	/*
-	 * WaFbcTurnOffFbcWatermark:kbl
-	 * Display WA #0562: kbl
-	 */
-	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL, 0, DISP_FBC_WM_DIS);
+	intel_display_kbl_init_clock_gating(i915->display);
 }
 
 static void skl_init_clock_gating(struct drm_i915_private *i915)
-- 
2.53.0

