Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3C39BC02C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 22:35:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E183E10E4E0;
	Mon,  4 Nov 2024 21:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZhVhjJYn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E4B910E4DC
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 21:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730756135; x=1762292135;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3UPM3g7GFLDrc7L2rPvBTVJcMLXTUsWvYwInBQwjnaM=;
 b=ZhVhjJYnQJ+e7BII/ZYb9Ult1hUKhfPGpxDxgaI0ifRpLCVAQ1Ned0uO
 OsqZ3jp+Mgy5TjgOnJfM8IsIDC8ptk3o8FsIIBAzdz3oHM/gpiJwx28tg
 gR8RfcpJtkj7NQMZDg2sHI5lnL9/fJzuhFHXZ8MtB7/sfgHZClP3FbwV0
 zYwYPIHiYR/bC+bHm+NUvdA5Crcwdos9GWS73rISwwEYpMz9F9KNIErqf
 jgimT/V9tgfLPQ5bHO36QC8BVK98mIlV9dkbEbXZsumKqMXgDASWEnrKC
 WlZy+xpmKqWtxMZBks3UMNOsufrMJD5lhvX3fPJUoYgdcoNFiCtXQJsQ1 Q==;
X-CSE-ConnectionGUID: JzDRYhdAQMaUv3N1Xgrpew==
X-CSE-MsgGUID: SI9WxNKWQxW+BV+u860Mjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30420302"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30420302"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
X-CSE-ConnectionGUID: B33b9XJfQPC03ej4LupN4A==
X-CSE-MsgGUID: q1st3iAaT9K5W4mHyxBe8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="114562853"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 13:35:35 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/pmu: Remove pointless synchronize_rcu() call
Date: Mon,  4 Nov 2024 13:35:12 -0800
Message-ID: <20241104213512.2314930-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241104213512.2314930-1-lucas.demarchi@intel.com>
References: <20241104213512.2314930-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

This is already done inside perf_pmu_unregister() - no need to do it
before.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index bd476297ed0a1..e55db036be1bb 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -1335,13 +1335,8 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
 	if (!pmu->registered)
 		return;
 
-	/*
-	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
-	 * ensures all currently executing ones will have exited before we
-	 * proceed with unregistration.
-	 */
+	/* Disconnect the PMU callbacks */
 	pmu->registered = false;
-	synchronize_rcu();
 
 	hrtimer_cancel(&pmu->timer);
 
-- 
2.47.0

