Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B34164CC511
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 19:25:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A0C10EE53;
	Thu,  3 Mar 2022 18:25:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A15B10EE41
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 18:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646331901; x=1677867901;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=31mQO0N2nN2vYxxTMetS+Kpv4n+pTPCGxz0g6ST8lwI=;
 b=iNu4m6RsxLgVabKtZ9xqtdSyMS8RKsCSaxD434/iBtGY5Thg/ciH5y1z
 Y9rY1OoKgedLz+Efof5urh51ILd0z9rAV3FOG4qpVGXdTgX3zo2McRGk5
 ymjSajBqYB2OZdAOZ8N0eAqIs+WteiiRkHWEhVvlSx6r486tlxnuHHSEj
 Wfotnhim0VHE9mzYXhUaXdiQk99s8LAGjmSl+0nhC5LqatUcby2aRtIqm
 JeXW2GlzDzE1lr72f+TNVdebj409v7PHSCchDIkE5ggC+JOE/i+psrIRb
 Da8cgACFX7whpuc5em/tAobG7oDVa9TQIHIpa89X4cytghc/zsJrW3veM g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10275"; a="234380334"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="234380334"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 10:20:37 -0800
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="511549893"
Received: from bjoseph-mobl.ger.corp.intel.com (HELO localhost) ([10.252.1.89])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 10:20:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Mar 2022 20:19:31 +0200
Message-Id: <20220303181931.1661767-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220303181931.1661767-1-jani.nikula@intel.com>
References: <20220303181931.1661767-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: include linux/highmem.h and
 linux/swap.h where needed
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

Include linux/highmem.h and linux/swap.h explicitly where needed so we
can drop the linux/i2c.h include from i915_drv.h where it pulled in the
dependencies implicitly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c        | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     | 3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_object.c         | 1 +
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c    | 1 +
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 1 +
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c       | 2 ++
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c           | 1 +
 drivers/gpu/drm/i915/i915_cmd_parser.c             | 2 ++
 drivers/gpu/drm/i915/i915_drv.h                    | 1 -
 drivers/gpu/drm/i915/i915_gpu_error.c              | 1 +
 10 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 9ae294eb7fb4..5db83aaf93ee 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -64,6 +64,7 @@
  *
  */
 
+#include <linux/highmem.h>
 #include <linux/log2.h>
 #include <linux/nospec.h>
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 89aa0557ade1..35e6140d1d5d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -4,8 +4,9 @@
  * Copyright © 2008,2010 Intel Corporation
  */
 
-#include <linux/intel-iommu.h>
 #include <linux/dma-resv.h>
+#include <linux/highmem.h>
+#include <linux/intel-iommu.h>
 #include <linux/sync_file.h>
 #include <linux/uaccess.h>
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 372bc220faeb..c1c3b510b9e2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -22,6 +22,7 @@
  *
  */
 
+#include <linux/highmem.h>
 #include <linux/sched/mm.h>
 
 #include <drm/drm_cache.h>
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index 1e049921969a..ef15967be51a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -6,6 +6,7 @@
 
 #include <linux/prime_numbers.h>
 #include <linux/string_helpers.h>
+#include <linux/swap.h>
 
 #include "i915_selftest.h"
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index a132e241c3ee..c4c2c91a2ee7 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -4,6 +4,7 @@
  * Copyright © 2016 Intel Corporation
  */
 
+#include <linux/highmem.h>
 #include <linux/prime_numbers.h>
 
 #include "gem/i915_gem_internal.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 76880fb8fc19..6ebda3d65086 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -3,6 +3,8 @@
  * Copyright © 2008-2015 Intel Corporation
  */
 
+#include <linux/highmem.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_scatterlist.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 55512db29183..bb864655c495 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -5,6 +5,7 @@
 
 #include <linux/bitfield.h>
 #include <linux/firmware.h>
+#include <linux/highmem.h>
 
 #include <drm/drm_cache.h>
 #include <drm/drm_print.h>
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 5f6e41636655..f93e6122f247 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <linux/highmem.h>
+
 #include <drm/drm_cache.h>
 
 #include "gt/intel_engine.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 869a2bda347b..fa79dfd85c9a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -34,7 +34,6 @@
 
 #include <asm/hypervisor.h>
 
-#include <linux/i2c.h>
 #include <linux/intel-iommu.h>
 #include <linux/pm_qos.h>
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 4967e79806f8..5e09a4e4b01a 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -28,6 +28,7 @@
  */
 
 #include <linux/ascii85.h>
+#include <linux/highmem.h>
 #include <linux/nmi.h>
 #include <linux/pagevec.h>
 #include <linux/scatterlist.h>
-- 
2.30.2

