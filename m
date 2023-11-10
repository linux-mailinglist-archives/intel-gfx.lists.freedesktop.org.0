Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 054507E7BF6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 12:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4920010E994;
	Fri, 10 Nov 2023 11:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B61A10E994
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 11:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699616899; x=1731152899;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5hRMv775615QiHCQQiK+y+7+OdsejWbOUYS5fXEQ0ds=;
 b=jWmZnQKWcTQR4EI6xq/rdOgg6XPdjhxF9s1l6oCYX5ymT3P7U4DsHAHr
 9CZ1q2zIPGCDRGlfJ+CVP7WDVB0amKzeI+k78qhaSwwJbWg1LCAUDAt3P
 m9iPg3i2n7gLf3kAdJZsAwXntvcbZJW7SRiAdV5mjl6p1r6OvwpwovgU2
 MybovvnQG9eoxqDGrXPMImXNP3iw8/e9xyfJRUEaPWFtaF+MvttImq46p
 Ob1vwWA4CaR/F6HrSHYuKtXTpoMWgMR1TR8bwpyldKy+QRkZsS9WaU26q
 yeKWSQtFkpBE264ywahY8wvTztbuNTCN1vKAD2mV5fiwFWVInCsfJ7kg3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="387336150"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="387336150"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 03:48:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="767326434"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="767326434"
Received: from ruehl-mobl.ger.corp.intel.com (HELO localhost) ([10.252.53.12])
 by fmsmga007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2023 03:48:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Nov 2023 13:48:07 +0200
Message-Id: <20231110114807.3455739-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110114807.3455739-1-jani.nikula@intel.com>
References: <20231110114807.3455739-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: update in-source bug filing URLs
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The bug filing documentation has been moved from the gitlab wiki to
gitlab pages at https://drm.pages.freedesktop.org/intel-docs/.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Kconfig          | 2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
 drivers/gpu/drm/i915/i915_utils.h     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index ce397a8797f7..b5d6e3352071 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -94,7 +94,7 @@ config DRM_I915_CAPTURE_ERROR
 	  This option enables capturing the GPU state when a hang is detected.
 	  This information is vital for triaging hangs and assists in debugging.
 	  Please report any hang for triaging according to:
-	    https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs
+	    https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
 
 	  If in doubt, say "Y".
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 00559a75b798..d04660b60046 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -2178,7 +2178,7 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
 	    ktime_get_real_seconds() - DRIVER_TIMESTAMP < DAY_AS_SECONDS(180)) {
 		pr_info("GPU hangs can indicate a bug anywhere in the entire gfx stack, including userspace.\n");
 		pr_info("Please file a _new_ bug report at https://gitlab.freedesktop.org/drm/intel/issues/new.\n");
-		pr_info("Please see https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs for details.\n");
+		pr_info("Please see https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html for details.\n");
 		pr_info("drm/i915 developers can then reassign to the right component if it's not a kernel issue.\n");
 		pr_info("The GPU crash dump is required to analyze GPU hangs, so please always attach it.\n");
 		pr_info("GPU crash dump saved to /sys/class/drm/card%d/error\n",
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index c61066498bf2..f98577967b7f 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -40,7 +40,7 @@
 struct drm_i915_private;
 struct timer_list;
 
-#define FDO_BUG_URL "https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs"
+#define FDO_BUG_URL "https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html"
 
 #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
 			     __stringify(x), (long)(x))
-- 
2.39.2

