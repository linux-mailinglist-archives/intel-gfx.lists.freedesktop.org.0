Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66800A4BE6E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Mar 2025 12:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08D3710E3D8;
	Mon,  3 Mar 2025 11:27:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QuJSLzHd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0B810E3D8;
 Mon,  3 Mar 2025 11:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741001267; x=1772537267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QuYgUhPP23PCFU3LFKQBVOEY/70m5EJ77Lp9zsZ8b1M=;
 b=QuJSLzHd0GiTZdOc3u9IijdBRgf6Kq24XLM2rD960fYNd2q9yiyE2uw8
 5fQ0LDARy4c0At72xWgLP7WMEYIr+esgFP0lKV8R7mHcpvEBpKGL5XBMI
 j55PIL9x2+3cgl9huuxxSyhxQ3jZJW34RO/3PSUh3k2EK4mqVOwUbjOmm
 wX5E3zwF+Y5lNlNYnpiqcw/1TmjhN+TwXMbVdLp05902AniQZsl7XsRdj
 MaLnX1vMAFQbTMKLNvM2BKiFuucWQkbPyQPqeZTlICt5V5/MQNzpuO5d4
 m6PhNK7MlL5Z3wUbM5Qa+wwGyjeRHZgCl7THjts8X5+kV6cThal33gywF g==;
X-CSE-ConnectionGUID: lf3b8pMBSQm+34imwx2IOQ==
X-CSE-MsgGUID: Kc2wqz87TQClMLBFT8wD4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11361"; a="42125225"
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="42125225"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:47 -0800
X-CSE-ConnectionGUID: dhKpUceGT7aAFpqSWiu1/w==
X-CSE-MsgGUID: 7nZOFm6lSeCsfbOMNZopPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,329,1732608000"; d="scan'208";a="118010283"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 03:27:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	matthew.d.roper@intel.com
Subject: [PATCH v3 6/8] drm/i915/reset: decide whether display reset is needed
 on gt side
Date: Mon,  3 Mar 2025 13:27:08 +0200
Message-Id: <c32a88f292f516ec702bd07001ac609b8acc2888.1741001054.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741001054.git.jani.nikula@intel.com>
References: <cover.1741001054.git.jani.nikula@intel.com>
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

Move the checks for whether display reset is needed at all to gt side of
things. This way, we can decide to skip the display calls altogether if
display reset is not required.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_reset.c |  5 -----
 drivers/gpu/drm/i915/gt/intel_reset.c              | 10 +++++++++-
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
index acc728c75328..c48d822db58e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_reset.c
+++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
@@ -38,11 +38,6 @@ bool intel_display_reset_prepare(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return false;
 
-	/* reset doesn't touch the display */
-	if (!intel_display_reset_test(display) &&
-	    !gpu_reset_clobbers_display(display))
-		return false;
-
 	if (atomic_read(&display->restore.pending_fb_pin)) {
 		drm_dbg_kms(display->drm,
 			    "Modeset potentially stuck, unbreaking through wedging\n");
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index f6c8e4d48b04..d4f2829477b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1419,9 +1419,17 @@ static void intel_gt_reset_global(struct intel_gt *gt,
 	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
 		struct drm_i915_private *i915 = gt->i915;
 		struct intel_display *display = &i915->display;
+		bool need_display_reset;
 		bool reset_display;
 
-		reset_display = intel_display_reset_prepare(display);
+		need_display_reset = intel_gt_gpu_reset_clobbers_display(gt) &&
+			intel_has_gpu_reset(gt);
+
+		reset_display = intel_display_reset_test(display) ||
+			need_display_reset;
+
+		if (reset_display)
+			reset_display = intel_display_reset_prepare(display);
 
 		intel_gt_reset(gt, engine_mask, reason);
 
-- 
2.39.5

