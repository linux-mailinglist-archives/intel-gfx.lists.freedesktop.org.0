Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJgILQKXcWngJgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 04:18:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4374C61400
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 04:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C933C10E8DD;
	Thu, 22 Jan 2026 03:18:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XoH5K0Cd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 598FE10E8B6;
 Thu, 22 Jan 2026 03:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769051903; x=1800587903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oDityTucUhOV26BDvOuERheJb1iNQ8/2EwUyX9wvNjg=;
 b=XoH5K0Cd6g+ay4tI6Hy2D8Q5WoTwLQQXqKFzHMezNk2ODpFg7HMPuVVB
 POuvsCqLQntZiKSQEBH16El2Mm/meaJCZqg435DvBtagL1L+HaQldl6L2
 Iyux6rOChQAdyQrRc0Xt/yMnLWqNLNOj5qUA8tLVCis/eUtmaQqtadQwf
 qTReIG956OR+mgNdfQQjAxrvls4l/FO+DXLGXd+vQoiC219UTTQ4S2LSE
 jlriJ+xV2M7vJAj+nODsTL+dmzRAgXdAWGsCmlcwMhhn1N4x6fu8zAAXC
 Dr/ZWQcRlCyhUlTIbypBcMFr/jLq9DIygRXW2IvsIAuwEwj+IgWVgbU+X A==;
X-CSE-ConnectionGUID: NP1IggjzTNOntyMR+bgbzA==
X-CSE-MsgGUID: DywfsncfQKiPsWgRwyvESA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="87865866"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="87865866"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 19:18:22 -0800
X-CSE-ConnectionGUID: A0FuZhzLR2KNvLQ7RvZoig==
X-CSE-MsgGUID: G4gsXixKStmG4lq4T7oN3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="206526589"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 21 Jan 2026 19:18:20 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v3] drm/i915/display: Disable DMG Clock Gating
Date: Thu, 22 Jan 2026 08:48:18 +0530
Message-Id: <20260122031818.703590-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260120050033.635681-1-suraj.kandpal@intel.com>
References: <20260120050033.635681-1-suraj.kandpal@intel.com>
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
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4374C61400
X-Rspamd-Action: no action

Incorrect clock is connected to DMG registers.
Disable DMG Clock gating during display initialization.

WA: 22021451799
Bspec: 69095
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Nemesa Garg <nemesa.garg@intel.com>
---

v1 -> v2:
-Remove details from comment (Nemesa)
-Add details in commit message (Ville)

v2 -> v3:
-Move the WA to intel_display_wa.c (Ankit)
-Remove stray change (Jani)

 drivers/gpu/drm/i915/display/intel_display_wa.c | 10 +++++++++-
 drivers/gpu/drm/i915/i915_reg.h                 |  1 +
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 581d943b9bdc..86a6cc45b6ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -32,9 +32,17 @@ static void adlp_display_wa_apply(struct intel_display *display)
 	intel_de_rmw(display, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
 }
 
+static void xe3plpd_display_wa_apply(struct intel_display *display)
+{
+	/* Wa_22021451799 */
+	intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0, DMG_GATING_DIS);
+}
+
 void intel_display_wa_apply(struct intel_display *display)
 {
-	if (display->platform.alderlake_p)
+	if (DISPLAY_VER(display) == 35)
+		xe3plpd_display_wa_apply(display);
+	else if (display->platform.alderlake_p)
 		adlp_display_wa_apply(display);
 	else if (DISPLAY_VER(display) == 12)
 		xe_d_display_wa_apply(display);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5bf3b4ab2baa..f928db78a3fa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -763,6 +763,7 @@
  */
 #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
 #define   DARBF_GATING_DIS		REG_BIT(27)
+#define   DMG_GATING_DIS		REG_BIT(21)
 #define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
 #define   PWM2_GATING_DIS		REG_BIT(14)
 #define   PWM1_GATING_DIS		REG_BIT(13)
-- 
2.34.1

