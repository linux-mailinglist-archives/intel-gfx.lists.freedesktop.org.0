Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2171A5A2598
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 12:13:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4C410E836;
	Fri, 26 Aug 2022 10:13:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8772510E836
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 10:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661508806; x=1693044806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sfgmn20kdMezjnqWoZqbfRHAtFor/9V8CZx5s9lMNh0=;
 b=BPW9vSDO4aDePg8bsPMOZjafRNKnZEYA9oEYud4rmH0Ad7+GtnbuAT/l
 ZHCQKDRgvtl4m8Q7L8DWfkmE3rjScPNUwTzdWH7Gz5axklHQ0Vf5qJN6V
 sYZ89MvAyzpTjpu0afTOhs2tQBzQ8Lln9Vh3jy4+3YUq8TXuQsmbLo4Ic
 tlBdDiWDP4O1/JJSxeaS6t04fRYKnG0XZut5S7N18nGi19JV3m1NsuMhj
 2GLxmTTrlolC8KQX3YflMR1Ok9GIATpIMs3kYjXCFfzoNeMt/5bMD0QKq
 nHbHAwfJsJVYRSDxgRWZ9cqOsSYi8DpoU0m/+/DLk2Mym5aTBJtb5hKNR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="274225813"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="274225813"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 03:13:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="671407126"
Received: from rdudek-mobl1.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.35.74])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 03:13:20 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 06:13:18 -0400
Message-Id: <20220826101318.78486-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <87o7w7kh7w.wl-ashutosh.dixit@intel.com>
References: <87o7w7kh7w.wl-ashutosh.dixit@intel.com>
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

Fixes: 7ba79a671568 ("drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled")
Cc: <stable@vger.kernel.org> # v5.15+
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Tested-by: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_llc.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index 14fe65812e42..766f9526da99 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -49,6 +49,7 @@ static unsigned int cpu_max_MHz(void)
 static bool get_ia_constants(struct intel_llc *llc,
 			     struct ia_constants *consts)
 {
+	struct intel_guc_slpc *slpc = &llc_to_gt(llc)->uc.guc.slpc;
 	struct drm_i915_private *i915 = llc_to_gt(llc)->i915;
 	struct intel_rps *rps = &llc_to_gt(llc)->rps;
 
@@ -65,8 +66,13 @@ static bool get_ia_constants(struct intel_llc *llc,
 	/* convert DDR frequency from units of 266.6MHz to bandwidth */
 	consts->min_ring_freq = mult_frac(consts->min_ring_freq, 8, 3);
 
-	consts->min_gpu_freq = rps->min_freq;
-	consts->max_gpu_freq = rps->max_freq;
+	if (intel_uc_uses_guc_slpc(&llc_to_gt(llc)->uc)) {
+		consts->min_gpu_freq = slpc->min_freq;
+		consts->max_gpu_freq = slpc->rp0_freq;
+	} else {
+		consts->min_gpu_freq = rps->min_freq;
+		consts->max_gpu_freq = rps->max_freq;
+	}
 	if (GRAPHICS_VER(i915) >= 9) {
 		/* Convert GT frequency to 50 HZ units */
 		consts->min_gpu_freq /= GEN9_FREQ_SCALER;
-- 
2.37.1

