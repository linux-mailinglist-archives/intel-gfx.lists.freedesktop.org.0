Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 113977A2516
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80CD110E673;
	Fri, 15 Sep 2023 17:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6AF810E668;
 Fri, 15 Sep 2023 17:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800011; x=1726336011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tVufYfDuZhdyMhwFDhCwqaDdFunxT7ZC5jh2SgUCOqo=;
 b=iOSGfGWtCgNafhoti+m2b5RPxqiNuKiepIy0G9s1miBA1y85U48vcY61
 okAIw1fbcnGEP9d5Ma05utEs6UQN/spB33lPpddGvPdWHJ1lN7uAMzLLV
 7HG80OH1CoIqsminHafRxZY+1BlPCc4xZkKkEGZ7/0LctVKGxBCPwsIIz
 peTAvbhh521WSXF4xx4m5J42/MYflzWnk9p+2WIrGYtuyssQc5MJFW/Af
 58Q+mcAaOfbczYz4k+OzszCTEqXTM8Bp3Zue+SfakfarI1lidlXO3l/4Y
 iJdDGMvdUCrgUKqxHCoBldQiM57xwjxUyelle4nXgJLbEgnA06lnb9Vvp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779269"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779269"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818255"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818255"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:30 -0700
Message-Id: <20230915174651.1928176-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 09/30] drm/i915/xe2lpd: Register DE_RRMR has
 been removed
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clint Taylor <clinton.a.taylor@intel.com>

Do not read DE_RRMR register after display version 20. This register
contains display state information during GFX state dumps.

Bspec: 69456
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 4008bb09fdb5..a28681c15354 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1757,7 +1757,7 @@ static void gt_record_display_regs(struct intel_gt_coredump *gt)
 	struct intel_uncore *uncore = gt->_gt->uncore;
 	struct drm_i915_private *i915 = uncore->i915;
 
-	if (GRAPHICS_VER(i915) >= 6)
+	if (DISPLAY_VER(i915) >= 6 && DISPLAY_VER(i915) < 20)
 		gt->derrmr = intel_uncore_read(uncore, DERRMR);
 
 	if (GRAPHICS_VER(i915) >= 8)
-- 
2.40.1

