Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CAE720C3E
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Jun 2023 01:18:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1B6710E0D9;
	Fri,  2 Jun 2023 23:18:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435B810E0DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 23:18:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685747881; x=1717283881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ysFzz1jH7xp2gTGy2530U3V7n0eWx8icbQ4ANQeo8Xc=;
 b=VsHDNVzYgZrpHWCr+1GkccAsFBZtSaaXplCHZj8Nj1K6mx0oX/0NwQoO
 OAUTWK5z4mRCTreSYuEGSHfkp4Qh18Rs5irJjgFsHjjkXWY+Yv8kufpUH
 35Kgb8HQSpyGT/KX+0zHBkfifJnHMIqERqz+wDY5rFmQRSnFl4PGWWGVH
 zRgIORgSdshT7ZdS9MBF5DXxwejbgsqhyMoa9NQTevq7vmyMNT7D9/52E
 ma1ank0WlsflkVCOYiMjNnBjOwHy4b5MjJyYUv5DbLU3lNm2FcqBRL0X8
 9bKCe3SAtpsynWTCh0q8LzPOujlUY7oL7lT/AHjxNXysyGB1m2oRkkGt6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="442370367"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="442370367"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 16:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="882229051"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="882229051"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.252.142.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 16:17:59 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 16:17:53 -0700
Message-Id: <20230602231754.1596433-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230602231754.1596433-1-matthew.s.atwood@intel.com>
References: <20230602231754.1596433-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Reduce I915_MAX_GT to 2
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
Cc: ashutosh.dixit@linux.intel.com, matthew.d.roper@intel.com,
 andy.shyti@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to Ashutosh there is no current or planned product in i915 for
I915_MAX_GT to be 4 anymore.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@linux.intel.com>
Cc: Andi Shyti <andy.shyti@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f1205ed3ba71..c3923f52ca56 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -314,7 +314,7 @@ struct drm_i915_private {
 	/*
 	 * i915->gt[0] == &i915->gt0
 	 */
-#define I915_MAX_GT 4
+#define I915_MAX_GT 2
 	struct intel_gt *gt[I915_MAX_GT];
 
 	struct kobject *sysfs_gt;
-- 
2.40.0

