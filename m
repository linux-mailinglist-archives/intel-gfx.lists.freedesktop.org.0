Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C124C0024
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 18:27:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91D3C10EB8F;
	Tue, 22 Feb 2022 17:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C66F410EB83;
 Tue, 22 Feb 2022 17:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645550815; x=1677086815;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sks2BJHl0C0ctpubrG5E4x74GWSox+0xXW2sfV+74kA=;
 b=TNv8f970UBsWCjwz6Oqup43Egiv4Vtg3bWytxrI8veIbg7+nhrD0XV+s
 d9EANfrr7vfpxD1WpsOy8SrQw3BkpbuQVguANi94SW9tu304l37v2k0za
 wI/K9ozUjXbZKM7RGkbD1WTjr3wPv15dDsIlnG0OcTbWoCYl+6ltXsQE6
 jFYUiSanhLuA7IDA4nGFWjBbqEPanyZEZujQJdWnJullWAQzXVV78aw/W
 x3+SCcUkDY/6TYT6/z2Z07HB2lKTQh09PIBT7ZrDV+VNxcHUzebTqGlzj
 WQMWLdu/DsEwaXKkLEKbMh0mvU0f1p2lFrgtnJgRBdTm393uy7kaZOo47 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="231736919"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="231736919"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 09:26:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="683594324"
Received: from shreyasj-mobl1.amr.corp.intel.com (HELO
 mvcheng-desk2.intel.com) ([10.209.93.217])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 09:26:55 -0800
From: Michael Cheng <michael.cheng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 09:26:49 -0800
Message-Id: <20220222172649.331661-4-michael.cheng@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220222172649.331661-1-michael.cheng@intel.com>
References: <20220222172649.331661-1-michael.cheng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/: Add drm_cache.h
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add drm_cache.h to additionals files that calls wbinvd_on_all_cpus and
remove un-needed header files. This will prevent compile errors when
building for non-x86 platforms, as well as output a warning when
wbinvd_on_all_cpus is being called incorrectly.

Signed-off-by: Michael Cheng <michael.cheng@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c       | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 13917231ae81..edb0ebbb089c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -9,7 +9,7 @@
 #include <linux/dma-resv.h>
 #include <linux/module.h>
 
-#include <asm/smp.h>
+#include <drm/drm_cache.h>
 
 #include "gem/i915_gem_dmabuf.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 8850d4e0f9cc..dac62e3ba142 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -7,10 +7,10 @@
 #include <linux/stop_machine.h>
 
 #include <asm/set_memory.h>
-#include <asm/smp.h>
 
 #include <drm/i915_drm.h>
 #include <drm/intel-gtt.h>
+#include <drm/drm_cache.h>
 
 #include "gem/i915_gem_lmem.h"
 
-- 
2.25.1

