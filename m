Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD94B8B153
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6610610EA82;
	Fri, 19 Sep 2025 19:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOonJLCY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E678C10EA82;
 Fri, 19 Sep 2025 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310234; x=1789846234;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Hp3pohhviUh99LsivDcJZroW2i4lWxBafo+9E36E2yg=;
 b=TOonJLCYFq8Tl5yRRp61f900vVoPIhPbEhfUh+C43at5IW5P0aTvulcC
 SfabFl0pyMBKIHr4fjxC10I4QmqsJkYe8jPeq4ZO0NE9TOFajJ7vyFhyg
 LCDLXMieDStVmM4vs70+kg1iSlQam2NOBZ7J5kPcsKClY794COK59KhzT
 dG3dKORBkp5YjXVNSQuw5I9umKG3J68BLlRT+9LXyFNBe2Kp6evaAg0R9
 W8Fg7qmd0t3WlpuR4Idx5lWgORkirC/TN3zD/Ox35CgmhCS48oafSj8lW
 ux/iCAMkg8SsPijgEkbzBW2VyBpXQN0QU6pms5J9c7RehQXD9YdvMCs5L Q==;
X-CSE-ConnectionGUID: 2wnwRybLRduAvUrjUsikdA==
X-CSE-MsgGUID: Hd17fxBfTq2vsfj4h5CWbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240308"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240308"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:34 -0700
X-CSE-ConnectionGUID: O1N2B8xeSNac2Ip/SxvgeA==
X-CSE-MsgGUID: oD7njKTUSWue7v6pP6Kl5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="176723096"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:32 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 07/13] drm/i915: Extract increase_wm_latency()
Date: Fri, 19 Sep 2025 22:29:54 +0300
Message-ID: <20250919193000.17665-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250919193000.17665-1-ville.syrjala@linux.intel.com>
References: <20250919193000.17665-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 28 ++++++++++++--------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1ac94cb4f27d..98ca592f6042 100644
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

