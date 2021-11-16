Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE92453360
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 14:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DA36E7DA;
	Tue, 16 Nov 2021 13:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82176E7DA
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 13:58:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="297117304"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="297117304"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 05:58:19 -0800
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="506440792"
Received: from mramya-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.219.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 05:58:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Nov 2021 15:58:13 +0200
Message-Id: <20211116135813.19806-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pxp: fix includes for headers in
 include/drm
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

Use <> not "" for including headers from include/drm.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 3 ++-
 drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 6 ++++--
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
index d02732f04757..598840b73dfa 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
@@ -3,7 +3,8 @@
  * Copyright(c) 2020, Intel Corporation. All rights reserved.
  */
 
-#include "drm/i915_drm.h"
+#include <drm/i915_drm.h>
+
 #include "i915_drv.h"
 
 #include "intel_pxp.h"
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
index 49508f31dcb7..5d169624ad60 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
@@ -4,8 +4,10 @@
  */
 
 #include <linux/component.h>
-#include "drm/i915_pxp_tee_interface.h"
-#include "drm/i915_component.h"
+
+#include <drm/i915_pxp_tee_interface.h>
+#include <drm/i915_component.h>
+
 #include "i915_drv.h"
 #include "intel_pxp.h"
 #include "intel_pxp_session.h"
-- 
2.30.2

