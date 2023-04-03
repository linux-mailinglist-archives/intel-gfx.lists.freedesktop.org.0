Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC196D44FF
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 14:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B244A10E0CE;
	Mon,  3 Apr 2023 12:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C513510E0CE
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 12:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680526635; x=1712062635;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f85yK1kmNhUPQ26j7AC0wU7K0hYaaEZd8tzNvSqmhtU=;
 b=SamsqG0L7qjvz5dOp+iKM33J+Mw8vjttsioztoJP7EyRa+KSU/VUtEmC
 +/9TW0iSgiv46zyTKgSEtsSHzEs+K6n2iwRwyaPgByM3chg2nhNoXGN8M
 JkEuFglj/8v9cs5ASGn8LSp8xQJYrac6rLeIj+NpaK9BkiFsSlQDlmM4I
 Njdy+THmeXwH3TKa+VRoFhr/6FgcDR+L8ZZh3/OHwkf/UtOAvZG/YtdrQ
 0HXi8qOGrW8YX1c5C5k3c5i59yQ3YNNBjaReCuHS1Rsabeq+XsgrDuPDc
 SmBSr+AybTJSvGRk+dITGBL7N1m7fIcH8a5UjDxdipAouYrgMBtAYLFu0 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="428176859"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="428176859"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 05:57:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="750471718"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="750471718"
Received: from pstratma-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.54.30])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 05:57:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Apr 2023 15:57:10 +0300
Message-Id: <20230403125710.3617230-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: enable kernel-doc warnings for
 CONFIG_DRM_I915_WERROR=y
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
Cc: jani.nikula@intel.com, Masahiro Yamada <masahiroy@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Increase awareness of kernel-doc issues by enabling doc check locally
when CONFIG_DRM_I915_WERROR=y is enabled.

Once the warnings have been fixed, we can pass -Werror to kernel-doc
locally, and fail the build when there are kernel-doc warnings in i915.

v2: Don't check for KBUILD_EXTRA_WARN (Masahiro)

Cc: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 057ef22fa9c6..831e42175165 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -369,6 +369,13 @@ include $(src)/gvt/Makefile
 obj-$(CONFIG_DRM_I915) += i915.o
 obj-$(CONFIG_DRM_I915_GVT_KVMGT) += kvmgt.o
 
+# kernel-doc test
+#
+# Enable locally for CONFIG_DRM_I915_WERROR=y. See also scripts/Makefile.build
+ifdef CONFIG_DRM_I915_WERROR
+    cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
+endif
+
 # header test
 
 # exclude some broken headers from the test coverage
-- 
2.39.2

