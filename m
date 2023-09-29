Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8F57B3B9F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 22:51:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A5F10E157;
	Fri, 29 Sep 2023 20:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0411610E148
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 20:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696020692; x=1727556692;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MwnLfuGOiFfkkXjA2d/pNegXbGC+F3dzgyPHu7X+nH4=;
 b=LvzEHyoRguoA4/V45f3n30o0oz6/bz6xlnaDNIE+SWfKkl0oAlNN8xfD
 mEUrwui5G+6imX0lDt98rpnkhZsxbVeGhvjf+z0s3aGgVr6W2h2Zo/6P8
 iykpWqNEbqrAze4emfwxBBHeObOMvLPSPLhE71goHahhjmGdmYci6EKOa
 +wCZ/XIw7zLhpO5vENTyPnVrwEXlQ+gOrGj0kqknEmPremaAEGHNGRJFP
 zaLv18F+CUBr7g6MyR2js+kcMas4SZa9ntlhodis5P4lBz2zi68aR2rmo
 RSFahEXaHq0kgBSyeXaCjbIN8qcCu6RZ082lN9U7nHxSMaGylMueEf8Lp w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="386241340"
X-IronPort-AV: E=Sophos;i="6.03,188,1694761200"; d="scan'208";a="386241340"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 13:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="815699962"
X-IronPort-AV: E=Sophos;i="6.03,188,1694761200"; d="scan'208";a="815699962"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 13:29:20 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:18:36 -0700
Message-Id: <20230929201837.849299-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230929201837.849299-1-jonathan.cavitt@intel.com>
References: <20230929201837.849299-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915: add one header file for GT
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, jonathan.cavitt@intel.com,
 umesh.nirlige.ramappa@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Fei Yang <fei.yang@intel.com>

Add a new header file for GT related Macros.
Move I915_MAX_GT to this new header file because it doesn't
belong to the i915 level.

Suggested-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Fei Yang <fei.yang@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index def7dd0eb6f19..d697fcd7bad77 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -23,6 +23,7 @@
 #include "i915_perf_types.h"
 #include "intel_engine_types.h"
 #include "intel_gt_buffer_pool_types.h"
+#include "intel_gt_defines.h"
 #include "intel_hwconfig.h"
 #include "intel_llc_types.h"
 #include "intel_reset_types.h"
-- 
2.25.1

