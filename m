Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F945F0218
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 03:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A5010E189;
	Fri, 30 Sep 2022 01:04:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F2510E189
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 01:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664499861; x=1696035861;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yQWclzq0RMeoCOMUFcgezTk2k3us/F9t3A6prBKM9c0=;
 b=U2gE0aqDsni3kKM0AZM4EGvby3qcYQ5Ihb3vzhbGFnJUZKOqFwSxLDq0
 ZD77ipkqMSVVfChQSYX8mui9sslHFDPtnjlL2/kcUFMSReXr03xh9IMsc
 lrOCeHckrjpU0k9fq5PTryv6ZV0WFNkAZc0GvCVpL6N0TwSMM0H3YKIqt
 AZPliU4CIO4ScqtNYIBXlnK9KwxYORMPrHRBYoJ81op88+0cSHhFdSxAd
 sis6sXrHhfqVAbloambuZCQc78qRnUSwxsMueiB3q5QiIe3ceUnvlqK//
 r5pJTI08zbtKGu2xW25SCrDo2YAJaba7swT2A0CF3XXtzuue3IBxSMEkT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="363913177"
X-IronPort-AV: E=Sophos;i="5.93,357,1654585200"; d="scan'208";a="363913177"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 18:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10485"; a="764948368"
X-IronPort-AV: E=Sophos;i="5.93,357,1654585200"; d="scan'208";a="764948368"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 29 Sep 2022 18:03:07 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Sep 2022 18:05:07 -0700
Message-Id: <20220930010507.108296-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
References: <20220930010507.108296-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Fix GuC error capture sizing
 estimation and reporting
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

During GuC error capture initialization, we estimate the amount of size
we need for the error-capture-region of the shared GuC-log-buffer.
This calculation was incorrect so fix that. Additionally, if the size
was insufficient, don't drm_warn or drm_notice, just drm_debug since
actually running out based on that estimation is a corner case. It
can only occur if all engine instances get reset all at once and i915
isn't able extract the capture data fast enough within G2H handler
worker.

Fixes d7c15d76a5547: drm/i915/guc: Check sizing of guc_capture output

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 31 ++++++++++++-------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 8f1165146013..cb62507c91ce 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -502,8 +502,9 @@ intel_guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 cl
 	if (!num_regs)
 		return -ENODATA;
 
-	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
-			   (num_regs * sizeof(struct guc_mmio_reg)));
+	if (size)
+		*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
+				   (num_regs * sizeof(struct guc_mmio_reg)));
 
 	return 0;
 }
@@ -606,7 +607,7 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
 	struct intel_gt *gt = guc_to_gt(guc);
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	int worst_min_size = 0, num_regs = 0;
+	int worst_min_size = 0;
 	size_t tmp = 0;
 
 	if (!guc->capture)
@@ -628,20 +629,18 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
 					 (3 * sizeof(struct guc_state_capture_header_t));
 
 		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp))
-			num_regs += tmp;
+			worst_min_size += tmp;
 
 		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
 						   engine->class, &tmp)) {
-			num_regs += tmp;
+			worst_min_size += tmp;
 		}
 		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
 						   engine->class, &tmp)) {
-			num_regs += tmp;
+			worst_min_size += tmp;
 		}
 	}
 
-	worst_min_size += (num_regs * sizeof(struct guc_mmio_reg));
-
 	return worst_min_size;
 }
 
@@ -658,15 +657,23 @@ static void check_guc_capture_size(struct intel_guc *guc)
 	int spare_size = min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER;
 	u32 buffer_size = intel_guc_log_section_size_capture(&guc->log);
 
+	/*
+	 * Don't drm_warn or drm_error here on "possible" insufficient size because we only run out
+	 * of space if all engines were to suffer resets all at once AND the driver is not able to
+	 * extract that data fast enough in the interrupt handler worker (moving them to the
+	 * larger pool of pre-allocated capture nodes. If GuC does run out of space, we will
+	 * print an error when processing the G2H event capture-notification (search for
+	 * "INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE").
+	 */
 	if (min_size < 0)
 		drm_warn(&i915->drm, "Failed to calculate GuC error state capture buffer minimum size: %d!\n",
 			 min_size);
 	else if (min_size > buffer_size)
-		drm_warn(&i915->drm, "GuC error state capture buffer is too small: %d < %d\n",
-			 buffer_size, min_size);
+		drm_dbg(&i915->drm, "GuC error state capture buffer maybe small: %d < %d\n",
+			buffer_size, min_size);
 	else if (spare_size > buffer_size)
-		drm_notice(&i915->drm, "GuC error state capture buffer maybe too small: %d < %d (min = %d)\n",
-			   buffer_size, spare_size, min_size);
+		drm_dbg(&i915->drm, "GuC error state capture buffer lacks spare size: %d < %d (min = %d)\n",
+			buffer_size, spare_size, min_size);
 }
 
 /*
-- 
2.34.1

