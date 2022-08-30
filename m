Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4613C5A6D70
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 21:36:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98CDF10E025;
	Tue, 30 Aug 2022 19:36:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C8210E025
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 19:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661888165; x=1693424165;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7xxYBwCA2Tk38kRxuhn/FQUgBZJXvZQapjRHMtlkcIM=;
 b=jl+gYIHxc5gMx3/FolKQ1RuoIRYPCKBIPYLuDVGzd0vG6ZgeZQRRECS2
 UWU+nwdpdx47LWVHhyN/ubobXe3rr71EeLQ29DAzR5bhkcJFGIPi7pAZW
 buLizvTVAeMPENpaXA770jgsdy1TiskfeOb/WgQ+Wtrv/X5tQmzOtzALq
 BgAifE6BlMflfWXAWefHea/RrK2IPTS6AXdmoVkX0sc5qeBZT6xqGwR0s
 bb8U+HoZXCmh8ENUx8APn7fKPmhLgqfly/f8lqqCDD9VXMq8XUSW81zxy
 EN/HVertwxHCFt16x4Yp5ih4H71isezgqOR7GsLcZmkuvwwzXwtG1y1lZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="359244612"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="359244612"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 12:35:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="673019964"
Received: from mblasczy-mobl.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.38.223])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 12:35:38 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Aug 2022 15:35:37 -0400
Message-Id: <20220830193537.52201-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <87fshdzr3w.wl-ashutosh.dixit@intel.com>
References: <87fshdzr3w.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/slpc: Fix inconsistent locked return
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix for intel_guc_slpc_set_min_freq() warn:
inconsistent returns '&slpc->lock'.

v2: Avoid with_intel_runtime_pm with the
    internal goto/return. (Ashutosh)
    Also standardize the 'ret' if this came from
    the efficient setup. And avoid the 'unlikely'.

Fixes: 95ccf312a1e4 ("drm/i915/guc/slpc: Allow SLPC to use efficient frequency")
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 40 ++++++++++-----------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 9d49ccef03bb..fdd895f73f9f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -467,33 +467,33 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
 
 	/* Need a lock now since waitboost can be modifying min as well */
 	mutex_lock(&slpc->lock);
-
-	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
-
-		/* Ignore efficient freq if lower min freq is requested */
-		ret = slpc_set_param(slpc,
-				     SLPC_PARAM_IGNORE_EFFICIENT_FREQUENCY,
-				     val < slpc->rp1_freq);
-		if (unlikely(ret)) {
-			i915_probe_error(i915, "Failed to toggle efficient freq (%pe)\n",
-					 ERR_PTR(ret));
-			return ret;
-		}
-
-		ret = slpc_set_param(slpc,
-				     SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
-				     val);
-
-		/* Return standardized err code for sysfs calls */
-		if (ret)
-			ret = -EIO;
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
+
+	/* Ignore efficient freq if lower min freq is requested */
+	ret = slpc_set_param(slpc,
+			     SLPC_PARAM_IGNORE_EFFICIENT_FREQUENCY,
+			     val < slpc->rp1_freq);
+	if (ret) {
+		i915_probe_error(i915, "Failed to toggle efficient freq (%pe)\n",
+				 ERR_PTR(ret));
+		goto out;
 	}
 
+	ret = slpc_set_param(slpc,
+			     SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
+			     val);
+
 	if (!ret)
 		slpc->min_freq_softlimit = val;
 
+out:
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 	mutex_unlock(&slpc->lock);
 
+	/* Return standardized err code for sysfs calls */
+	if (ret)
+		ret = -EIO;
+
 	return ret;
 }
 
-- 
2.37.2

