Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E247B45B48
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:59:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DE610EBD9;
	Fri,  5 Sep 2025 14:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NmDUg1E2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D00410EBD8;
 Fri,  5 Sep 2025 14:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084342; x=1788620342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dI2axuwS7X4lFz8cVCVtAeVGZ+Vf3LpkHClQI3FYRu8=;
 b=NmDUg1E2YerDJoI3is+aN4COr4hZk5JeJxCK0FoLOFOnKfto6fSXtGk7
 hwtI6pBdt7x8YGTm2+7YJbM/nYSbCjCGbe97RkqhmSzGN2Mb8WT/yddVZ
 yvPqZg9i0msHfmZrwDVd3EKs/lTdEv8+qneq5KwuUON/vkpVTXTdmvB5Q
 dKEoRYJhInTQ0HoGkZUbw867KDo8zru1zDTyJfupFpfBSuUN4iCxeaZcI
 lLxVEgrTjfepr8cLDSY4VtfrS7Iy4yQJ/iat0PhqLSx6jAxudiaiPjvQ4
 f3zJZKxY6CeMo4hvH6D4OyS3DSPMcqGMataPvTiKnoUp8V/gGFoeb6BvX Q==;
X-CSE-ConnectionGUID: lD9Nf2JpRBuPlF5IwwwNiw==
X-CSE-MsgGUID: vrBYISDVTP+LCnQ9JHng+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="58469684"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="58469684"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:02 -0700
X-CSE-ConnectionGUID: ocKNP5/5TcelHjOvFNM7Kg==
X-CSE-MsgGUID: 2HxHUWqqQiqgKk7fb9y7LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172105343"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:01 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/13] drm/i915: Extract increase_wm_latency()
Date: Fri,  5 Sep 2025 17:58:26 +0300
Message-ID: <20250905145832.12097-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the "increase wm latencies by some amount" code into
a helper that can be reused.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 28 ++++++++++++--------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 8a98c3e52dc5..9eebb908beb8 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3183,6 +3183,21 @@ static void multiply_wm_latency(struct intel_display *display, int mult)
 		wm[level] *= mult;
 }
 
+static void increase_wm_latency(struct intel_display *display, int inc)
+{
+	u16 *wm = display->wm.skl_latency;
+	int level, num_levels = display->wm.num_levels;
+
+	wm[0] += inc;
+
+	for (level = 1; level < num_levels; level++) {
+		if (wm[level] == 0)
+			break;
+
+		wm[level] += inc;
+	}
+}
+
 static bool need_16gb_dimm_wa(struct intel_display *display)
 {
 	const struct dram_info *dram_info = intel_dram_info(display->drm);
@@ -3207,7 +3222,6 @@ adjust_wm_latency(struct intel_display *display)
 {
 	u16 *wm = display->wm.skl_latency;
 	int i, level, num_levels = display->wm.num_levels;
-	int read_latency = wm_read_latency(display);
 
 	if (display->platform.dg2)
 		multiply_wm_latency(display, 2);
@@ -3232,16 +3246,8 @@ adjust_wm_latency(struct intel_display *display)
 	 * to add proper adjustment to each valid level we retrieve
 	 * from the punit when level 0 response data is 0us.
 	 */
-	if (wm[0] == 0) {
-		wm[0] += read_latency;
-
-		for (level = 1; level < num_levels; level++) {
-			if (wm[level] == 0)
-				break;
-
-			wm[level] += read_latency;
-		}
-	}
+	if (wm[0] == 0)
+		increase_wm_latency(display, wm_read_latency(display));
 
 	/*
 	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
-- 
2.49.1

