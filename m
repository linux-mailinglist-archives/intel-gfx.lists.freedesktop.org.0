Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB713782FF2
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 20:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A3D10E2A3;
	Mon, 21 Aug 2023 18:06:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D95A210E2A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 18:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692641198; x=1724177198;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5eT/caoC4Tv2WhgB8AijfI4X1MkrtnbB/CCmxFMdC6Y=;
 b=hqRhlrYrjJVBsD5I4Htl3VvjHRKft1/XzvnPUEj2+mk/EGmH3zU1wXfB
 KP2AKguLzBAJ4nR9Wc7FIWXZZokgZ0ucAvUDYGTLR4re4SUcAsCn3sfaF
 Fk8e6me+XODv1Y15qN1fqEjYRPL9FY9Re1OUD4RvMc/vGFWyoYbufiUXo
 QmPtdn0AKfg1DJj+pYNURzucb4QqDiTyWDdiW7TGPkSiYHRCSj81ZuR+z
 dXF15wuHiyEzpFML45lDa5mbug8cip8MIyUE8zrCbc2YG3/oRuNy/oCce
 1IWw4Z4VTXpxCQgHcxrpBGShpJ4Tyfi5K+HEy/FUFLocP9dmKGvaBONco w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="353236505"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="353236505"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="738995565"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="738995565"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 11:06:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 11:06:22 -0700
Message-ID: <20230821180619.650007-13-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230821180619.650007-11-matthew.d.roper@intel.com>
References: <20230821180619.650007-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/9] drm/i915/xelpmp: Don't assume
 workarounds extend to future platforms
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The currently implemented Xe_LPM+ workarounds are specific to media
version 13.00.  When new IP versions show up in the future, they'll need
their own workaround lists.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index f7f3376eccd0..804b38bc9482 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1712,10 +1712,10 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
 	gt_tuning_settings(gt, wal);
 
 	if (gt->type == GT_MEDIA) {
-		if (MEDIA_VER(i915) >= 13)
+		if (MEDIA_VER_FULL(i915) == IP_VER(13, 0))
 			xelpmp_gt_workarounds_init(gt, wal);
 		else
-			MISSING_CASE(MEDIA_VER(i915));
+			MISSING_CASE(MEDIA_VER_FULL(i915));
 
 		return;
 	}
-- 
2.41.0

