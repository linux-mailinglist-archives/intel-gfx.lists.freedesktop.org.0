Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B90CEB4AF
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 06:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734EA10E978;
	Wed, 31 Dec 2025 05:23:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EQlwuba4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1EC10E1A0;
 Wed, 31 Dec 2025 05:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767158604; x=1798694604;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IfunWSomCXwX0EnW2MaFSl8IjcCLy5wLeDAfzO9BhjQ=;
 b=EQlwuba44Hqei0mVviBzt/6h+iS9FY/0PefvWrUOIHxhLJG5j30XyDK9
 Q2eqRlnjbPctsKjlfSFMVxnOtVYcIod3nCUMFLWbQ2UcH+vd1ydf3k7tY
 HjZ+umbzLP+AR7I4gVDR2xDIFh4wjd49dkGe+pwlpkF8cTxgXhyLCxqI3
 Yo5Eastdx510vTzrzGu2pv5qJHc85ZDYA7pz680uecthk1bT4Lv2mUf4Z
 +zGT+Oqm5T5nMgz58yxc732/rRiOXBvMeCRKnIcLQjQWU0sn9giWpUP+p
 qgMyB1s3epAcJ5qyk99aqBnqqM8ZzGfxcpSCER9iO5LnkqRI2CXvwc0Qm w==;
X-CSE-ConnectionGUID: kyJ9+fhoT3+f8msADJcZuQ==
X-CSE-MsgGUID: rIrESNhCQB6vNv3ZFmC0RQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="68486246"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="68486246"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2025 21:23:24 -0800
X-CSE-ConnectionGUID: k9uaDV/IQqaHlZSlzfaYnQ==
X-CSE-MsgGUID: ras7emI4Sb6RDfYfGXymwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="232450984"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 30 Dec 2025 21:23:22 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/3] drm/i915/ltphy: Compare only certain fields in state
 verify function
Date: Wed, 31 Dec 2025 10:53:14 +0530
Message-Id: <20251231052315.77828-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251231052315.77828-1-suraj.kandpal@intel.com>
References: <20251231052315.77828-1-suraj.kandpal@intel.com>
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

Verify only the config[0,2] fields in the LT PHY state since these
are the only reliable values we can get back when we read the VDR
registers. The reason being that the state does not persist for other
VDR registers when power gating comes into picture.
Though not ideal this change does not hit us badly in perspective of how
we use the compare function to decide if fastset is required or if we
wrote the state correctly. VDR0_CONFIG and VDR1_CONFIG hold the values
that indicate the PLL operating mode and link rate which is usually
what we need to check if something has changed or not.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 9501ac861712..cc85818c2b7e 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -2207,13 +2207,18 @@ bool
 intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
 				  const struct intel_lt_phy_pll_state *b)
 {
-	if (memcmp(&a->config, &b->config, sizeof(a->config)) != 0)
-		return false;
-
-	if (memcmp(&a->data, &b->data, sizeof(a->data)) != 0)
-		return false;
+	/*
+	 * With LT PHY values other than VDR0_CONFIG and VDR2_CONFIG are
+	 * unreliable and cannot always be read back since internally
+	 * the after power gating values are not restored back to the
+	 * shadow VDR registers, hence we do not compare the whole state
+	 * just the two VDR registers.
+	 */
+	if (a->config[0] == b->config[0] &&
+	    a->config[2] == b->config[2])
+		return true;
 
-	return true;
+	return false;
 }
 
 void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
-- 
2.34.1

