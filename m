Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9496E6F16
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 00:06:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC36110E38C;
	Tue, 18 Apr 2023 22:06:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3FBE10E1AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 22:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681855565; x=1713391565;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=of4x/vNJv6FDQNbPAHMzoGAmHFFniPjtp6JKdiSmOOw=;
 b=C5duL4SWGXbcBX6viwACUhSn4Lcpdh4FJ2wILfBLA/JMQBaPhKoUQxgu
 td/V0YGO9gZXvAPaJE4+V5ijSiIXgOCqKtxe+GYmclGdsSorPNEIS3Zq8
 LJnauo7VibOytSzMEyLjeEyUQr8g+OFxjAkE6m6M3O/rWTZ3Xt728igyZ
 D45dHZnR6k7bkfw3C8hZesA1sf65LT52iAFtZVvpJpkETQKw5Mg/kgnRe
 ptbmANIxJvNmxC0Mwi1VGUlm/iWiHhv/ToacJgd+Ih1lByzazjxnY248q
 +58v8Ut8gItcdfTVm4W9/CDys9HIQW9mETpnh0WHFK3A2QeGTYE2sMsVM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334101441"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334101441"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="684761349"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="684761349"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:05:59 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 15:04:46 -0700
Message-Id: <20230418220446.2205509-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl: WA to clear RDOP clock
 gating
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

From: Haridhar Kalvala <haridhar.kalvala@intel.com>

Workaround implementation to clear RDOP clock gating.

Bspec: 33453

Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b925ef47304b..312eb8b5f949 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1703,6 +1703,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
 		/* Wa_18018781329 */
 		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
 		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
+
+		/* Wa_14015795083 */
+		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
 	}
 
 	/*
-- 
2.34.1

