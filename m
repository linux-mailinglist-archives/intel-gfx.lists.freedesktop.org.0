Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D7F6D1DBD
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 12:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35D7810F13B;
	Fri, 31 Mar 2023 10:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A74E410F13B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680257745; x=1711793745;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yQAfnKZbGJWaNxgazEhigg5jXR6q5hb5r8PIo0cPtXw=;
 b=DOXN9RUojNQB3R/h9AUSexWS2/syB77gb3xx67lSR5lHtBkU+YT+Blv2
 qgyD2IVTvvRsvgxySTLnDybh3JP8NDp5lSXIrImH31vyz9rlGKVuBgNmP
 PxqKmYUKHxhWvtpj09wjycdTOH0UpUHD+BvX9K8IcChtEUtnJDHKOa5AC
 jmWMWsvzs8R+U2YJsP1rJGXQnGgV6rHrlk0iOeIYGAfi6GJFkBrwP0XS9
 JBXCo2wMg+HsLzJmhXFzY5rq4zOca/V3f0M0PKxPNq2RkoryPsFUf1xzj
 tMJ2JyhgtD/fZyyjdeCp0a69RZ27cfk1Q0Jb1WRptW7YTFIk7BabqVSpG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="343074930"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="343074930"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:15:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="808990765"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="808990765"
Received: from bachaue1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.110])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:15:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 13:15:39 +0300
Message-Id: <20230331101539.2893797-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: enable kernel-doc warnings for
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
when W= is *not* specified on the make command-line, but
CONFIG_DRM_I915_WERROR=y is enabled.

Once the warnings have been fixed, we can pass -Werror to kernel-doc
locally, and fail the build when there are kernel-doc warnings in i915.

Cc: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Masahiro, is this an awful hack to do in our local Makefile?

Note that we do try to avoid anyone outside of i915 developers enabling
CONFIG_DRM_I915_WERROR=y.

Any other and cleaner ways of achieving this, without using W= on the
entire kernel?

On that note, it would be nice to be able to enable W= on a subdir
alone.
---
 drivers/gpu/drm/i915/Makefile | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 057ef22fa9c6..13d7040801bf 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -369,6 +369,14 @@ include $(src)/gvt/Makefile
 obj-$(CONFIG_DRM_I915) += i915.o
 obj-$(CONFIG_DRM_I915_GVT_KVMGT) += kvmgt.o
 
+# kernel-doc test
+#
+# Enable locally for CONFIG_DRM_I915_WERROR=y if not already enabled.
+# See scripts/Makefile.build
+ifeq ($(KBUILD_EXTRA_WARN)$(CONFIG_DRM_I915_WERROR),y)
+    cmd_checkdoc = $(srctree)/scripts/kernel-doc -none $<
+endif
+
 # header test
 
 # exclude some broken headers from the test coverage
-- 
2.39.2

