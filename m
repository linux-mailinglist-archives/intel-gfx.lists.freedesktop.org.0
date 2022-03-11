Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A694D5F1D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:06:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8029210E88F;
	Fri, 11 Mar 2022 10:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E8D10E88F
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 10:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646993214; x=1678529214;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hGdzBQspiIW+290EEsn33TDuZWp7ZpdyjMsUCgHyjG8=;
 b=NQgybvLuYpdc1Ij/P/CTmEhjMPaK+yI7n+SaJceMs7q0aoefXwNprWN5
 5q/PPWbtqXZBLLrUwUJ8wZ5m/13pXQstgnotkpHSLE1WBIp+ZVpbwXNSx
 oo6KVvT7vJO9tFpqyk1qYWAWwTkoDk60nesAa89jfIMJSJAU84EyiEZW6
 zrHkmBYZA5v65fTuvMlZSfy29tGev0mO2E5Kmq0lQ+/eZg7VfHNNa4ZUL
 BNKpWRVeeFmq+JjO1H2xLzy7Kt0aBcZm/rhn82V5perf31hoVW5V/opVj
 pPoZzs+LVSIlRWzXKTNrGHC8Dnh9IPeWrh11zCKgYJrVbrDTThh5HUwH2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="255493184"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="255493184"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:06:53 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="538949814"
Received: from cchitora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.187])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:06:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 12:06:39 +0200
Message-Id: <20220311100639.114685-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220311100639.114685-1-jani.nikula@intel.com>
References: <20220311100639.114685-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: include uapi/drm/i915_drm.h
 directly where needed
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 jani.nikula@intel.com, x86@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the uapi/drm/i915_drm.h include from drm/i915_drm.h, and stop
being a proxy for uapi/drm/i915_drm.h. Include uapi/drm/i915_drm.h and
drm/i915_drm.h only where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c     | 2 ++
 drivers/gpu/drm/i915/gem/i915_gem_region.c   | 2 ++
 drivers/gpu/drm/i915/intel_memory_region.c   | 2 ++
 drivers/gpu/drm/i915/intel_memory_region.h   | 2 +-
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 2 --
 include/drm/i915_drm.h                       | 2 +-
 6 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 444f8268b9c5..ede084f36ca9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <uapi/drm/i915_drm.h>
+
 #include "intel_memory_region.h"
 #include "gem/i915_gem_region.h"
 #include "gem/i915_gem_lmem.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
index c9b2e8b91053..f4fbae2f9dcc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <uapi/drm/i915_drm.h>
+
 #include "intel_memory_region.h"
 #include "i915_gem_region.h"
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index 1c841f68169a..ded78b83e0b5 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -5,6 +5,8 @@
 
 #include <linux/prandom.h>
 
+#include <uapi/drm/i915_drm.h>
+
 #include "intel_memory_region.h"
 #include "i915_drv.h"
 #include "i915_ttm_buddy_manager.h"
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 21dcbd620758..bbc35ec5c090 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -10,7 +10,7 @@
 #include <linux/mutex.h>
 #include <linux/io-mapping.h>
 #include <drm/drm_mm.h>
-#include <drm/i915_drm.h>
+#include <uapi/drm/i915_drm.h>
 
 struct drm_i915_private;
 struct drm_i915_gem_object;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index 598840b73dfa..92b00b4de240 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -3,8 +3,6 @@
  * Copyright(c) 2020, Intel Corporation. All rights reserved.
  */
 
-#include <drm/i915_drm.h>
-
 #include "i915_drv.h"
 
 #include "intel_pxp.h"
diff --git a/include/drm/i915_drm.h b/include/drm/i915_drm.h
index afbf3ef5643e..7adce327c1c2 100644
--- a/include/drm/i915_drm.h
+++ b/include/drm/i915_drm.h
@@ -26,7 +26,7 @@
 #ifndef _I915_DRM_H_
 #define _I915_DRM_H_
 
-#include <uapi/drm/i915_drm.h>
+#include <linux/types.h>
 
 /* For use by IPS driver */
 unsigned long i915_read_mch_val(void);
-- 
2.30.2

