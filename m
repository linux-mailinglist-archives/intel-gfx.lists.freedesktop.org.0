Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0CD727EA5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 13:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C4810E05D;
	Thu,  8 Jun 2023 11:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73FF910E05D
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 11:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686223360; x=1717759360;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x3ql/LfvuMR82U6dNQAaiOf5lGQYmko057uA2RcFpac=;
 b=mn6AvnBfHDMVMBeDN1mZ26sGyykZTuw38cUlUbA+Q0vHN/eCygxnCxFu
 iWuE1T7gN4acuBwpkLTQKNKTLBy6Vzkh6RTVWM6ywnLUdmp2qYNiuU+QF
 Ri+oRG0//cPCVymd5iKCuXGepZ1/AkFtb3gCqruCQXNYbaHdyaBkuFObX
 DBIV5qaatfy4v3TzXNYoiDrd89PnuzhINz1Rpf2z0keNMH/7JvHiLXHI/
 IAYx+jIrfsjoG5rixt3eEjDZKiE+WnVQStghq5o0UwFFaSeTXmDc3Yh4F
 r1eUO7yGhv0PQNWRfl/x/PSnl0HThzCw6aC+qEQjfZ26rKP7kFfvrXrLG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="423131018"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="423131018"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="956666983"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="956666983"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 04:22:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 14:22:31 +0300
Message-Id: <20230608112233.771453-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: copy-paste the extra warnings
 from scripts/Makefile.extrawarn
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We enable a lot more compiler warnings than the kernel defaults. A lot
of them are comparable with the W=1 warnings (and warning disables!) in
scripts/Makefile.extrawarn. Copy-paste them with
s/KBUILD_CFLAGS/subdir-ccflags-y/ to make it easier to compare. Some of
them overlap with the -Wall we also add, but it doesn't really matter.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 789dce9e2608..690308dc7047 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -12,15 +12,30 @@
 # Note the danger in using -Wall -Wextra is that when CI updates gcc we
 # will most likely get a sudden build breakage... Hopefully we will fix
 # new warnings before CI updates!
-subdir-ccflags-y := -Wall -Wextra
-subdir-ccflags-y += -Wno-format-security
-subdir-ccflags-y += -Wno-unused-parameter
-subdir-ccflags-y += -Wno-type-limits
+subdir-ccflags-y := -Wall
+
+# begin copy-paste W=1 warnings from scripts/Makefile.extrawarn
+subdir-ccflags-y += -Wextra -Wunused -Wno-unused-parameter
+subdir-ccflags-y += -Wmissing-declarations
+subdir-ccflags-y += -Wmissing-format-attribute
+subdir-ccflags-y += -Wmissing-prototypes
+subdir-ccflags-y += -Wold-style-definition
+subdir-ccflags-y += -Wmissing-include-dirs
+subdir-ccflags-y += $(call cc-option, -Wunused-but-set-variable)
+subdir-ccflags-y += $(call cc-option, -Wunused-const-variable)
+subdir-ccflags-y += $(call cc-option, -Wpacked-not-aligned)
+subdir-ccflags-y += $(call cc-option, -Wstringop-truncation)
+# The following turn off the warnings enabled by -Wextra
 subdir-ccflags-y += -Wno-missing-field-initializers
 subdir-ccflags-y += -Wno-sign-compare
+subdir-ccflags-y += -Wno-type-limits
 subdir-ccflags-y += -Wno-shift-negative-value
-subdir-ccflags-y += $(call cc-option, -Wunused-but-set-variable)
+# end copy-paste
+
+# The following turn off the warnings enabled by -Wall
+subdir-ccflags-y += -Wno-format-security
 subdir-ccflags-y += $(call cc-disable-warning, frame-address)
+
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
 subdir-ccflags-y += -I$(srctree)/$(src)
-- 
2.39.2

