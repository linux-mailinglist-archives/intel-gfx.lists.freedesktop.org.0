Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A371897F103
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 21:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC7910E475;
	Mon, 23 Sep 2024 19:03:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bpcynhzR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A00A10E47B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 19:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727118220; x=1758654220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uJzOLSKbtcqdpd+ahyJ4cAIzcdycdt9DIqQQUEY2mTc=;
 b=bpcynhzR4W3uvxJqgSkDyU7lGH4r5U7IWw308ZYiT608G96nKCuEd/Ot
 mP5ougDCeOUovK270xrAvw/lJoZFJSG4cy0fNcbcjcPAKfvTyYp9+dVJZ
 OmeKqtGdiELUlOlyPMK7EjWjdmDYVs3LAP4go2CUaJ5nVDVGdYRGf2/ev
 pwmYvk84m8lEU+y28HGJOYgHm6/X3GQT9W6B0uUyNzz9MzY3a+7nMXoyu
 YumwbOqpc1CDQ48yzAM/pJFSt3EjS+kUtlAA3mBSgH5+5rZ/ov6rWFjMg
 GrxJ9IOO2l1A2Yr6YoC+yTH753+uV9tocmicUjGaoGbq74KAD9+7O08cR w==;
X-CSE-ConnectionGUID: OHm474sZQQ+muSxoUsnTWQ==
X-CSE-MsgGUID: WjaeUtd8RgS7pP308TUgnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="43601318"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="43601318"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:03:38 -0700
X-CSE-ConnectionGUID: hUf8t6SOQrKSwwVNn8Vh6A==
X-CSE-MsgGUID: wXOdvvKlTUSW3c3YKJzitQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71997374"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.110.180])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:03:38 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 2/5] drm/i915/display: Zero-initialize frame/scanline
 counts in tracepoints
Date: Mon, 23 Sep 2024 16:02:51 -0300
Message-ID: <20240923190324.83013-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240923190324.83013-1-gustavo.sousa@intel.com>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In an upcoming change, we will also add support for logging
frame/scanline counts for pipe D in relevant tracepoints.

In [1], Matt mentioned the possibility of having garbage in those counts
for pipe D on a platform containing only 3 pipes. Indeed, it has been
verified that the counts for the extra pipe would not be
zero-initialized by the tracing system.

Since it is also possible that the same would happen for a fused-off
pipe, let's go ahead and add the logic to zero-initialize the arrays
now.

[1] https://lore.kernel.org/all/20240918224927.GU5091@mdroper-desk1.amr.corp.intel.com/

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_trace.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index e70c015a09a1..84526f8df75b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -9,6 +9,7 @@
 #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
 #define __INTEL_DISPLAY_TRACE_H__
 
+#include <linux/string.h>
 #include <linux/string_helpers.h>
 #include <linux/types.h>
 #include <linux/tracepoint.h>
@@ -36,6 +37,10 @@ TRACE_EVENT(intel_pipe_enable,
 			   struct intel_display *display = to_intel_display(crtc);
 			   struct intel_crtc *it__;
 			   __assign_str(dev);
+			   memset(__entry->frame, 0,
+				  sizeof(__entry->frame[0]) * I915_MAX_PIPES);
+			   memset(__entry->scanline, 0,
+				  sizeof(__entry->scanline[0]) * I915_MAX_PIPES);
 			   for_each_intel_crtc(display->drm, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
@@ -65,6 +70,10 @@ TRACE_EVENT(intel_pipe_disable,
 			   struct intel_display *display = to_intel_display(crtc);
 			   struct intel_crtc *it__;
 			   __assign_str(dev);
+			   memset(__entry->frame, 0,
+				  sizeof(__entry->frame[0]) * I915_MAX_PIPES);
+			   memset(__entry->scanline, 0,
+				  sizeof(__entry->scanline[0]) * I915_MAX_PIPES);
 			   for_each_intel_crtc(display->drm, it__) {
 				   __entry->frame[it__->pipe] = intel_crtc_get_vblank_counter(it__);
 				   __entry->scanline[it__->pipe] = intel_get_crtc_scanline(it__);
@@ -194,6 +203,10 @@ TRACE_EVENT(intel_memory_cxsr,
 	    TP_fast_assign(
 			   struct intel_crtc *crtc;
 			   __assign_str(dev);
+			   memset(__entry->frame, 0,
+				  sizeof(__entry->frame[0]) * I915_MAX_PIPES);
+			   memset(__entry->scanline, 0,
+				  sizeof(__entry->scanline[0]) * I915_MAX_PIPES);
 			   for_each_intel_crtc(display->drm, crtc) {
 				   __entry->frame[crtc->pipe] = intel_crtc_get_vblank_counter(crtc);
 				   __entry->scanline[crtc->pipe] = intel_get_crtc_scanline(crtc);
-- 
2.46.1

