Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B943101AC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 01:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04BBD6EF21;
	Fri,  5 Feb 2021 00:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 626866EF21
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 00:34:04 +0000 (UTC)
IronPort-SDR: 04yy0is383A8T0PVLlv+Hjz4qnMqJgwaSXhzLtgaNRP7Ls/TIc8CZNA1O9ts/s8r3KjdsR+PI8
 a0sYsYbmdHpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="245425187"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="245425187"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 16:33:45 -0800
IronPort-SDR: EMwaW5vtOVIPH70MqPDwewp2bu0GL1aaeJo1g0zbCAoVskfHPk+YdkJv1OcaWM4xizD0KZqruO
 Le9RXd9VmaJw==
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="415409183"
Received: from amgarris-mobl.amr.corp.intel.com (HELO
 sghuge-mobl1.amr.corp.intel.com) ([10.212.114.36])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 16:33:43 -0800
From: Sagar Ghuge <sagar.ghuge@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 16:33:10 -0800
Message-Id: <20210205003310.282664-1-sagar.ghuge@intel.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl,
 tgl: whitelist COMMON_SLICE_CHICKEN3 register
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding this register to whitelist will allow UMD to toggle State Cache
Perf fix disable chicken bit.

   "If this bit is enabled, RCC uses BTP+BTI as address tag in its state
   cache instead of BTI only"

which will lead to dropping unnecessary render target flushes and stall
on scoreboard.

Bspec: 11333
Bspec: 45829

Signed-off-by: Sagar Ghuge <sagar.ghuge@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 53f7838bd3c4..318302475c28 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1473,6 +1473,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 		/* WaEnableStateCacheRedirectToCS:icl */
 		whitelist_reg(w, GEN9_SLICE_COMMON_ECO_CHICKEN1);
 
+		/* WaAllowToDisableStateCachePerfFixFromUMD:icl */
+		whitelist_reg(w, GEN11_COMMON_SLICE_CHICKEN3);
+
 		/*
 		 * WaAllowPMDepthAndInvocationCountAccessFromUMD:icl
 		 *
@@ -1533,6 +1536,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 		/* Wa_1808121037:tgl */
 		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
 
+		/* WaAllowToDisableStateCachePerfFixFromUMD:tgl */
+		whitelist_reg(w, GEN11_COMMON_SLICE_CHICKEN3);
+
 		/* Wa_1806527549:tgl */
 		whitelist_reg(w, HIZ_CHICKEN);
 		break;
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
