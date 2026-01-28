Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qL7tClMkemmv2wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:59:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A007A365D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:59:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F408F10E710;
	Wed, 28 Jan 2026 14:59:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/E2NLvm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6394110E710;
 Wed, 28 Jan 2026 14:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769612368; x=1801148368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p+R0jbvq3615jhl9qUSOI8H/mRkHqSV7f/c3s6opnoc=;
 b=P/E2NLvmqvUsu9GJjzI2QkbM2lO2KmyLzzatj0b1dGpPV3dQzZeKRwve
 aq4wtsuWkCxIxAM8OGtwX9f0a+eXu7GLnDQngXMrXVUCA676ADYaQCG6Q
 TgzBa46hR8Hu9BQH+vFB0kgmPbUqJw6EVKie1q0XlLVcUuxsSa+X/Xfh8
 hA92FADTUogLqC1N6k2Z4E66OotKfLA0MsJdbHlDC6pXf8DofAVmpYBPx
 GMdRaQzngtPRH+Qvvj5/lqfaNKaIwftkZ9S0dLx2hvC4FNq3woLJlqGvN
 3d8UKTEnUdPv99vnb26Bz/q8uEnQzF8UDHPeobk792CYIvkVAUTbPg+0F Q==;
X-CSE-ConnectionGUID: 6cHcvRVgSzuELDGMIbZyNQ==
X-CSE-MsgGUID: tWaPSaf/Rz6vk1QBXoSHOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="81935634"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="81935634"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:59:28 -0800
X-CSE-ConnectionGUID: df1sDhRsT4OAIIAK+q+tsw==
X-CSE-MsgGUID: Ep+yrr/xTe6v+tO9XcN34g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208354142"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:59:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/4] drm/i915/gvt: drop dependency on display struct dpll
Date: Wed, 28 Jan 2026 16:59:08 +0200
Message-ID: <ff7478efa80323c638a31c578cb1d707692ef51d.1769612208.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769612208.git.jani.nikula@intel.com>
References: <cover.1769612208.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,clock.dot:url]
X-Rspamd-Queue-Id: 8A007A365D
X-Rspamd-Action: no action

The gvt code has no real need for struct dpll, it's just a collection of
variables. So use a bunch of variables instead.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Tip: 'git show --color-words' is easier to review.
---
 drivers/gpu/drm/i915/gvt/handlers.c | 33 ++++++++++++-----------------
 1 file changed, 14 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index bd20f287720f..383b04160559 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -558,7 +558,7 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 	int refclk = 100000;
 	enum dpio_phy phy = DPIO_PHY0;
 	enum dpio_channel ch = DPIO_CH0;
-	struct dpll clock = {};
+	int m1, m2, n, p1, p2, m, p, vco, dot;
 	u32 temp;
 
 	/* Port to PHY mapping is fixed, see bxt_ddi_phy_info{} */
@@ -587,30 +587,25 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 		goto out;
 	}
 
-	clock.m1 = 2;
-	clock.m2 = REG_FIELD_GET(PORT_PLL_M2_INT_MASK,
-				 vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 0))) << 22;
+	m1 = 2;
+	m2 = REG_FIELD_GET(PORT_PLL_M2_INT_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 0))) << 22;
 	if (vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 3)) & PORT_PLL_M2_FRAC_ENABLE)
-		clock.m2 |= REG_FIELD_GET(PORT_PLL_M2_FRAC_MASK,
-					  vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 2)));
-	clock.n = REG_FIELD_GET(PORT_PLL_N_MASK,
-				vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 1)));
-	clock.p1 = REG_FIELD_GET(PORT_PLL_P1_MASK,
-				 vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
-	clock.p2 = REG_FIELD_GET(PORT_PLL_P2_MASK,
-				 vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
-	clock.m = clock.m1 * clock.m2;
-	clock.p = clock.p1 * clock.p2 * 5;
-
-	if (clock.n == 0 || clock.p == 0) {
+		m2 |= REG_FIELD_GET(PORT_PLL_M2_FRAC_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 2)));
+	n = REG_FIELD_GET(PORT_PLL_N_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 1)));
+	p1 = REG_FIELD_GET(PORT_PLL_P1_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
+	p2 = REG_FIELD_GET(PORT_PLL_P2_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
+	m = m1 * m2;
+	p = p1 * p2 * 5;
+
+	if (n == 0 || p == 0) {
 		gvt_dbg_dpy("vgpu-%d PORT_%c PLL has invalid divider\n", vgpu->id, port_name(port));
 		goto out;
 	}
 
-	clock.vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock.m), clock.n << 22);
-	clock.dot = DIV_ROUND_CLOSEST(clock.vco, clock.p);
+	vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, m), n << 22);
+	dot = DIV_ROUND_CLOSEST(vco, p);
 
-	dp_br = clock.dot;
+	dp_br = dot;
 
 out:
 	return dp_br;
-- 
2.47.3

