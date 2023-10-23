Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ACC7D3A3D
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 17:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C289B10E211;
	Mon, 23 Oct 2023 15:03:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02BB310E211
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 15:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698073398; x=1729609398;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lU8h/Evsaukcvdgr2F7FXlj6405OvJrNRPzaUYSl8z0=;
 b=kwTb2R6Hn428fBGp5eC4YCUJDOHiSQb6+qxqhrHia+HfUofWf+MoQYwo
 2Dxy+R/dDuKUvDQBikRBGQS9pUjy8KmAcF/cg/sTuA1Vu3gDKL1E+1SOI
 v1mu4ofM0QexoBRCup5X2j4yDN2I0voRg8AsuJ5xjYx6zdUau71HvbSzK
 qAyGwS9GvAPECPet4p4bovitX3tmMoanhj5mFY2i+VEfRkde9sglITvIR
 yqyWrJZ3dv4B+hpiq3FHEH8RHM4dgLpgKNgk029ECsFieAWYtlwxH2V7Z
 lO9UDstePsTszX/66FYAvLM1i4LCefd5oxsNfvXEDBVAfGwKn2ZNNBlGH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="473079230"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="473079230"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 08:03:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="823981841"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="823981841"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 08:03:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 18:02:56 +0300
Message-Id: <20231023150256.438331-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231023150256.438331-1-jani.nikula@intel.com>
References: <20231023150256.438331-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/pmu: rearrange hrtimer pointer
 chasing
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Do the logical step of first getting from struct hrtimer to struct
i915_pmu, and then from struct i915_pmu to struct drm_i915_private,
instead of hrtimer->i915->pmu.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index d45b40ec6d47..2a24eacd1b40 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -478,9 +478,8 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 
 static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
 {
-	struct drm_i915_private *i915 =
-		container_of(hrtimer, struct drm_i915_private, pmu.timer);
-	struct i915_pmu *pmu = &i915->pmu;
+	struct i915_pmu *pmu = container_of(hrtimer, struct i915_pmu, timer);
+	struct drm_i915_private *i915 = pmu_to_i915(pmu);
 	unsigned int period_ns;
 	struct intel_gt *gt;
 	unsigned int i;
-- 
2.39.2

