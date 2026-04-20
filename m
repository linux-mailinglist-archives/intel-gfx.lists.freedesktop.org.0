Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAbRHTKL5mkGyAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:23:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5E3433A73
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:23:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A855910EB4C;
	Mon, 20 Apr 2026 20:23:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MA+Aymli";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346FC10EB49;
 Mon, 20 Apr 2026 20:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776716591; x=1808252591;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rBtYvlzYZVXixkVNaKloP9ZFeHA71yqYTbm0JOqcVns=;
 b=MA+AymliHxhMC1egNmdOfGBSdmehrylGjww3oUBXu/E0aO5vEa+1fMli
 tbVjnx86qsg+aH8hIHz3ctvpLqdqenPKWgk+Ya1MdzOnDh7FwP+fZeiN8
 WZ6dMNhrsx6XbnRCALbery9bC5l5n2bpVdAWfAw+NuwSJwWyJ4mP3nKTJ
 5ZLJS8xfMna/INsGqtRoXFhJX/9DNBWCKXjAASx3jjWmTuuVohrEZ4KQ0
 XXsnkg/p3BzW2NegUlxD0+3g737r9H17SlCrz7nh+r+qR+ik1wLGzuNmd
 4XMpgX5frEyDpF0AVzpIZ3UdYapdrVQV2T8qPJA5WdH5pVaRXC7wjtUvP w==;
X-CSE-ConnectionGUID: hbuumA9SSlmCvvwCsnTMkQ==
X-CSE-MsgGUID: Q+huC+I6SeSwJYPnhDGRNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77765250"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="77765250"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:23:11 -0700
X-CSE-ConnectionGUID: 83MMOnyIRhGO8zP09P0PdQ==
X-CSE-MsgGUID: 9oHi2Um+QLWy+tNEeF4VQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="231736565"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.229])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 13:23:09 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v4 2/8] drm/i915: move KBL clock gating init to display
Date: Mon, 20 Apr 2026 23:22:10 +0300
Message-ID: <20260420202252.3846880-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420202252.3846880-1-luciano.coelho@intel.com>
References: <20260420202252.3846880-1-luciano.coelho@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 2B5E3433A73
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
index ad28ceee012b..c446e4ac92f1 100644
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

