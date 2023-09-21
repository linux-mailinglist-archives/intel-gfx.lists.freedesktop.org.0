Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACE477A95B1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 18:25:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BCB310E051;
	Thu, 21 Sep 2023 16:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0063610E051
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 16:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695313508; x=1726849508;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jXZnnY5s5ajleSLjdsnJ8fLT3qBOscA5JKjIyyqCEGw=;
 b=ZwR6NbHVVPnugCi3HtgAshkF/NmkCkviVavrkEzjOe91Sy5CHLL5iu/r
 5eZ6TB/CxsNr+YGKTbMnIn/EBueJmxNjI41SXOGCvtj5V84uWj2PyH1yp
 EuABlO3hm9eSPNz4lfS2EqtR9Rd+O8HxBNrS0+LoT8mIUNd189HVrmCma
 HNV9vSukvAlWJqWU5/yu9GH+63+LFgfEbVmuU4/JGkE8Ie+l7lS5PEUL6
 pDDrd9AFkH2UWZKatrLUEPlJPAzIsgY+hx2/y0SJl2VQmnBejYyXb0yiO
 piWstfPGo7Uhbv61mxrHwmaQblSrW3dNMrN+EzJvd3qpy/gp0Fq0Ix6iL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="444685101"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="444685101"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 09:25:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="862540524"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="862540524"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 09:25:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Sep 2023 19:24:56 +0300
Message-Id: <20230921162456.3889375-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: remove a static inline that
 requires including i915_drv.h
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
Cc: jani.nikula@intel.com, Matt Roper <matthew.d.roper@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's actively harmful to add static inlines in headers that require you
to pull in more headers. Remove the include added in commit f1530f912ed8
("drm/i915/gt: Apply workaround 22016122933 correctly"). We see that
there's already an implicit dependency on the i915_drv.h that we need to
address too.

Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Fei Yang <fei.yang@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

As a reminder, a significant portion of the headers in the driver cause
a rebuild of the *entire* driver when changed. We need to reduce the
header interdependencies, not add more.
---
 drivers/gpu/drm/i915/gt/intel_gt.c     | 5 +++++
 drivers/gpu/drm/i915/gt/intel_gt.h     | 6 +-----
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 1 +
 3 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 449f0b7fc843..93062c35e072 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1019,3 +1019,8 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
 	else
 		return I915_MAP_WC;
 }
+
+bool intel_gt_needs_wa_22016122933(struct intel_gt *gt)
+{
+	return MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0) && gt->type == GT_MEDIA;
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 239848bcb2a4..2cac499d5aa3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -6,7 +6,6 @@
 #ifndef __INTEL_GT__
 #define __INTEL_GT__
 
-#include "i915_drv.h"
 #include "intel_engine_types.h"
 #include "intel_gt_types.h"
 #include "intel_reset.h"
@@ -88,10 +87,7 @@ static inline bool gt_is_root(struct intel_gt *gt)
 	return !gt->info.id;
 }
 
-static inline bool intel_gt_needs_wa_22016122933(struct intel_gt *gt)
-{
-	return MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0) && gt->type == GT_MEDIA;
-}
+bool intel_gt_needs_wa_22016122933(struct intel_gt *gt);
 
 static inline struct intel_gt *uc_to_gt(struct intel_uc *uc)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index 11d181b1cc7a..bf4a933de03a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -3,6 +3,7 @@
  * Copyright © 2022 Intel Corporation
  */
 
+#include "i915_drv.h"
 #include "intel_gt.h"
 #include "intel_gt_mcr.h"
 #include "intel_gt_print.h"
-- 
2.39.2

