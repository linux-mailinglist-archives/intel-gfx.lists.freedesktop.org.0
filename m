Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IF4CG1M7HWoqWQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 09:57:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD0661B2AF
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 09:57:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AFEC112F3A;
	Mon,  1 Jun 2026 07:57:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fvzYmoLb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8AC9112F37;
 Mon,  1 Jun 2026 07:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780300625; x=1811836625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1OVnYw2Z5GGCcKklj4wein5BzmanwWGx1NEXr1GGSBs=;
 b=fvzYmoLbnAgwNO4NSWcs6B6IxOPsbxwdm5Jh4DPUrzBYYFFUaAvhc2Rn
 dplkm2YCbcRWZvqC9iJAIMGFPfCXuYgx25m2bECHbSuEd2m8KC0mp/l2K
 Qcj+Y08KYMOXaZsrSAy8NTkxlMCoA63tOk1Mikc9f+pqL/Ib82w0TlKPK
 y+fXbVwl1U3lsWEYJGUPMqgQLDYnmJAcVl3op3T2hSSozQ7fRXtX+iFDZ
 mfIFM5U/hPfcbl6dtPhQ3jTcT7bgC57p4oIkl+4DSxFUUyrk5Z8PoreoK
 0ZPIM6t2wMlrOhctGm+pzF6gUl50WAsAEOGtdfUHsoFWYuEPWQ9SvCl2y A==;
X-CSE-ConnectionGUID: pS5yj5IcTcOgXhEqmB3wOw==
X-CSE-MsgGUID: NV9LayPFRqCXbgnBAKW6Fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84941116"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="84941116"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 00:56:46 -0700
X-CSE-ConnectionGUID: TC1YwUBsS8mYmEvV4gg0EA==
X-CSE-MsgGUID: ZaVQReD1QDeH55jAEH1PMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="243601833"
Received: from abityuts-desk.ger.corp.intel.com (HELO hazy) ([10.245.245.124])
 by orviesa009-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2026 00:56:44 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v3 2/4] drm/i915/display: harden shifts in
 ICL_DPCLKA_CFGCR0_DDI_CLK_SEL macros
Date: Mon,  1 Jun 2026 10:55:54 +0300
Message-ID: <20260601075631.3102348-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260601075631.3102348-1-luciano.coelho@intel.com>
References: <20260601075631.3102348-1-luciano.coelho@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 3CD0661B2AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ICL_DPCLKA_CFGCR0 has a 2-bit DDI_CLK_SEL field per combo PHY, for
PHY_A..PHY_D only.  Any other phy value (PHY_NONE, TypeC/SNPS PHYs) is
not valid here.

This is not a problem with the current implementation, because phy is
always valid when these macros are called, but it's more robust to
cast to unsigned so the shift is always well-defined.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h    | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4321f8b529da..2dcbbad70174 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2869,9 +2869,19 @@ enum skl_power_gate {
 #define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_4 ? \
 						       (tc_port) + 12 : \
 						       (tc_port) - TC_PORT_4 + 21))
-#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	((phy) * 2)
-#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
-#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
+
+/*
+ * ICL_DPCLKA_CFGCR0 has a 2-bit DDI_CLK_SEL field per combo PHY, for
+ * PHY_A..PHY_D only.  Any other phy value (PHY_NONE, TypeC/SNPS PHYs)
+ * is not valid here.
+ */
+#define ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	_PICK(phy & 0x3, 0, 2, 4, 6)
+#define ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy) \
+	REG_GENMASK(ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy) + 1, \
+		    ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
+#define ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy) \
+	((pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
+
 #define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	_PICK(phy, 0, 2, 4, 27)
 #define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy) \
 	(3 << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
-- 
2.53.0

