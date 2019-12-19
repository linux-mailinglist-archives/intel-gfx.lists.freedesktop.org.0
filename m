Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 912CA12663D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 16:57:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89356E353;
	Thu, 19 Dec 2019 15:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5AAA6E353
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 15:57:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 07:57:11 -0800
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="218212873"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 07:57:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 17:56:52 +0200
Message-Id: <20191219155652.2666-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191219155652.2666-1-jani.nikula@intel.com>
References: <20191219155652.2666-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: reimplement header test feature
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Masahiro Yamada <yamada.masahiro@socionext.com>

I implemented a small build rule in drivers/gpu/drm/i915/Makefile
without relying on the special header-test-y syntax that was removed in
commit fcbb8461fd23 ("kbuild: remove header compile test").

I excluded some headers from the test coverage. I hope somebody
intrested can take a closer look at them.

Dummy subdir Makefiles can be removed altogether as single target build
use case is now covered by commit 394053f4a4b3 ("kbuild: make single
targets work more correctly").

v2 by Jani:
- add selftests/i915_perf_selftests.h to no-header-test
- add .gitignore for *.hdrtest

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/.gitignore       |  1 +
 drivers/gpu/drm/i915/Makefile         | 38 +++++++++++++++++++++------
 drivers/gpu/drm/i915/display/Makefile |  6 -----
 drivers/gpu/drm/i915/gem/Makefile     |  5 ----
 drivers/gpu/drm/i915/gt/Makefile      |  5 ----
 drivers/gpu/drm/i915/gt/uc/Makefile   |  5 ----
 drivers/gpu/drm/i915/oa/Makefile      |  7 -----
 7 files changed, 31 insertions(+), 36 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/.gitignore
 delete mode 100644 drivers/gpu/drm/i915/display/Makefile
 delete mode 100644 drivers/gpu/drm/i915/gem/Makefile
 delete mode 100644 drivers/gpu/drm/i915/gt/Makefile
 delete mode 100644 drivers/gpu/drm/i915/gt/uc/Makefile
 delete mode 100644 drivers/gpu/drm/i915/oa/Makefile

diff --git a/drivers/gpu/drm/i915/.gitignore b/drivers/gpu/drm/i915/.gitignore
new file mode 100644
index 000000000000..d9a77f3b59b2
--- /dev/null
+++ b/drivers/gpu/drm/i915/.gitignore
@@ -0,0 +1 @@
+*.hdrtest
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index e0fd10c0cfb8..4630cff208fd 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -31,9 +31,6 @@ CFLAGS_display/intel_fbdev.o = $(call cc-disable-warning, override-init)
 subdir-ccflags-y += \
 	$(call as-instr,movntdqa (%eax)$(comma)%xmm0,-DCONFIG_AS_MOVNTDQA)
 
-# Extra header tests
-header-test-pattern-$(CONFIG_DRM_I915_WERROR) := *.h
-
 subdir-ccflags-y += -I$(srctree)/$(src)
 
 # Please keep these build lists sorted!
@@ -73,7 +70,6 @@ i915-$(CONFIG_DEBUG_FS) += i915_debugfs.o display/intel_pipe_crc.o
 i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
 
 # "Graphics Technology" (aka we talk to the gpu)
-obj-y += gt/
 gt-y += \
 	gt/intel_breadcrumbs.o \
 	gt/intel_context.o \
@@ -108,7 +104,6 @@ gt-y += \
 i915-y += $(gt-y)
 
 # GEM (Graphics Execution Management) code
-obj-y += gem/
 gem-y += \
 	gem/i915_gem_busy.o \
 	gem/i915_gem_clflush.o \
@@ -154,7 +149,6 @@ i915-y += \
 	  intel_wopcm.o
 
 # general-purpose microcontroller (GuC) support
-obj-y += gt/uc/
 i915-y += gt/uc/intel_uc.o \
 	  gt/uc/intel_uc_fw.o \
 	  gt/uc/intel_guc.o \
@@ -167,7 +161,6 @@ i915-y += gt/uc/intel_uc.o \
 	  gt/uc/intel_huc_fw.o
 
 # modesetting core code
-obj-y += display/
 i915-y += \
 	display/intel_atomic.o \
 	display/intel_atomic_plane.o \
@@ -232,7 +225,6 @@ i915-y += \
 	display/vlv_dsi_pll.o
 
 # perf code
-obj-y += oa/
 i915-y += \
 	oa/i915_oa_hsw.o \
 	oa/i915_oa_bdw.o \
@@ -273,3 +265,33 @@ endif
 
 obj-$(CONFIG_DRM_I915) += i915.o
 obj-$(CONFIG_DRM_I915_GVT_KVMGT) += gvt/kvmgt.o
+
+# header test
+
+# exclude some broken headers from the test coverage
+no-header-test := \
+	display/intel_vbt_defs.h \
+	gem/selftests/huge_gem_object.h \
+	gem/selftests/mock_gem_object.h \
+	gvt/execlist.h \
+	gvt/fb_decoder.h \
+	gvt/gtt.h \
+	gvt/gvt.h \
+	gvt/interrupt.h \
+	gvt/mmio_context.h \
+	gvt/mpt.h \
+	gvt/scheduler.h \
+	selftests/i915_live_selftests.h \
+	selftests/i915_mock_selftests.h \
+	selftests/i915_perf_selftests.h \
+	selftests/igt_live_test.h
+
+extra-$(CONFIG_DRM_I915_WERROR) += \
+	$(patsubst %.h,%.hdrtest, $(filter-out $(no-header-test), \
+		$(shell cd $(srctree)/$(src) && find * -name '*.h')))
+
+quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
+      cmd_hdrtest = $(CC) $(c_flags) -S -o /dev/null -x c /dev/null -include $<; touch $@
+
+$(obj)/%.hdrtest: $(src)/%.h FORCE
+	$(call if_changed_dep,hdrtest)
diff --git a/drivers/gpu/drm/i915/display/Makefile b/drivers/gpu/drm/i915/display/Makefile
deleted file mode 100644
index 173c305d7866..000000000000
--- a/drivers/gpu/drm/i915/display/Makefile
+++ /dev/null
@@ -1,6 +0,0 @@
-# For building individual subdir files on the command line
-subdir-ccflags-y += -I$(srctree)/$(src)/..
-
-# Extra header tests
-header-test-pattern-$(CONFIG_DRM_I915_WERROR) := *.h
-header-test- := intel_vbt_defs.h
diff --git a/drivers/gpu/drm/i915/gem/Makefile b/drivers/gpu/drm/i915/gem/Makefile
deleted file mode 100644
index 7e73aa587967..000000000000
--- a/drivers/gpu/drm/i915/gem/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# For building individual subdir files on the command line
-subdir-ccflags-y += -I$(srctree)/$(src)/..
-
-# Extra header tests
-header-test-pattern-$(CONFIG_DRM_I915_WERROR) := *.h
diff --git a/drivers/gpu/drm/i915/gt/Makefile b/drivers/gpu/drm/i915/gt/Makefile
deleted file mode 100644
index 7e73aa587967..000000000000
--- a/drivers/gpu/drm/i915/gt/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# For building individual subdir files on the command line
-subdir-ccflags-y += -I$(srctree)/$(src)/..
-
-# Extra header tests
-header-test-pattern-$(CONFIG_DRM_I915_WERROR) := *.h
diff --git a/drivers/gpu/drm/i915/gt/uc/Makefile b/drivers/gpu/drm/i915/gt/uc/Makefile
deleted file mode 100644
index bec94d434cb6..000000000000
--- a/drivers/gpu/drm/i915/gt/uc/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# For building individual subdir files on the command line
-subdir-ccflags-y += -I$(srctree)/$(src)/../..
-
-# Extra header tests
-header-test-pattern-$(CONFIG_DRM_I915_WERROR) := *.h
diff --git a/drivers/gpu/drm/i915/oa/Makefile b/drivers/gpu/drm/i915/oa/Makefile
deleted file mode 100644
index df028e2b0d64..000000000000
--- a/drivers/gpu/drm/i915/oa/Makefile
+++ /dev/null
@@ -1,7 +0,0 @@
-# SPDX-License-Identifier: MIT
-
-# For building individual subdir files on the command line
-subdir-ccflags-y += -I$(srctree)/$(src)/..
-
-# Extra header tests
-header-test-pattern-$(CONFIG_DRM_I915_WERROR) := *.h
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
