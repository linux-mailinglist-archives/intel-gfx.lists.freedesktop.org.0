Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ArGBSjOjWn87AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 13:57:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E4512DAA4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 13:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E045D10E742;
	Thu, 12 Feb 2026 12:57:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cimcUO4O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA83910E742
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Feb 2026 12:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770901028; x=1802437028;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=16c80Tk+1pkg+idJWjb5mcWGxlXlhp1mdB/i9pnfY4I=;
 b=cimcUO4Ofxio0HNVXrOFFJsdQta0Vq69Cb2OJS/turA0HfTA8O+GyZRW
 mHS3KTgEZc4vNWtoUlCj9M/fUCnsCKr//DUug2nAC0aH7hMtenCYa/PsR
 x9AhvOH3Dq/kntRvoq+Dti59mq55uAqMWQo1d6Shv+F/Fxya8jjSiNJpv
 e4VAUEC3/YBUhbX5ySilvuyh9O3ZJ48HMNZiew1iBEyjSabcZrorNMZPj
 L9O4Fb9rWyUqU2HkeV0wirudUx4aM1D9VgnoO2DuniEu4fhp49iWWVEHR
 FqTx5UUx3OioX9HBDM3RHnupLAUr3we3AyGZMuI+O11g+RzpoTT1Zs7G2 Q==;
X-CSE-ConnectionGUID: jRzF0xsLRIiwQlkT8nvVcA==
X-CSE-MsgGUID: w1i+ZkiMQryFI6uzLx5ClA==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72116779"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="72116779"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 04:57:08 -0800
X-CSE-ConnectionGUID: w+vt+6ECQxiH2wd5+lcmWQ==
X-CSE-MsgGUID: 33x14NC1QuWCIf7RyzmZ9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="212698652"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.167])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 04:57:07 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 15/16] drm/i915/display: convert W/As in skl_universal_plane.c
 to new framework
Date: Thu, 12 Feb 2026 14:52:04 +0200
Message-ID: <20260212125526.344401-16-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260212125526.344401-1-luciano.coelho@intel.com>
References: <20260212125526.344401-1-luciano.coelho@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A2E4512DAA4
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_wa.c.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c    | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_wa.h    | 1 +
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 +++---
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index f0858adcdff6..cae2d852fde9 100644
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
index e67e6f6d0db2..b6d6953e0ba3 100644
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
index 746e942cafd2..9f31c609271f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -17,6 +17,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
+#include "intel_display_wa.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
@@ -1217,7 +1218,7 @@ static u32 skl_plane_ctl(const struct intel_plane_state *plane_state)
 		plane_ctl |= PLANE_CTL_KEY_ENABLE_SOURCE;
 
 	/* Wa_22012358565:adl-p */
-	if (DISPLAY_VER(display) == 13)
+	if (intel_display_wa(display, 22012358565))
 		plane_ctl |= adlp_plane_ctl_arb_slots(plane_state);
 
 	return plane_ctl;
@@ -2793,8 +2794,7 @@ static bool tgl_plane_has_mc_ccs(struct intel_display *display,
 				 enum plane_id plane_id)
 {
 	/* Wa_14010477008 */
-	if (display->platform.dg1 || display->platform.rocketlake ||
-	    (display->platform.tigerlake && IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)))
+	if (intel_display_wa(display, 14010477008))
 		return false;
 
 	return plane_id < PLANE_6;
-- 
2.51.0

