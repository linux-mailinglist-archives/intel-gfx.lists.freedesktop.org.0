Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHdkKYtUqWkj4wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 11:01:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 574E420F39E
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 11:01:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2ED610EC08;
	Thu,  5 Mar 2026 10:01:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FGESj6DG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95B4810EC02;
 Thu,  5 Mar 2026 10:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772704897; x=1804240897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Goo6rfoYONRk4DxV9SbXxhUTj9yM43gkaoFDrECXZSI=;
 b=FGESj6DGiK4ISUErrKRHTDiJs9XKVepk4PLyAa/F6cKK7ebBctIJXFI3
 CVZ1U81sfJXXaLWaGD1l6V0SvpiB9YRltqq6bogD95HjTLWQ8ckx7Oul+
 QmJUFvFL0S0lsP7WeDWSSTd17dYtEEiEXzwZha5wvCUmaOxOV4AXqh45l
 NnzLneHcR56D3wOD6d6VLPjcIW8iTqawuB8alkx2J7NfdnkYr9p0uMEzq
 MHH0TZoYdJI5oDze3GuKbjQWxCr5PbOrhxAmgecmNrczmwEXNXhAF7vy1
 blhpsytm6VRuCc1ZQtarFjrl55RFU6/+AlicCUxlJsjeIw/m+ATLWHPT7 Q==;
X-CSE-ConnectionGUID: QyAwC3r8RTmAxhXvxxUr/g==
X-CSE-MsgGUID: fFxWTr93QHGrgmy55Fqatw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73758113"
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="73758113"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 02:01:37 -0800
X-CSE-ConnectionGUID: oQwSQRryTQeI8u7GSaxxTA==
X-CSE-MsgGUID: L/nQgbl3Skehd/6/JsGs2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="215460308"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.57])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 02:01:35 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v5 13/16] drm/i915/display: convert W/As in intel_pmdemand.c
 to new framework
Date: Thu,  5 Mar 2026 11:59:16 +0200
Message-ID: <20260305100100.332956-14-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: 574E420F39E
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
	RSPAMD_EMAILBL_FAIL(0.00)[luciano.coelho.intel.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c   | 8 +++++---
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index b6eb22b6c6b4..da09873dc1cb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -100,6 +100,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 			IS_DISPLAY_STEP(display, STEP_A0, STEP_A2);
 	case INTEL_DISPLAY_WA_14014143976:
 		return IS_DISPLAY_STEP(display, STEP_E0, STEP_FOREVER);
+	case INTEL_DISPLAY_WA_14016740474:
+		return IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_C0);
 	case INTEL_DISPLAY_WA_14020863754:
 		return DISPLAY_VERx100(display) == 3000 ||
 			DISPLAY_VERx100(display) == 2000 ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 6749e48aea7f..4471d6511152 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -39,6 +39,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_14011508470,
 	INTEL_DISPLAY_WA_14011765242,
 	INTEL_DISPLAY_WA_14014143976,
+	INTEL_DISPLAY_WA_14016740474,
 	INTEL_DISPLAY_WA_14020863754,
 	INTEL_DISPLAY_WA_14025769978,
 	INTEL_DISPLAY_WA_15013987218,
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index f3db55710010..244806a26da3 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -15,6 +15,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_trace.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_pmdemand.h"
 #include "intel_step.h"
 #include "skl_watermark.h"
@@ -129,9 +130,10 @@ int intel_pmdemand_init(struct intel_display *display)
 				     &pmdemand_state->base,
 				     &intel_pmdemand_funcs);
 
-	if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_A0, STEP_C0))
-		/* Wa_14016740474 */
-		intel_de_rmw(display, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
+	/* Wa_14016740474 */
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_14016740474))
+		intel_de_rmw(display, XELPD_CHICKEN_DCPR_3, 0,
+			     DMD_RSP_TIMEOUT_DISABLE);
 
 	return 0;
 }
-- 
2.51.0

