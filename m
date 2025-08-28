Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB0BB39D17
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 14:22:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABD910E9A4;
	Thu, 28 Aug 2025 12:22:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l3CafUPR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39CDF10E9A7;
 Thu, 28 Aug 2025 12:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756383743; x=1787919743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6U+TRp5Sr1UKMfp0AdHjFFc1IguRA2Tv1k8pWxnO5qg=;
 b=l3CafUPRplmRFmBZ4RI8T9U2suxpFHyzbEJ7bBYmPHlx2w3bjrTfsENx
 qbT1h8PQqZLazIpMTsit3vX6DHMpceVd+ljAYjHDBbCZ29KY9bHfJRuOF
 9cRohBVdudFXbqsshy7We+9DjU5O21j/jrf/1MVmoYslIE0e8LWILXy5X
 exnp0VtMp4u1onhjYxTKbfQm+91tfyXyGM7IoPtVZcPiJt5wbv5UWc2xh
 AtDYRLsf5qgFedKXwkkvq+FHqohicSTFY3YhAzNWUo9d4CODAeNVUpW2/
 9lbKQp7pNaUCBBrA01yL/rIf2Exp1i74cPJv/wEZW6gfEx/nl1ASXOf6T Q==;
X-CSE-ConnectionGUID: 2eXNK6zsSga1wUJ+Qov0GQ==
X-CSE-MsgGUID: +6bRpS+MSw+NIfOrwpMY5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="84053278"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="84053278"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:23 -0700
X-CSE-ConnectionGUID: pzEA73XpThWsp/K2UT/0RQ==
X-CSE-MsgGUID: 0L/Tg/puSiqEfkwtdjst4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="170271272"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.10])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 05:22:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 16/20] drm/i915/dsb: use generic poll_timeout_us() instead of
 wait_for()
Date: Thu, 28 Aug 2025 15:20:58 +0300
Message-ID: <979eae02af1184b3756746ace61379dd1947a79b.1756383233.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1756383233.git.jani.nikula@intel.com>
References: <cover.1756383233.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 100 us sleep instead. The timeout remains at 1
ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 53d8ae3a70e9..dee44d45b668 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -4,10 +4,11 @@
  *
  */
 
+#include <linux/iopoll.h>
+
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_utils.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
@@ -871,8 +872,13 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	struct intel_crtc *crtc = dsb->crtc;
 	struct intel_display *display = to_intel_display(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
+	bool is_busy;
+	int ret;
 
-	if (wait_for(!is_dsb_busy(display, pipe, dsb->id), 1)) {
+	ret = poll_timeout_us(is_busy = is_dsb_busy(display, pipe, dsb->id),
+			      !is_busy,
+			      100, 1000, false);
+	if (ret) {
 		u32 offset = intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
 
 		intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
-- 
2.47.2

