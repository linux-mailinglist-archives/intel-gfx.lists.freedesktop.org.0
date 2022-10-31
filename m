Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D86B86134F8
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 12:55:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF7910E1A9;
	Mon, 31 Oct 2022 11:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797A110E1A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 11:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667217306; x=1698753306;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dlKlUgA5FSjeYBhSTywBPcGaWFao8gJxzrj0wPdMzpE=;
 b=SSTXzUJXG4O0PnBvFFRyHWX+/pMueX3R0e8CCL+VBxZfuN7xypopGlxu
 Rzhk1V2Ckz85hJiK+iVqcszcqWzybyl0pNE5fFd9JwTkdtq/gbGN60FNY
 p7EZxOa+/Irv2Pj3zRYh+r6KaRuWEUZyW7k0E+SztJ5NspSOrPXOrFp/2
 sepamwgXkcbiPsMGFUzZwmKx2DcgK9as5+Bp6CW4v8GF4eITvopLtDkfI
 K4aiWOUg7FLySd6yBr6CQhXeYhb2Mrj3NEc0zzVJwlkli5s8glfsF6VAa
 tGSRY1lPtvlrmU1YAnIMvAHAs32Q/Wemd2/zxIiJAdKDlf01wN318Q4Sb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="370953426"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="370953426"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 04:55:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="696985503"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="696985503"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 04:55:03 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 17:24:52 +0530
Message-Id: <20221031115452.1813981-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: Fix gt_pm live_gt_clocks test
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While reading the engine timestamps there can be uncontrollable
concurrent mmio access via other i915 child drivers and by GuC,
which may cause mmio latency to read the engine timestamps,
Account such latency to calculate time to read engine timestamp.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index be94f863bdef..4f299590ae62 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -50,8 +50,8 @@ static void measure_clocks(struct intel_engine_cs *engine,
 
 		udelay(1000);
 
-		dt[i] = ktime_sub(ktime_get(), dt[i]);
 		cycles[i] += ENGINE_READ_FW(engine, RING_TIMESTAMP);
+		dt[i] = ktime_sub(ktime_get(), dt[i]);
 		local_irq_enable();
 	}
 
-- 
2.25.1

