Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B04ECCF2090
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 06:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C06110E2AD;
	Mon,  5 Jan 2026 05:57:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LCcKC2lQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E93A810E208;
 Mon,  5 Jan 2026 05:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767592646; x=1799128646;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E3NNzcmaokR+q+hGk9MvZvZ4/LbtXE7O/RuvtaqjIV4=;
 b=LCcKC2lQEzJjmWx0SuTIFMoFDS97sCfDbgYAPugzZxSzrKRqt2JRHX3I
 LGP/Tajg9aNwFQqSyTDAjFYiYgqkxCslzKjHffB4/EOUiR48E4BXnI7yf
 CaxjsyQcNxLWSNkg/MOWI4PuIdQmVrcWVJgHBBBJ+rklOunXVilFiXhYA
 f70Iyoaq/HSAtNyOaYvEYBtHvntbrgr2xShcnPil58YAgTht0RvjcvP+z
 YdnbIQraTFHKGO1Tjh6z38IqwU6seHWAvALJ2IbYTBW+lH2I3yOfqaTG+
 r5WbafBf7znHk/FNKkn78EF3xon46l3tmbLzX98uXeHp1pZNeuuD/u6ZP A==;
X-CSE-ConnectionGUID: 4K6CgIEIQymV8P4YBGq2Xg==
X-CSE-MsgGUID: b6GNGkANR/Wsh15xZ/i4sw==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="68152093"
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="68152093"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:57:26 -0800
X-CSE-ConnectionGUID: 2bko5zAwSO2GZdUjQPEfCQ==
X-CSE-MsgGUID: a3uo+WEmTdKfD3DQfRFVBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="225840949"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 04 Jan 2026 21:57:24 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 2/3] drm/i915/ltphy: Compare only certain fields in state
 verify function
Date: Mon,  5 Jan 2026 11:27:16 +0530
Message-Id: <20260105055717.136146-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260105055717.136146-1-suraj.kandpal@intel.com>
References: <20251231052315.77828-1-suraj.kandpal@intel.com>
 <20260105055717.136146-1-suraj.kandpal@intel.com>
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

