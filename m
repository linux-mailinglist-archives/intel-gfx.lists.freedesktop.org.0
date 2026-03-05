Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCLXEoxUqWkj4wAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 11:01:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DD020F39F
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 11:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 049D710EBF4;
	Thu,  5 Mar 2026 10:01:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CGUsWi8e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8538010EC03;
 Thu,  5 Mar 2026 10:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772704901; x=1804240901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XhY81J9RFVgiqHrR2JhTq2TDh2RxR2rGX7a8ZLFwJLI=;
 b=CGUsWi8eTo7A74B9rtqYjyuP3yZWaVFI/EfPs7ddi805TyaLMfd6tVce
 HS/VVt8gH1fA8Fv6pP+WDNrIO+YP4hwaVG27sU2H3I1vTb8cG0acUICtK
 KAho02u9G7+PGFi4J9NT8ZVLXBBhDN1wu48h9iSyDWAjdz/SPVTxkGAlY
 lwlLq1LziibkJ3NW5zUiqIfZIHsnnlswezF17pc/0ci3VuqwrFUwXpSn4
 mGx7gxCQNY1Ye8i7VpWgGxG7ciP1zU3yw0TCGrZ+MSRpVQmiq365QmxUm
 EW+xk/eUq0IgYjQfz5MXDsxfsE8bW4mLeB/f8NCEAqGwKpEuroIqdC3Wd Q==;
X-CSE-ConnectionGUID: Q1H9HxOeSka7RbjHw5uL4w==
X-CSE-MsgGUID: Kg+yxOxJR8SSdvA0MF2oNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73758128"
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="73758128"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 02:01:40 -0800
X-CSE-ConnectionGUID: RdCc+CfTRQO/fcF26vlkcw==
X-CSE-MsgGUID: jbAm56LDTbmCSRg2orjtRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,102,1770624000"; d="scan'208";a="215460320"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.57])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 02:01:38 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v5 15/16] drm/i915/display: convert W/As in
 skl_universal_plane.c to new framework
Date: Thu,  5 Mar 2026 11:59:18 +0200
Message-ID: <20260305100100.332956-16-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: 85DD020F39F
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
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c    | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_wa.h    | 1 +
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 +++---
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 73c7b87d5ecd..f05d96b4b35f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -79,6 +79,10 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 	case INTEL_DISPLAY_WA_13012396614:
 		return DISPLAY_VERx100(display) == 3000 ||
 			DISPLAY_VERx100(display) == 3500;
+	case INTEL_DISPLAY_WA_14010477008:
+		return display->platform.dg1 || display->platform.rocketlake ||
+			(display->platform.tigerlake &&
+			 IS_DISPLAY_STEP(display, STEP_A0, STEP_D0));
 	case INTEL_DISPLAY_WA_14010480278:
 		return (IS_DISPLAY_VER(display, 10, 12));
 	case INTEL_DISPLAY_WA_14010547955:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 0e9959760b9f..1f664366847d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -30,6 +30,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_1409120013,
 	INTEL_DISPLAY_WA_1409767108,
 	INTEL_DISPLAY_WA_13012396614,
+	INTEL_DISPLAY_WA_14010477008,
 	INTEL_DISPLAY_WA_14010480278,
 	INTEL_DISPLAY_WA_14010547955,
 	INTEL_DISPLAY_WA_14010685332,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 677f1339b7f8..11ba42c67e3e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -17,6 +17,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_frontbuffer.h"
@@ -1216,7 +1217,7 @@ static u32 skl_plane_ctl(const struct intel_plane_state *plane_state)
 		plane_ctl |= PLANE_CTL_KEY_ENABLE_SOURCE;
 
 	/* Wa_22012358565:adl-p */
-	if (DISPLAY_VER(display) == 13)
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_22012358565))
 		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
 
 	return plane_ctl;
@@ -2792,8 +2793,7 @@ static bool tgl_plane_has_mc_ccs(struct intel_display *display,
 				 enum plane_id plane_id)
 {
 	/* Wa_14010477008 */
-	if (display->platform.dg1 || display->platform.rocketlake ||
-	    (display->platform.tigerlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_14010477008))
 		return false;
 
 	return plane_id < PLANE_6;
-- 
2.51.0

