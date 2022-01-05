Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B434859AB
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027C010E427;
	Wed,  5 Jan 2022 19:58:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD14D10E414
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412695; x=1672948695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XnbpYWC1t2MUe68zPghacKIssjKYZJ0XKQzy2JVqTkE=;
 b=dCMNdFIUuZ92imBJeI5Wyv0cGFA3XRVBaJk6HqjvUM2t2htmJRIvSG8f
 ENTw0d5MIu7qFcRpMa1YTpIcK/hbgr1DufoQXVjMja0Lx091zMpVXanx+
 vLO4nCnbWh1TuhGttQzRY0cJBDzxP5YQr0ThRJn5B/YQwzqnMDgf/n+y0
 KaxlIkK0OVMUk3YRFtSB2sCscDKSgMoKeo5WXD4leK+HnR8mWJfFCrnrN
 WV4paAzmnYftQlKpmJFVjWobhuhLnSsNEhssd08oa5ITxdH9b+xbvf4xN
 wtlh1X7BypUqvh9JnyQ9TXrYd/+gKh/UF+eXnsE4HEosxv4IAGbFhuyCo Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="223210712"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="223210712"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:15 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="556658847"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:33 +0200
Message-Id: <ec7c02b8f6cae360b8c086121a4b48c782202375.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/21] drm/i915: include shmem_fs.h only where
 needed
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

Don't include shmem_fs.h in i915_drv.h, reducing the build dependencies.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c   | 2 ++
 drivers/gpu/drm/i915/i915_drv.h           | 1 -
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 3414122245f0..60f962f0c041 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/pagevec.h>
+#include <linux/shmem_fs.h>
 #include <linux/swap.h>
 
 #include <drm/drm_cache.h>
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 923cc7ad8d70..37a28784992d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
@@ -3,6 +3,8 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <linux/shmem_fs.h>
+
 #include <drm/ttm/ttm_bo_driver.h>
 #include <drm/ttm/ttm_placement.h>
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f287abb94df2..30533862c10c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -46,7 +46,6 @@
 #include <linux/perf_event.h>
 #include <linux/pm_qos.h>
 #include <linux/dma-resv.h>
-#include <linux/shmem_fs.h>
 #include <linux/stackdepot.h>
 
 #include <drm/drm_gem.h>
-- 
2.30.2

