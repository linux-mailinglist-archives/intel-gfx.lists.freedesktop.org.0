Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1577A6A01
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 19:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F077210E13D;
	Tue, 19 Sep 2023 17:50:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB82810E13D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 17:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695145812; x=1726681812;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pHeAb6oBPQFuqyNKO4I0/d5+MdxxHRA8HyOg4SUGZVo=;
 b=HzqOYTukbAWsdZ7+hxO/2tB4Dhs4n5lRQnIknHBhObi9VyhzVzS+uKWG
 m1scHm4bTaihRrw3Y+cV4mWALiPSS+qZ0DQsk4Q/bvvp1uOwK9Y/zYqpX
 3Lrm3YLSXT0zIgHFK0gQBcxEzgjt7HinLQ4HV499g6LtrGV+gnOJyEGcV
 wCfgfsKGdqrOCjD80Tx+dJiy/zylo1cey+V7OttWU0yJLDfLx7xlg2HRE
 XtspxuBTXcRie2mhOWbMNwq+GxLDbFJp4f8lj8hUG4A95r9IRLJkGxujD
 wQ9d4zf788jViwVYJkK5arTznOxTQvvEDRdF2F8DmP6zckiyu9+5h+hAc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="370324775"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="370324775"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 10:50:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="739821014"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="739821014"
Received: from rsee-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.1.105])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 10:50:11 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Sep 2023 14:49:53 -0300
Message-ID: <20230919174953.51546-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/irq: Clear GFX_MSTR_IRQ as part of IRQ
 reset
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

Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have W1C
behavior. If we do not properly reset them, we would miss delivery of
interrupts if a pending bit is set when enabling IRQs.

As an example, the display part of our probe routine contains paths
where we wait for vblank interrupts. If a display interrupt was already
pending when enabling IRQs, we would time out waiting for the vblank.

Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the IRQ
reset.

BSpec: 50875, 54028
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_irq.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 77fb57223465..849dea61fc74 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -214,6 +214,9 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 {
 	struct intel_uncore *uncore = gt->uncore;
 
+	if (gt->type != GT_MEDIA && GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 10))
+		intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
+
 	/* Disable RCS, BCS, VCS and VECS class engines. */
 	intel_uncore_write(uncore, GEN11_RENDER_COPY_INTR_ENABLE, 0);
 	intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE,	  0);
-- 
2.42.0

