Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D03C1B7F92B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 15:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D330710E614;
	Wed, 17 Sep 2025 13:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ceKipsdZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EBBF10E614
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Sep 2025 13:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758117126; x=1789653126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7O5AzVUVCcp4Pk2W9Bnense6v0/2KJSBhO/FasjjJVA=;
 b=ceKipsdZH92qXbIVYlkea0NnVUCke/UNDz8wvwKvVFBVHg2xFkxwLPO+
 6dWdlZa+1hSPDtnTBhKCFjZv4C6o/3LpADX6Iuor8AjCa/C132E+G/l3+
 bZ8Aym7ZaZeffyLAwcFtKpOf07iMSFSpR1Gv+GtUBW82vZZzokBF8BwJa
 nYXdup+Putyx6u6H7WGBPXfkLQBiYZwvGTg8uWHhwhMRAgs+qvWJI5OMl
 jKXtjMLeLaF3S4mrOfdCxA6p7cW0RSMBF7pwqJToW6uYHBVr/tojdAlwb
 9VPve/kbJs1TdMbP0rSwW5q1Z33i/pU2Hv70L0DKU6uZAUD1N77Q2rZt+ w==;
X-CSE-ConnectionGUID: l18P1wviQWWJbGb32vEiPg==
X-CSE-MsgGUID: k9APxHLfSkqm5ffddb3DVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="83019828"
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="83019828"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 06:52:06 -0700
X-CSE-ConnectionGUID: cZDoBW6kTdWpEfWzH2Lflw==
X-CSE-MsgGUID: nTpPEDW9R+2HZiahD/9cAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="174850587"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 06:52:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915: add note on VLV/CHV hpll_freq and czclk_freq caching
Date: Wed, 17 Sep 2025 16:52:00 +0300
Message-ID: <20250917135200.1932903-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
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

The caching at the initial read is a bit fragile in case, say, a further
refactoring starts reading the frequencies at a time where it's not
possible. Add a note about it.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_clock.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/vlv_clock.c b/drivers/gpu/drm/i915/display/vlv_clock.c
index 2c55083d8fdb..42c2837b32c1 100644
--- a/drivers/gpu/drm/i915/display/vlv_clock.c
+++ b/drivers/gpu/drm/i915/display/vlv_clock.c
@@ -8,6 +8,13 @@
 #include "vlv_clock.h"
 #include "vlv_sideband.h"
 
+/*
+ * FIXME: The caching of hpll_freq and czclk_freq relies on the first calls
+ * occurring at a time when they can actually be read. This appears to be the
+ * case, but is somewhat fragile. Make the initialization explicit at a point
+ * where they can be reliably read.
+ */
+
 /* returns HPLL frequency in kHz */
 int vlv_clock_get_hpll_vco(struct drm_device *drm)
 {
-- 
2.47.3

