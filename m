Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SwSADiXjJ2pK4AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 11:55:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D66F565E979
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 11:55:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GUVH+d+O;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E85410E213;
	Tue,  9 Jun 2026 09:55:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12FEB10E20F;
 Tue,  9 Jun 2026 09:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780998947; x=1812534947;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=74sil0V/n36uOrdYd4BOe2z1AUzn1sVn5p7CG82TKK0=;
 b=GUVH+d+OQr2atT2yuXik29uQF1cX31cAPeh1wkS0B16m7H266D5fIHUA
 jrEgPcR/58US95/eb+NLKQbr2HBgNIsbsDgyAZr7dcNE7+QPjUigy0Hcx
 jQYPg0v5MNeVlIFYHhEvI4nbDcND2Li9jKgQfdmgYeRrVK1PaJ8gc5gWQ
 DEtuiat2tSihWi91khKTP/beVsVo6TY5pi2rcqDE3Rh57jboMvZoDn5Yy
 gIlnWJC/dIa4MCi0peFul5DhnhCRWUy0zNBy06EwgEBUp8b2ZBAdzsQAc
 vuvX3GR0KOWzuGnpNLJ3dXfb0kGTUiAKWCysIMqUWmd2FtnpfCL5Vao33 A==;
X-CSE-ConnectionGUID: pFK+VcPhRxaY7eU2nQMFVg==
X-CSE-MsgGUID: wsYgoASoRDywb3lQwelj2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81759183"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="81759183"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 02:55:46 -0700
X-CSE-ConnectionGUID: Fy1mZ15JQma1mcQEFMke8Q==
X-CSE-MsgGUID: PeMS7En4TH2Rkuhtr5ShRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="250898105"
Received: from amilburn-desk.amilburn-desk (HELO hazy.intel.com)
 ([10.245.245.108])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 02:55:44 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v6 4/4] drm/i915/display: remove unnecessary PHY_NONE
 definition
Date: Tue,  9 Jun 2026 12:52:39 +0300
Message-ID: <20260609095525.570614-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260609095525.570614-1-luciano.coelho@intel.com>
References: <20260609095525.570614-1-luciano.coelho@intel.com>
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
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D66F565E979

PHY_NONE is not really used, but we define it and, thus, need to check
for it in a few places we use phy.  The only potential places where
phy may become PHY_NONE, is in intel_port_to_phy(), where it derives
from port, which can be PORT_NONE.  Many of its callers don't check
for PHY_NONE, which can cause unknown behavior.  Additionally, this
can only happen if the encoder used has PORT_NONE, which should not be
the case either, without unexpected consequences.

Remove the PHY_NONE definition entirely and add a couple of WARNs at
the relevant places, just to be sure.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c           | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_display.h           |  2 --
 .../gpu/drm/i915/display/intel_display_power_well.c    |  6 +++++-
 drivers/gpu/drm/i915/display/intel_hti.c               |  3 ---
 4 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bdf02b67c1d8..58713ad04d37 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1810,9 +1810,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 /* Prefer intel_encoder_is_combo() */
 bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
 {
-	if (phy == PHY_NONE)
-		return false;
-	else if (display->platform.alderlake_s)
+	if (display->platform.alderlake_s)
 		return phy <= PHY_E;
 	else if (display->platform.dg1 || display->platform.rocketlake)
 		return phy <= PHY_D;
@@ -1866,7 +1864,7 @@ bool intel_phy_is_snps(struct intel_display *display, enum phy phy)
 	 * For DG2, and for DG2 only, all four "combo" ports and the TC1 port
 	 * (PHY E) use Synopsis PHYs. See intel_phy_is_tc().
 	 */
-	return display->platform.dg2 && phy > PHY_NONE && phy <= PHY_E;
+	return display->platform.dg2 && phy <= PHY_E;
 }
 
 /* Prefer intel_encoder_to_phy() */
@@ -1884,6 +1882,10 @@ enum phy intel_port_to_phy(struct intel_display *display, enum port port)
 		 port == PORT_D)
 		return PHY_A;
 
+	if (drm_WARN(display->drm, port < 0,
+		     "PHY is invalid if port < 0 (%d), assuming PHY_A\n", port))
+		return PHY_A;
+
 	return PHY_A + port - PORT_A;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 98b589e8360d..a4f621934b33 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -136,8 +136,6 @@ enum tc_port {
 };
 
 enum phy {
-	PHY_NONE = -1,
-
 	PHY_A = 0,
 	PHY_B,
 	PHY_C,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 04bd0dde5bed..daea2452a19e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -325,7 +325,11 @@ static enum phy icl_aux_pw_to_phy(struct intel_display *display,
 {
 	struct intel_encoder *encoder = icl_aux_pw_to_encoder(display, power_well);
 
-	return encoder ? intel_encoder_to_phy(encoder) : PHY_NONE;
+	if (drm_WARN(display->drm, !encoder,
+		     "PHY is invalid if encoder is NULL, assuming PHY_A\n"))
+		return PHY_A;
+
+	return intel_encoder_to_phy(encoder);
 }
 
 static bool icl_aux_pw_is_tc_phy(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_hti.c b/drivers/gpu/drm/i915/display/intel_hti.c
index dc454420c134..56602240ceff 100644
--- a/drivers/gpu/drm/i915/display/intel_hti.c
+++ b/drivers/gpu/drm/i915/display/intel_hti.c
@@ -23,9 +23,6 @@ void intel_hti_init(struct intel_display *display)
 
 bool intel_hti_uses_phy(struct intel_display *display, enum phy phy)
 {
-	if (drm_WARN_ON(display->drm, phy == PHY_NONE))
-		return false;
-
 	return display->hti.state & HDPORT_ENABLED &&
 		display->hti.state & HDPORT_DDI_USED(phy);
 }
-- 
2.53.0

