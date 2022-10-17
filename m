Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 341EA600966
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 10:55:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 542C210E3D2;
	Mon, 17 Oct 2022 08:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8F710ECFA
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 08:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665996950; x=1697532950;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yKtXX+4447oUMe0NhGa7N5JwRi4s0o1DZx5kumOWRUo=;
 b=d1mBqeMkOWEJLyyJ/IoloAAzx0y2ErbuibQJfeguG19XA6wOjNcbOswO
 YGSJGz3/w+GmTEIlgSoF0UiTmmC8ELiCgYLIdW+apLu+IJSbGAoUBFeKp
 Pf5MsmREnMq+3m5juONUrHQXMW8ePqkS690Gwtt4A7tx98jAFI1q89H0f
 hjTRnOGzl5tALcPRAllITa8wlvIQ5sEpEz97y8E+N/QzC1RrOihHDLKw4
 BXQegqd7dCWKCGotQuDqN7m7oBQNuaFfsQV3FRUq7cdS9qAGUC7L7XnGn
 r4JlZzwaBn1sbcQxhDzxVS6QSmihbcofumUv3PmDnbzWF5snh5k18b3FP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="306825053"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="306825053"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:55:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="873394565"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="873394565"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 01:55:46 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Oct 2022 10:55:25 +0200
Message-Id: <20221017085525.3898649-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: fix clear mask in GEN7_MISCCPCTL
 update
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

GEN7_DOP_CLOCK_GATE_ENABLE bit should be cleared, not inverse.
The bug was introduced during conversion to intel_uncore_rmw helper.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Fixes: 8cee664d3eb6f8 ("drm/i915: use proper helper for register updates")
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 4 ++--
 drivers/gpu/drm/i915/intel_pm.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 2b75ca5e6e618b..d68859866bf238 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1052,8 +1052,8 @@ static void ivb_parity_work(struct work_struct *work)
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
 		goto out;
 
-	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
-				     0);
+	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
+				     GEN7_DOP_CLOCK_GATE_ENABLE, 0);
 	intel_uncore_posting_read(&dev_priv->uncore, GEN7_MISCCPCTL);
 
 	while ((slice = ffs(dev_priv->l3_parity.which_slice)) != 0) {
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 9f6c58ad8bdb06..19d4a88184d7a1 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4321,8 +4321,8 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
 	u32 val;
 
 	/* WaTempDisableDOPClkGating:bdw */
-	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
-				     0);
+	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL,
+				     GEN7_DOP_CLOCK_GATE_ENABLE, 0);
 
 	val = intel_uncore_read(&dev_priv->uncore, GEN8_L3SQCREG1);
 	val &= ~L3_PRIO_CREDITS_MASK;
-- 
2.34.1

