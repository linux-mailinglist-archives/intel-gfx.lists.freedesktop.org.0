Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gGWPGB3nRGpj2woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:08:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0F06EBE8A
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:08:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="nR/+UfXy";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A58710EE9E;
	Wed,  1 Jul 2026 10:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3C6110EE9B;
 Wed,  1 Jul 2026 10:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782900507; x=1814436507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dVu4sUbvqRaReOOdc2m83mge/8sAl5BsvaOj5F0OF30=;
 b=nR/+UfXyXhGdv9NkXUCVPS38u0AcATM9TqiwJMFBM5SZFmm/DyJSFcl3
 USsu3XQtB0aqU7/UTYQ6K+xm7/UPgJchsq0Qx9QL7BBVkc2tCitWTGDfM
 Bw3sFG5rBAL4MOLPzIdlLCrPdyPwNScZlV9vui5EryHfPhVdiTTAgh5S4
 c6ZKW/aKqPJ3IFb3EZClvokngvQZKWqYlDI8j8pip2LV8gtWNkuiGMa24
 UBSrtEzcus/s+dBKBaYOaGQQHcdiu+/W5KmpDAWIyR4sBgsTeQgFKQF+B
 FrmOovGel49WOsE6EFOz4MsCkRwn0E2CRzXxfLDiw5j7PBM3o4gIqrNHu w==;
X-CSE-ConnectionGUID: 6GafEhNoRH+1em7/ZO7m4Q==
X-CSE-MsgGUID: QGd55++NS/GJ+46uwOj1sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83827733"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="83827733"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:08:26 -0700
X-CSE-ConnectionGUID: oOZgdEyxTK2ZiDqgV9yQAg==
X-CSE-MsgGUID: jLasZXSnSD6eLOoEe1PvIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="248064831"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:08:24 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com,
	uma.shankar@intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH v2 1/1] drm/i915/psr: Block DC3CO entry during active frame
Date: Wed,  1 Jul 2026 15:36:50 +0530
Message-ID: <20260701100650.1689665-2-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260701100650.1689665-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260701100650.1689665-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B0F06EBE8A

On Xe3P, when PSR2 is enabled on a panel that does not support
Early Transport, DC3CO can be entered in the middle of an
active frame. This prevents the pipe from completing the frame
and leaves it in a bad state that does not recover well,
causing visible corruption on screen.

Set CHICKEN_DCPR_4 bit 24 in the PSR2 enable path when Early Transport
is not in use, to notify DMC to prevent DC3CO entry.

v2:
- Remove display from commit header (Suraj Kandpal).
- Add HSD number to intel_display_wa framework (Suraj Kandpal).
- Change register prefix from XE3LPD_ to XE3P_ (Suraj Kandpal).

BSpec: 71483, 75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h    |  3 +++
 drivers/gpu/drm/i915/display/intel_display_wa.c  |  2 ++
 drivers/gpu/drm/i915/display/intel_display_wa.h  |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c         | 16 ++++++++++++++++
 4 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 39e50423132f..0f5018482497 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1747,6 +1747,9 @@
 #define XELPD_CHICKEN_DCPR_3			_MMIO(0x46438)
 #define   DMD_RSP_TIMEOUT_DISABLE		REG_BIT(19)
 
+#define XE3P_CHICKEN_DCPR_4			_MMIO(0x454a0)
+#define   DCPR4_BLOCK_DC3CO_ACTIVE_FRAME	REG_BIT(24)
+
 #define SKL_DFSM			_MMIO(0x51000)
 #define   SKL_DFSM_DISPLAY_PM_DISABLE	(1 << 27)
 #define   SKL_DFSM_DISPLAY_HDCP_DISABLE	(1 << 25)
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 2094eda09c91..b4c49816f7eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -112,6 +112,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 			DISPLAY_VERx100(display) == 1401;
 	case INTEL_DISPLAY_WA_14025769978:
 		return DISPLAY_VER(display) == 35;
+	case INTEL_DISPLAY_WA_14026643300:
+		return DISPLAY_VER(display) == 35;
 	case INTEL_DISPLAY_WA_15013987218:
 		return DISPLAY_VER(display) == 20;
 	case INTEL_DISPLAY_WA_15018326506:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 9cdd148ea4fa..92b3980bea84 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -43,6 +43,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_14016740474,
 	INTEL_DISPLAY_WA_14020863754,
 	INTEL_DISPLAY_WA_14025769978,
+	INTEL_DISPLAY_WA_14026643300,
 	INTEL_DISPLAY_WA_15013987218,
 	INTEL_DISPLAY_WA_15018326506,
 	INTEL_DISPLAY_WA_16011181250,
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 92af21d823a3..40e3d7095996 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2100,6 +2100,18 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		else if (display->platform.alderlake_p)
 			intel_de_rmw(display, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
+
+		/*
+		 * Wa_14026643300
+		 * On Xe3P, restrict DC3CO entry during active frame when PSR2 is
+		 * enabled without panel Early Transport; required to avoid pipe bad state.
+		 * DMC honours CHICKEN_DCPR_4 bit 24 to block DC3CO entry during active frame.
+		 */
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_14026643300) &&
+		    !intel_dp->psr.panel_replay_enabled &&
+		    !intel_dp->psr.su_region_et_enabled)
+			intel_de_rmw(display, XE3P_CHICKEN_DCPR_4,
+				     0, DCPR4_BLOCK_DC3CO_ACTIVE_FRAME);
 	}
 
 	/* Wa_16025596647 */
@@ -2341,6 +2353,10 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		else if (display->platform.alderlake_p)
 			intel_de_rmw(display, CLKGATE_DIS_MISC,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
+
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_14026643300))
+			intel_de_rmw(display, XE3P_CHICKEN_DCPR_4,
+				     DCPR4_BLOCK_DC3CO_ACTIVE_FRAME, 0);
 	}
 
 	if (intel_dp_is_edp(intel_dp))
-- 
2.43.0

