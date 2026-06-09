Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F7hQDCPjJ2pE4AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 11:55:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0E265E969
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 11:55:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eDViku5i;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8197D10E20A;
	Tue,  9 Jun 2026 09:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9689F10E20A;
 Tue,  9 Jun 2026 09:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780998943; x=1812534943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1OVnYw2Z5GGCcKklj4wein5BzmanwWGx1NEXr1GGSBs=;
 b=eDViku5iKcX1lETYd3mJcJsQavXS3FPd63ezat26Uhz+NvYHlbIjhJy8
 mE1occsVTiqrAXzdYMRWf3+/ByWC9rMJq3QHXgT2exQakREVtso5HCxG1
 Bf0yJlvWRZbdXCPD2kHyGc++9X5E7RZTx0uTeJV0JEvRTLgt+fwOxDHgH
 qzT15LtgjyVT/rSEdu5df7n4DjvmU8GFUN8sfsDpPeTbcQEThexM97EgD
 fU+JeBTe29DA4akbQsotuSxA0SfficbVzggb/4H6uFDwUNpyipWb1LBdZ
 GFQZk206UanaDUhPg5gmJ9mXBPU83E0mYRJcfgwn7zwviGaAEhGJHejhd g==;
X-CSE-ConnectionGUID: AuwkkY/8SE+nK88p1klnsw==
X-CSE-MsgGUID: 4maa+di2QbaBUo+F8EhHWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="81759174"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="81759174"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 02:55:43 -0700
X-CSE-ConnectionGUID: BndqE7+SQCuRB7N+7iFCaA==
X-CSE-MsgGUID: p5hM680kSWOEDYYzUlj3hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="250898090"
Received: from amilburn-desk.amilburn-desk (HELO hazy.intel.com)
 ([10.245.245.108])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 02:55:40 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v6 2/4] drm/i915/display: harden shifts in
 ICL_DPCLKA_CFGCR0_DDI_CLK_SEL macros
Date: Tue,  9 Jun 2026 12:52:37 +0300
Message-ID: <20260609095525.570614-3-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: ED0E265E969

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

