Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +B8JJTmtnWmgQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4942A1880B6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E78610E598;
	Tue, 24 Feb 2026 13:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MU8pxr3X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE47210E58C;
 Tue, 24 Feb 2026 13:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771941168; x=1803477168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8KO6fgm+0ATR+FbDCFVG3heRFBwm3oJbVDhXYgLE1vM=;
 b=MU8pxr3XJPmsHb2sRaVpZerJKcZz5+7nEoNAwscj/GUSTN2xjoCGbDoX
 4xMqBfg+lfD82TRlzzrw6i1rwRPxKwI7r8Meg3ifNpP5sF6TzgG1wtGRO
 4bBBaXFNdKua4wlDFm7a2hyvSlfkp7OkNW7dwiGo64FPxOd7oKatjP8Eh
 xuoOFvi0ydneHMgJ2K09aSgXgf8Qdr8ndTLKPBrj4or/x30FIZQq4Uf+q
 RrgKSdozEH97imn76clWQcSyQo3NS7MwtKMXJ988C/zmwSKQbBxlEMRD9
 eIkB1y8WazG/sGtdr5rQWigxBEUTO53/ubdfQV5a+0S0Ib1Je0mQFpoJT A==;
X-CSE-ConnectionGUID: jgTrN0auQRWml06SJnPEeQ==
X-CSE-MsgGUID: rQSftU9nQZ66B4UQe2xbzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60531025"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="60531025"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:48 -0800
X-CSE-ConnectionGUID: MshUDz46RSSJnSZCG8JZtg==
X-CSE-MsgGUID: TQkJwFs7QLuvHjmEEUw07A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215925253"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.201])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:46 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v4 10/16] drm/i915/display: convert W/As in intel_fbc.c to new
 framework
Date: Tue, 24 Feb 2026 15:49:57 +0200
Message-ID: <20260224135208.140752-11-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260224135208.140752-1-luciano.coelho@intel.com>
References: <20260224135208.140752-1-luciano.coelho@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 4942A1880B6
X-Rspamd-Action: no action

Convert the low-hanging fruits of workaround checks to the workaround
framework.  Instead of having display structure checks for the
workarounds all over, concentrate the checks in intel_display_wa.c.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_wa.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_wa.h | 2 ++
 drivers/gpu/drm/i915/display/intel_fbc.c        | 4 ++--
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index be37a23edce4..0f449ea8e1bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -70,6 +70,8 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
 {
 	switch (wa) {
+	case INTEL_DISPLAY_WA_1409120013:
+		return IS_DISPLAY_VER(display, 11, 12);
 	case INTEL_DISPLAY_WA_1409767108:
 		return (display->platform.alderlake_s ||
 			(display->platform.rocketlake &&
@@ -109,6 +111,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 	case INTEL_DISPLAY_WA_16011342517:
 		return display->platform.alderlake_p &&
 			IS_DISPLAY_STEP(display, STEP_A0, STEP_D0);
+	case INTEL_DISPLAY_WA_16011863758:
+		return DISPLAY_VER(display) >= 11;
 	case INTEL_DISPLAY_WA_16023588340:
 		return intel_display_needs_wa_16023588340(display);
 	case INTEL_DISPLAY_WA_16025573575:
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index dc1a187fd0a1..373cbbb93873 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -27,6 +27,7 @@ bool intel_display_needs_wa_16023588340(struct intel_display *display);
  * number.
  */
 enum intel_display_wa {
+	INTEL_DISPLAY_WA_1409120013,
 	INTEL_DISPLAY_WA_1409767108,
 	INTEL_DISPLAY_WA_13012396614,
 	INTEL_DISPLAY_WA_14010547955,
@@ -42,6 +43,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_15013987218,
 	INTEL_DISPLAY_WA_15018326506,
 	INTEL_DISPLAY_WA_16011342517,
+	INTEL_DISPLAY_WA_16011863758,
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
 	INTEL_DISPLAY_WA_22010178259,
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b3a0766736fa..9fec61f7da22 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -184,7 +184,7 @@ static unsigned int skl_fbc_min_cfb_stride(struct intel_display *display,
 	 * Wa_16011863758: icl+
 	 * Avoid some hardware segment address miscalculation.
 	 */
-	if (DISPLAY_VER(display) >= 11)
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011863758))
 		stride += 64;
 
 	/*
@@ -950,7 +950,7 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 	}
 
 	/* Wa_1409120013:icl,jsl,tgl,dg1 */
-	if (IS_DISPLAY_VER(display, 11, 12))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_1409120013))
 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
 			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
 	/*
-- 
2.51.0

