Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26125A2DC6
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 19:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B0C10E9DD;
	Fri, 26 Aug 2022 17:44:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14F4C10E9DD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 17:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661535877; x=1693071877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DLl+G6SLcdSnlGA6RkJZDH0d+8L1q7zDkGKrMSa7Aa4=;
 b=Hh1y57nzqxcC7vMN1GaDIadAyCaa/KiT6yvoHbbUHGH7W5gaNB6scgbI
 ygL3iOkEljHuB3oO2K5w0Uht2t6YczXdTg47zXP+clMsiW1bd3CDwFd6I
 FpLq0BQmknqILLd+ROtz83BD0/jGVX6gClHakP64efemJleIXeHBzcCck
 /gMvayKocXz5S8OXQEKsv7mKypa9PO0nMlJih5ftXdbtRoCC9TIRE4wLA
 anKUmScKmgWkY+xHFpYZ4Ife6EwRTeA3tLYFgphApY0ECnROI0MzqEHV6
 552JW8H4WNRIs+94t4Pl9/rpQUACZ+L9H2fswCI74Fw2LDyQYgGVLK2sc g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="295834009"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="295834009"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 10:44:36 -0700
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="671555017"
Received: from rdudek-mobl1.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.35.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 10:44:35 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 13:44:34 -0400
Message-Id: <20220826174434.157513-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <87h71zjgfr.wl-ashutosh.dixit@intel.com>
References: <87h71zjgfr.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/slpc: Fix PCODE IA Freq requests when
 using SLPC
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
Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>,
 stable@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to inform PCODE of a desired ring frequencies so PCODE update
the memory frequencies to us. rps->min_freq and rps->max_freq are the
frequencies used in that request. However they were unset when SLPC was
enabled and PCODE never updated the memory freq.

v2 (as Suggested by Ashutosh): if SLPC is in use, let's pick the right
   frequencies from the get_ia_constants instead of the fake init of
   rps' min and max.

v3: don't forget the max <= min return

Fixes: 7ba79a671568 ("drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled")
Cc: <stable@vger.kernel.org> # v5.15+
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Tested-by: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_llc.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index 14fe65812e42..2677d62573d9 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -49,13 +49,28 @@ static unsigned int cpu_max_MHz(void)
 static bool get_ia_constants(struct intel_llc *llc,
 			     struct ia_constants *consts)
 {
+	struct intel_guc_slpc *slpc = &llc_to_gt(llc)->uc.guc.slpc;
 	struct drm_i915_private *i915 = llc_to_gt(llc)->i915;
 	struct intel_rps *rps = &llc_to_gt(llc)->rps;
 
 	if (!HAS_LLC(i915) || IS_DGFX(i915))
 		return false;
 
-	if (rps->max_freq <= rps->min_freq)
+	if (intel_uc_uses_guc_slpc(&llc_to_gt(llc)->uc)) {
+		consts->min_gpu_freq = slpc->min_freq;
+		consts->max_gpu_freq = slpc->rp0_freq;
+	} else {
+		consts->min_gpu_freq = rps->min_freq;
+		consts->max_gpu_freq = rps->max_freq;
+	}
+
+	if (GRAPHICS_VER(i915) >= 9) {
+		/* Convert GT frequency to 50 HZ units */
+		consts->min_gpu_freq /= GEN9_FREQ_SCALER;
+		consts->max_gpu_freq /= GEN9_FREQ_SCALER;
+	}
+
+	if (consts->max_gpu_freq <= consts->min_gpu_freq)
 		return false;
 
 	consts->max_ia_freq = cpu_max_MHz();
@@ -65,13 +80,6 @@ static bool get_ia_constants(struct intel_llc *llc,
 	/* convert DDR frequency from units of 266.6MHz to bandwidth */
 	consts->min_ring_freq = mult_frac(consts->min_ring_freq, 8, 3);
 
-	consts->min_gpu_freq = rps->min_freq;
-	consts->max_gpu_freq = rps->max_freq;
-	if (GRAPHICS_VER(i915) >= 9) {
-		/* Convert GT frequency to 50 HZ units */
-		consts->min_gpu_freq /= GEN9_FREQ_SCALER;
-		consts->max_gpu_freq /= GEN9_FREQ_SCALER;
-	}
 
 	return true;
 }
-- 
2.37.1

