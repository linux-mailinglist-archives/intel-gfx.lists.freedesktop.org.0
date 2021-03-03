Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAD332ACB3
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 02:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C996E329;
	Wed,  3 Mar 2021 01:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B83A56E364
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 01:07:48 +0000 (UTC)
IronPort-SDR: TmzEK3Xc0meU+B5R70t1zscnWlAOY6Hc0BdVg4wLtrTax1oARUKNnowh7fgvkHAjcwBOnGtnWK
 0DZsTwMHxWcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9911"; a="187115122"
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="187115122"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 17:07:44 -0800
IronPort-SDR: QYug0cCP5VCSwqvPKQLYSwSakVDGZtUog/0za3j0FgVSWbHhrslT1aqfLyYqBVgOtLRp5eVNXQ
 CDM6dkUqdNGg==
X-IronPort-AV: E=Sophos;i="5.81,218,1610438400"; d="scan'208";a="518071490"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2021 17:07:44 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Mar 2021 17:07:28 -0800
Message-Id: <20210303010728.3605269-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210303010728.3605269-1-lucas.demarchi@intel.com>
References: <20210303010728.3605269-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dg1: WA GPU hang at RCC
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
Cc: Jianjun Liu <Jianjun.liu@intel.com>, Zhen Han <zhen.han@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Zhen Han <zhen.han@intel.com>

GPU hangs at RCC. According to Wa_14012131227 we shouldn't have a hang
due to RHWO, but that is what we are observing, even without media
compressible render target. Feedback from HW engineers is to leave RHWO
disabled.

Cc: Jianjun Liu <Jianjun.liu@intel.com>
Cc: Chuansheng Liu <chuansheng.liu@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Zhen Han <zhen.han@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e678fa8d2ab9..5235fb70a69a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -739,6 +739,17 @@ static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
 	       FF_MODE2,
 	       FF_MODE2_GS_TIMER_MASK,
 	       FF_MODE2_GS_TIMER_224, 0);
+
+	/*
+	 * Wa_14012131227
+	 *
+	 * Although the WA is described as causing corruption when using media
+	 * compressible render target, leaving RHWO enabled is also causing
+	 * gpu hang when using multiple concurrent render and media workloads.
+	 * Disable it completely for now.
+	 */
+	wa_masked_en(wal, GEN7_COMMON_SLICE_CHICKEN1,
+		     GEN9_RHWO_OPTIMIZATION_DISABLE);
 }
 
 static void
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
