Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SN++ABhIDGoMdAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:23:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE3D57D802
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 226EF10EC68;
	Tue, 19 May 2026 11:23:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SERusW2l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14CC210EC68;
 Tue, 19 May 2026 11:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779189781; x=1810725781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XeIf+901DMeJxi9PqszTZXq2JM3rEFWCiNH3c+prdhw=;
 b=SERusW2lmijb7VrwZhZgc0kQVoifh+9kcoI6tCUngfpWPJ9yF8+Im/HI
 qHZzRJgG+fhaQdqeCG0Cn7Diai/DgzS3Wn+6C1mtDwwa9KnNkPIivPSDt
 dlnp2B0+kChHPlKn7SRFFszWN+HdnUFP/84OtQuDt0eigM3HEH79ai5DB
 dYWWtYoXqa5vcYtqN55SS3/t3gaIKTH9/DoAwFl1pad81YAI6+T+9lmHT
 SiOS595/sznKt1Q+PpBm61O7qBWQaRVY5Jw1fBy1mKCvJXXTqlN6gramD
 TBfVzTMbkjUQ9kztBh1qPlao0CuuJZ6HGfhBySjiFePyqRc4ztMHshWiL Q==;
X-CSE-ConnectionGUID: EiU1O3KVR9uZOcKB/xR/XQ==
X-CSE-MsgGUID: qmkwbQAMSzi/2jBRbqeysw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97498509"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97498509"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:23:01 -0700
X-CSE-ConnectionGUID: 6l8WCiJMRUWWmDfll/ecTA==
X-CSE-MsgGUID: Mqhi1jGTQuS49T2QzhzLSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="239606390"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:22:59 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/display: harden shifts in
 ICL_DPCLKA_CFGCR0_DDI_CLK_SEL macros
Date: Tue, 19 May 2026 14:11:14 +0300
Message-ID: <20260519112243.1454375-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260519112243.1454375-1-luciano.coelho@intel.com>
References: <20260519112243.1454375-1-luciano.coelho@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: CAE3D57D802
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ICL_DPCLKA_CFGCR0 has a 2-bit DDI_CLK_SEL field per combo PHY, for
PHY_A..PHY_D only.  Any other phy value (PHY_NONE, Type-C/SNPS PHYs)
is not valid here.

This is not a problem with the current implementation, because phy is
always valid when these macros are called, but it's more robust to
cast to unsigned so the shift is always well-defined.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4321f8b529da..bc90a21e8b46 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2869,9 +2869,16 @@ enum skl_power_gate {
 #define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PORT_4 ? \
 						       (tc_port) + 12 : \
 						       (tc_port) - TC_PORT_4 + 21))
-#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	((phy) * 2)
-#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
-#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
+/*
+ * ICL_DPCLKA_CFGCR0 has a 2-bit DDI_CLK_SEL field per combo PHY, for
+ * PHY_A..PHY_D only.  Any other phy value (PHY_NONE, TypeC/SNPS PHYs)
+ * is not valid here.  Cast to unsigned so the shift is always
+ * well-defined.
+ */
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	((unsigned int)(phy) * 2)
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	((u32)3 << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
+#define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((u32)(pll) << ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
+
 #define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	_PICK(phy, 0, 2, 4, 27)
 #define  RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy) \
 	(3 << RKL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy))
-- 
2.53.0

