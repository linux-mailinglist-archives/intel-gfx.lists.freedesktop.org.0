Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C669A0BF6
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 15:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1849910E70F;
	Wed, 16 Oct 2024 13:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dTmvgyjR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6EC10E70D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 13:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729086792; x=1760622792;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wcrL1ZI9fR5EZxs7f84lrkhIarzTMifhObqqkCHrU5o=;
 b=dTmvgyjRNC4H+9R4eVmsRVIQ7l3p0vIBqLEkYRIaKb4K/lAPvE3jnJjs
 62OXfBfHMUWLBrwoxtt2L9jnVtz8KCSwscN9JPG1Gfbmm0F6YHEFn2YOW
 WF5OsrPeXZDiVis3Lb0eWnRS7enTYe3vUNA0gYsnJooplRFZIILvYsTkV
 tymKWTfx4S5RD5C/NKjFP3BMQplYQBrhJ6244lDVkbDUAvgHhSmum1W7C
 9WTkWqWzpJQuBwriyRi8Axo2HXdWNJvOWeSte+J/Q5/n0fI/cqfIcxnL9
 yu4enRoW2Y8vALH2alpjezGsl1B34NOaLIykG/terUChp7Bz4OLrrAXU6 w==;
X-CSE-ConnectionGUID: x23NY8ZgQACUkBJVuC0iZA==
X-CSE-MsgGUID: HCl2FjS+Qei824S+EQ/4EA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46008625"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46008625"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:12 -0700
X-CSE-ConnectionGUID: 9Cdz5XfxQqC8FAauEweDQg==
X-CSE-MsgGUID: PrnPGPRmRDOEDtx6/yFnPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78124086"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.125.108.199])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 06:53:11 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 2/5] drm/i915/display: Zero-initialize frame/scanline
 counts in tracepoints
Date: Wed, 16 Oct 2024 10:52:28 -0300
Message-ID: <20241016135300.21428-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20241016135300.21428-1-gustavo.sousa@intel.com>
References: <20241016135300.21428-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

