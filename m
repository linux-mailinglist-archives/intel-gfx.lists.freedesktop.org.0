Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2B360EB83
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 00:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13DC210E596;
	Wed, 26 Oct 2022 22:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A9710E55B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 22:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666822867; x=1698358867;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=S6TU5IPCKqugKuXPsfWSoRIT1EXNM/yiDDISPsvQZ4M=;
 b=nV8ia5cRdWLoufAkdR4A+NdRiSLLHAwLNj4uWe22YJs1S5OMaXk6fDLV
 1DYO9FSG5JOsAYV0GYtKfFkv+UAJHF4B3qvVYSPi1ZVL8qK+eUKO80SMN
 MHBWM9VV5PPxOKsEv3C9rIn4B9gdDx2NEPPjhkhcD+OBenRMG7+sDe4mL
 1vw8ZUOZRD2eQ5Gp0nGiZIwoSHAzN7G9iPvtAVGWN0tLQ/p9Avvi3ew/h
 MRjwPUd1QQEAJ0i2kigC8TdYx05/EM/ru+ZhPNF4RNGyCvEeDGp016zFk
 I+KV0q/R4FZVKe6g/mlyY6N7b0LcFvqO/smVqOtH/j+0rN4ARc4pqqtZH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394390435"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="394390435"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721431392"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="721431392"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 22:20:59 +0000
Message-Id: <20221026222102.5526-14-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 13/16] drm/i915/perf: Save/restore EU flex
 counters across reset
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

If a drm client is killed, then hw contexts used by the client are reset
immediately. This reset clears the EU flex counter configuration. If an
OA use case is running in parallel, it would start seeing zeroed eu
counter values following the reset even if the drm client is restarted.
Save/restore the EU flex counter config so that the EU counters can be
monitored continuously across resets.

v2:
- Save/restore eu flex config only for gen12, as for pre-gen12, these
  are saved and restored in the context image.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 34ef4f36e660..a419d60166c8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -392,6 +392,16 @@ static int guc_mmio_regset_init(struct temp_regset *regset,
 		else
 			ret |= GUC_MMIO_REG_ADD(gt, regset, GEN9_LNCFCMOCS(i), false);
 
+	if (GRAPHICS_VER(engine->i915) >= 12) {
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL0, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL1, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL2, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL3, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL4, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL5, false);
+		ret |= GUC_MMIO_REG_ADD(gt, regset, EU_PERF_CNTL6, false);
+	}
+
 	return ret ? -1 : 0;
 }
 
-- 
2.25.1

