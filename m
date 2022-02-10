Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE27B4B11FE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 16:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20BC510E8A4;
	Thu, 10 Feb 2022 15:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4812010E89C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 15:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644508017; x=1676044017;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f32c8b7not86vyhDhZIj3O11YL+RD7lDMVOJiyXXDt0=;
 b=X487C+8vxw2WRvDtgnWzdsjqYj78/CnQIoi+LCEiKNUjhltPZSy02JHB
 1s3d0JtzIMF6byueMQ6zuLK37gC1CDP0Jkb6hYz6Mnh8okEPrgE5hIJd+
 knWdYrxgoGxLfhFFZwVoIWH2ca9u9cX0w0M0IAz3xlOvZRN4W4BE7x8DD
 +ow3GGXibjrNTW2g6K6SbpH5L2jMtzw5jMdbQclHYZ7nHxB9koJAAhLJI
 uTZ94zgalRvtj3ZGpRkaQDNALyQB+OYZYzr7bv5gDQq66Moasxmb8TWMP
 vZb+f52E0MOP3vU/+i4pZMtnFEMpajNJKpf5eR4BnFSCPQHd2qLN2qpzR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="236920850"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="236920850"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="629728158"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 07:46:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 17:45:49 +0200
Message-Id: <44eade17f7ba1480d67c584466eeea3553f31506.1644507885.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644507885.git.jani.nikula@intel.com>
References: <cover.1644507885.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/14] drm/i915: include shmem_fs.h only
 where needed
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
Cc: jani.nikula@intel.com, Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't include shmem_fs.h in i915_drv.h, reducing the build dependencies.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c   | 2 ++
 drivers/gpu/drm/i915/i915_drv.h           | 1 -
 3 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 333a76b60112..4efa821f3cb1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/pagevec.h>
+#include <linux/shmem_fs.h>
 #include <linux/swap.h>
 
 #include <drm/drm_cache.h>
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
index 1eb2fd81c5b6..8419096d4056 100644
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
index 75784873a9a8..233e16916a78 100644
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

