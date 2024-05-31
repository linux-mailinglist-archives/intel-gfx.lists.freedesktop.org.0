Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A43B28D60D7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:41:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D484510E332;
	Fri, 31 May 2024 11:41:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FnBBiKCL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D08E10E332
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 11:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717155667; x=1748691667;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hZdFXhW/STzJ+oDJ0eMpMLCz4jHMG1CGSStBCKc2t18=;
 b=FnBBiKCLVtVWMALtVcPOxwfSN93DcRvjEzCIRmi8wSv2tOzHAmusWegk
 OnY4q/NIAezr8WWggTYRo8l0vyorRpD6VRPxRAu76T3oWvFd3lqbvVvRd
 RzXGWhlV1f+Uaac3TzYBBnhg2DL1yIOWIzAxG6PU18bYvZBA77STmxYU3
 oJmLPYeq+KSVQeSVUctJ8yXyKxXXc9GPbesQOgKTumX5hhB0VQ25Hn8Mq
 FIX9fIgOFvp9sCnvb1wJOOz88jNRp8WtVGq+4hTRwAT+ayKEvUuC5E9Zj
 zuTAWsYws3XB3TqqoW6aoCpPcWUxLopODTQsZLfJeERFJLkY0NB5gvs0F g==;
X-CSE-ConnectionGUID: iOZQYJSBS3qpCO/w5K4Ahg==
X-CSE-MsgGUID: mjY39TdyRhOUUjvoj7FOtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13863903"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13863903"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:41:07 -0700
X-CSE-ConnectionGUID: oqOeEftITcCSYaJZmhdyYA==
X-CSE-MsgGUID: 5ody+PClRE2WA1XoG6FWiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36132730"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 May 2024 04:41:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 May 2024 14:41:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/dsb: Polish the DSB ID enum
Date: Fri, 31 May 2024 14:40:58 +0300
Message-ID: <20240531114101.19994-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
References: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Namespace the DSB ID enum properly, and make the naming match
other such enums in general. Also make the names 0 based as
that's what Bspec uses for DSB (unlike eg. planes where it
uses 1 based indexing).

We'll throw out INVALID_DSB while at it since we have no use for
it at the moment.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 319fbebd7008..0e2bd9a2f9da 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -19,16 +19,16 @@
 
 #define CACHELINE_BYTES 64
 
-enum dsb_id {
-	INVALID_DSB = -1,
-	DSB1,
-	DSB2,
-	DSB3,
-	MAX_DSB_PER_PIPE
+enum intel_dsb_id {
+	INTEL_DSB_0,
+	INTEL_DSB_1,
+	INTEL_DSB_2,
+
+	I915_MAX_DSBS,
 };
 
 struct intel_dsb {
-	enum dsb_id id;
+	enum intel_dsb_id id;
 
 	struct intel_dsb_buffer dsb_buf;
 	struct intel_crtc *crtc;
@@ -121,9 +121,9 @@ static void intel_dsb_dump(struct intel_dsb *dsb)
 }
 
 static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
-			enum dsb_id id)
+			enum intel_dsb_id dsb_id)
 {
-	return intel_de_read_fw(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
+	return intel_de_read_fw(i915, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
 }
 
 static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
@@ -482,7 +482,7 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
-	dsb->id = DSB1;
+	dsb->id = INTEL_DSB_0;
 	dsb->crtc = crtc;
 	dsb->size = size / 4; /* in dwords */
 	dsb->free_pos = 0;
@@ -497,7 +497,7 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 out:
 	drm_info_once(&i915->drm,
 		      "[CRTC:%d:%s] DSB %d queue setup failed, will fallback to MMIO for display HW programming\n",
-		      crtc->base.base.id, crtc->base.name, DSB1);
+		      crtc->base.base.id, crtc->base.name, INTEL_DSB_0);
 
 	return NULL;
 }
-- 
2.44.1

