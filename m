Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F6366DDC3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 13:39:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46FCA10E1A4;
	Tue, 17 Jan 2023 12:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394B810E1A4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 12:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673959142; x=1705495142;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cCOAWVijZ+qfAwPFljgnIJa9ALh9cYQp1iOT1zhe6Qs=;
 b=D7T/l2GPx2E9/2mh66ccuM11eFVcbGG2Bx+I6oDRCH8qOGDt6YZeHG8r
 UfOZR7budOaaKZ4gm8y2XKciRY4+3L5KpuiJfNj++mBmPxUsrpeYYvh96
 NpgVz9hMMsR0CCnmum3fCJt7SCdfgWFg2yyMlWbHetYi1/p3x356Cz6iX
 VEs059LdM7EL4vN23EEoVamPbos/CiNN1PuAiwiQU6G0uc2YFmjMuD72X
 Erpk8ZfQY8BnyvEGpgu8GWmQZvclMG0RtCrwRvDaORzMXzmtPvPJ3jRbL
 +QTA72XJ8qQ9m2JHbYfGZLPzXgkpBgamwPESpeZ9ncZgCwVNrpwwf8dE1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="387034930"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="387034930"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:39:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="767268423"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="767268423"
Received: from vishvend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.14.88])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:39:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 14:38:56 +0200
Message-Id: <20230117123856.2271720-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: remove a couple of superfluous
 i915_drm.h includes
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

Remove a couple of unnecessary includes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c | 1 -
 drivers/gpu/drm/i915/pxp/intel_pxp_huc.c  | 2 --
 2 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
index 4e2163a1aa46..0e3630103693 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
@@ -6,7 +6,6 @@
 #include "intel_ggtt_gmch.h"
 
 #include <drm/intel-gtt.h>
-#include <drm/i915_drm.h>
 
 #include <linux/agp_backend.h>
 
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
index 812c8bc7005e..64609d1b1c0f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
@@ -3,8 +3,6 @@
  * Copyright(c) 2021-2022, Intel Corporation. All rights reserved.
  */
 
-#include <drm/i915_drm.h>
-
 #include "i915_drv.h"
 
 #include "gem/i915_gem_region.h"
-- 
2.34.1

