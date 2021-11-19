Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DA045705E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 15:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE0F6E0CB;
	Fri, 19 Nov 2021 14:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484616E270
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 14:11:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="320632706"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="320632706"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 06:11:23 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="673223688"
Received: from sgconnee-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.83])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 06:11:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Nov 2021 16:11:08 +0200
Message-Id: <20211119141109.644548-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/trace: clean up boilerplate
 organization
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
Cc: jani.nikula@intel.com, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the style that seems to be prevalent in kernel for undef and
define of TRACE_SYSTEM, TRACE_INCLUDE_PATH, and TRACE_INCLUDE_FILE.

There should be no changes to tracepoints.

v2: Keep TRACE_INCLUDE_PATH relative to define_trace.h (Chris)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_trace.h | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
index 6b8fb6ffe8da..fa00c7a461d6 100644
--- a/drivers/gpu/drm/i915/i915_trace.h
+++ b/drivers/gpu/drm/i915/i915_trace.h
@@ -1,4 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM i915
+
 #if !defined(_I915_TRACE_H_) || defined(TRACE_HEADER_MULTI_READ)
 #define _I915_TRACE_H_
 
@@ -15,10 +19,6 @@
 #include "i915_drv.h"
 #include "i915_irq.h"
 
-#undef TRACE_SYSTEM
-#define TRACE_SYSTEM i915
-#define TRACE_INCLUDE_FILE i915_trace
-
 /* watermark/fifo updates */
 
 TRACE_EVENT(intel_pipe_enable,
@@ -1331,5 +1331,7 @@ DEFINE_EVENT(i915_context, i915_context_free,
 
 /* This part must be outside protection */
 #undef TRACE_INCLUDE_PATH
+#undef TRACE_INCLUDE_FILE
 #define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915
+#define TRACE_INCLUDE_FILE i915_trace
 #include <trace/define_trace.h>
-- 
2.30.2

