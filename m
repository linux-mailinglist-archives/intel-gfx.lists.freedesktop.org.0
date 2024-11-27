Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E399DA85B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 14:18:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6683B10E03E;
	Wed, 27 Nov 2024 13:18:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ia0XyWqN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE38310E03E;
 Wed, 27 Nov 2024 13:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732713524; x=1764249524;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8NBpQHJen3D1FXzBl748Iu2FemRHjAXTXRghVENhrEM=;
 b=ia0XyWqNRYEch8r/py0Rymvs7kZ4fSQFu3Ok+RH8Wwq4I4OWzImSPiIN
 kJog/FwvrtrRFnPm98lo9rncsgLlkzxJM621Fqx3lUr7ZzxkOVMRVqY3W
 79KnkOiWa+rCQoZZznPilG0gPAUJIfs/hPRR6J/VJSRX0FwbIrw3bIdJI
 XSdVvZvZZh/grI2UyztSe4Lnms7tclEiTqMAoe/RTPCo3HjGy1eK3/jqk
 TCGM+sneNbMSozBiEJj1kNuSIVePL9gya5JJjHspDQoasGJmPlu5kfs1T
 gEwB4sD5Saq+ZvUexggLFKpuXi8EbyvfQK3RXPzLI8wk+Mu3qpjRPq0uz g==;
X-CSE-ConnectionGUID: cZN0PXx9TRKGxhbFZnedWw==
X-CSE-MsgGUID: aUp//mTjRYyGmCVJEO9JmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="35779023"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="35779023"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 05:18:43 -0800
X-CSE-ConnectionGUID: Djs6rZlsQnKn2QyA7WSBNw==
X-CSE-MsgGUID: oC4o6lZrQ0m6lV3SlIXMeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="96876476"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 05:18:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/dp: use seq buf for printing rates
Date: Wed, 27 Nov 2024 15:18:38 +0200
Message-Id: <20241127131838.3268735-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Hand rolling the buffer overflow handling with snprintf() is a bit
tedious. The seq_buf interface is made for this. Switch to it.

Use struct intel_display while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 36 ++++++++++---------------
 1 file changed, 14 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 053a9a4182e7..4471c8fcd478 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -28,6 +28,7 @@
 #include <linux/export.h>
 #include <linux/i2c.h>
 #include <linux/notifier.h>
+#include <linux/seq_buf.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
 #include <linux/string_helpers.h>
@@ -1506,41 +1507,32 @@ bool intel_dp_source_supports_tps4(struct drm_i915_private *i915)
 	return DISPLAY_VER(i915) >= 10;
 }
 
-static void snprintf_int_array(char *str, size_t len,
-			       const int *array, int nelem)
+static void seq_buf_print_array(struct seq_buf *s, const int *array, int nelem)
 {
 	int i;
 
-	str[0] = '\0';
-
-	for (i = 0; i < nelem; i++) {
-		int r = snprintf(str, len, "%s%d", i ? ", " : "", array[i]);
-		if (r >= len)
-			return;
-		str += r;
-		len -= r;
-	}
+	for (i = 0; i < nelem; i++)
+		seq_buf_printf(s, "%s%d", i ? ", " : "", array[i]);
 }
 
 static void intel_dp_print_rates(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	char str[128]; /* FIXME: too big for stack? */
+	struct intel_display *display = to_intel_display(intel_dp);
+	DECLARE_SEQ_BUF(s, 128); /* FIXME: too big for stack? */
 
 	if (!drm_debug_enabled(DRM_UT_KMS))
 		return;
 
-	snprintf_int_array(str, sizeof(str),
-			   intel_dp->source_rates, intel_dp->num_source_rates);
-	drm_dbg_kms(&i915->drm, "source rates: %s\n", str);
+	seq_buf_print_array(&s, intel_dp->source_rates, intel_dp->num_source_rates);
+	drm_dbg_kms(display->drm, "source rates: %s\n", seq_buf_str(&s));
 
-	snprintf_int_array(str, sizeof(str),
-			   intel_dp->sink_rates, intel_dp->num_sink_rates);
-	drm_dbg_kms(&i915->drm, "sink rates: %s\n", str);
+	seq_buf_clear(&s);
+	seq_buf_print_array(&s, intel_dp->sink_rates, intel_dp->num_sink_rates);
+	drm_dbg_kms(display->drm, "sink rates: %s\n", seq_buf_str(&s));
 
-	snprintf_int_array(str, sizeof(str),
-			   intel_dp->common_rates, intel_dp->num_common_rates);
-	drm_dbg_kms(&i915->drm, "common rates: %s\n", str);
+	seq_buf_clear(&s);
+	seq_buf_print_array(&s, intel_dp->common_rates, intel_dp->num_common_rates);
+	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
-- 
2.39.5

