Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B16C775307
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 08:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E2410E23B;
	Wed,  9 Aug 2023 06:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E23B10E23B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 06:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691563262; x=1723099262;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wIbebeFJzfFKUQkdi9vrKv8ZQju+Hf2QfZKs5hNlw3U=;
 b=mReARVSYQJlRtH7KSbcvlipQsxKzILcHIndd2DlWlhZL59cgTz910w1I
 WpSTi2jPTrgTQ38MZOeqhC1ptZnaMkg5gBoGPTv755Zv+Mw0BhCN3z2gP
 QzHLiPI8ON0GqKu8zjJ+eF8DkHXv2/EbHypxQBxj9utCCLU1Baw+fIwtT
 /vT3ru802mPulXR/19OlHV0TIR/4gCR9P9bGHRInUQ+O6VMJT63W642ns
 PnqbGBWwUpsAwxJ3tJQsQMY7Y6z4M/XAE9a2I0SqIjfOYko9YXDzXr/BI
 izA1VJ2f72PqZGHzac6AC9uD/HGxqhGNs8IR2rm3qvDFPTGa0N1r1HnzZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="350625587"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="350625587"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 23:41:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="875105647"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 23:41:02 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Aug 2023 12:10:43 +0530
Message-Id: <20230809064043.375079-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Disable SF round to nearest even
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

Workaround for disabling round to nearest even in the SF unit.

BSpec: 45818
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 01807a7dd2c1..f233a552539b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -850,6 +850,9 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
 
 	/* Wa_18019271663 */
 	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
+
+	/* Wa_15010599737 */
+	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
 }
 
 static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
-- 
2.34.1

