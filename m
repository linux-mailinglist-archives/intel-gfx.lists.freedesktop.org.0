Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0EC7A8D2D
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 21:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A8810E53B;
	Wed, 20 Sep 2023 19:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4A2610E53B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 19:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695239669; x=1726775669;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6OibO9QE0rWFjxeKKgTeCA4fn2SirkD9eqYEIgrL1UY=;
 b=RJhHJDcA2s3RdNm3dJwKmMpEB2spaLGfoWxckKIGJ5y3/JAjzjFsL70M
 PAQwfAqfmTILZL8XUHGEAl0gK4aBNSyqGr8PbuqJWZSbZF+4C0jkshpJu
 0j+RjXF3HQg4FRGD5u5MpUNMFtegQ9PIyd/1H4q+VQLKihgl6+ysbD/v8
 GpV2cDqVuLpjv1F3DBe1RIu8EOXXAXV36f+16X1flsSIh9BfNstSzGhkT
 8sjaFMjSsqZMJoqG/hOgC7nIRjApwnp0bDgPSiG/CT7wVGEHGP9JGEx4H
 s9o8AAtB/KScGHMHZeQ0Nx1Fte80Rs7/eZxoxCEBEfU62P+w/EZMdTLTD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="384160074"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="384160074"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 12:54:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="746778724"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="746778724"
Received: from baguirre-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.213.162.6])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 12:54:27 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Sep 2023 16:53:52 -0300
Message-ID: <20230920195351.59421-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/irq: Clear GFX_MSTR_IRQ as part of
 IRQ reset
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have W1C
behavior. If we do not properly reset them, we would miss delivery of
interrupts if a pending bit is set when enabling IRQs.

As an example, the display part of our probe routine contains paths
where we wait for vblank interrupts. If a display interrupt was already
pending when enabling IRQs, we would time out waiting for the vblank.

Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the IRQ
reset.

v2:
  - Move logic from gen11_gt_irq_reset() to dg1_irq_reset(). (Matt)

BSpec: 50875, 54028
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 1bfcfbe6e30b..8130f043693b 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -751,6 +751,8 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
 
 	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
 	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
+
+	intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
 }
 
 static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
-- 
2.42.0

