Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8324FCF20A2
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 06:59:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867E110E324;
	Mon,  5 Jan 2026 05:59:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGjJvyLK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF68110E347;
 Mon,  5 Jan 2026 05:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767592782; x=1799128782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E3NNzcmaokR+q+hGk9MvZvZ4/LbtXE7O/RuvtaqjIV4=;
 b=XGjJvyLKCQXcywPcJkcAzuxjqg9kclg34baRXml2ZYZwIpt4fwnbrzw8
 mmoV7ZWbACSMQN87y7qWUAUJhIaAXi015YsklAaegAYuQDNdqci4a/QIf
 HBaB5/LIkNKWcwbGbLvsSNDB1dCOmp2k+nqV2AdKKgHmm5yFPZ6BOiz+O
 A2smvF5v8onOf/cVN8kkQwVogM+QJlLyIX915sy1WobHIrmLnwPY/cX9j
 8NQ/RUlaMZKTXFfNv8mIOm3TmF0trUsgl5zF8IWenuxSgZCJlJBfPGbVL
 as623eaqrZ4rieMuiR42ME4lUGIC9dWXhsZBvhmCdfHHLPTcmdbBRKMP7 A==;
X-CSE-ConnectionGUID: PTFnLW0rREm7DaDmspRpaQ==
X-CSE-MsgGUID: OHvViOQSRVWQuKJY2TKNhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="72805050"
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="72805050"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:59:42 -0800
X-CSE-ConnectionGUID: fJhSOwb2TZqRznSwvkER6g==
X-CSE-MsgGUID: 0RRkwkaxSfCHIiiRjSUtog==
X-ExtLoop1: 1
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 04 Jan 2026 21:59:41 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 2/3] drm/i915/ltphy: Compare only certain fields in state
 verify function
Date: Mon,  5 Jan 2026 11:29:36 +0530
Message-Id: <20260105055937.136522-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105055937.136522-1-suraj.kandpal@intel.com>
References: <20260105055937.136522-1-suraj.kandpal@intel.com>
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
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 9501ac861712..9addb7661b6b 100644
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
+	 * unreliable. They cannot always be read back since internally
+	 * after power gating values are not restored back to the
+	 * shadow VDR registers. Thus we do not compare the whole state
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

