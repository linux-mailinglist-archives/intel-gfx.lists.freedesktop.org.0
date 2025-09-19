Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1560B8B144
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8698610EA7C;
	Fri, 19 Sep 2025 19:30:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhwKXaCv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2EA310EA78;
 Fri, 19 Sep 2025 19:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310213; x=1789846213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tJ39bPPdEloQMDxLyTb7PVmvuDoXKWlVkEx5uzLFris=;
 b=bhwKXaCv/1RVB644knD8Wr/cJNYji5H6Dh0j+4fvdEbqWG7KEDGHephD
 7PhyXFEwNC+zjBAywZhZIaz8rAOS+s/0EzxF/SKj6L4a6EfFNehfhZywO
 kr3eoJpYdFHSqtmL6+1Hj9yV+KcgO782hP7onG5PCHgjUTv6AOVuEQ875
 sOMJlAg3yC4F+RdTq48nKZd85qGtog46r1KY6pkAgY/GjsAAPlPzrZ+oc
 FdxfaSoHWvP38ekT36ThlWE3Z0EzCOyFPj5nkYrr/WXBSYVnZ036xZ7XM
 IiOnMjHe6L/EU/jMhrqwworkiTibRE2OZfQSQcq8W+iUWoRxgzXfES1op Q==;
X-CSE-ConnectionGUID: a94SOqFUTPC4WWpEDkpMlw==
X-CSE-MsgGUID: 12jTDRSCQTiBQA9amcWLng==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240246"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240246"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:13 -0700
X-CSE-ConnectionGUID: FJ/cKn+KS0ybuIWCJho9oA==
X-CSE-MsgGUID: k/PFh73cTrOKPvMU0iOFFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="176722942"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:11 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 02/13] drm/i915: Apply the 16Gb DIMM w/a only for the
 platforms that need it
Date: Fri, 19 Sep 2025 22:29:49 +0300
Message-ID: <20250919193000.17665-3-ville.syrjala@linux.intel.com>
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

Currently the code assumes that every platform except dg2 need the
16Gb DIMM w/a, while in reality it's only needed by skl and icl (and
derivatives). Switch to a more specific platform check.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 83ec42646e82..2bf334fe63c9 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3174,11 +3174,19 @@ void skl_watermark_ipc_init(struct intel_display *display)
 	skl_watermark_ipc_update(display);
 }
 
+static bool need_16gb_dimm_wa(struct intel_display *display)
+{
+	const struct dram_info *dram_info = intel_dram_info(display->drm);
+
+	return (display->platform.skylake || display->platform.kabylake ||
+		display->platform.coffeelake || display->platform.cometlake ||
+		DISPLAY_VER(display) == 11) && dram_info->has_16gb_dimms;
+}
+
 static void
 adjust_wm_latency(struct intel_display *display,
 		  u16 wm[], int num_levels, int read_latency)
 {
-	const struct dram_info *dram_info = intel_dram_info(display->drm);
 	int i, level;
 
 	/*
@@ -3214,7 +3222,7 @@ adjust_wm_latency(struct intel_display *display,
 	 * any underrun. If not able to get DIMM info assume 16Gb+ DIMM
 	 * to avoid any underrun.
 	 */
-	if (!display->platform.dg2 && dram_info->has_16gb_dimms)
+	if (need_16gb_dimm_wa(display))
 		wm[0] += 1;
 }
 
-- 
2.49.1

