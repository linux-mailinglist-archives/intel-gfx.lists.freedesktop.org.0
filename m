Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4BD7C4BC0
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 09:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BB7910E48A;
	Wed, 11 Oct 2023 07:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8350110E48A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 07:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697009363; x=1728545363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0bDVhhRFjtCy3bbgG+aChsC8tbsXgtOqUXfZpFIGH94=;
 b=bl2tolytwYuYNdF93z/U7VwKWxOwkANXRMe3uZ2b1jbEFGVZej/wo1DK
 EeH8R8IFGarKX4tmDQCxwQkcyKBTZ5c1r1wP+AWjLgInG2M7ZovjtHxlV
 wRwQlkFpL61e7ocpWVQVX96haybcc2dA/wTilLejK6Ao1l7zTgKmUOKsr
 Tu0sD6/8MHqUtsNOLL4DS5g49r5JDEvMCdgh2MNzZQAl0L6GvLuB+zo4H
 9y8nbqdZwKsgf72/hQmu/47DzbgI3ht4/eymQn0NSI45WAyrIpR4IVqot
 r5M/7ngvNDM75EFBFXXvFh7gvcqJlGnn3urdAwo6qvS5b1XqzA9JRs7LA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="3192017"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="scan'208";a="3192017"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 00:29:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="747352246"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="747352246"
Received: from wprelogx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.229])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 00:29:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 10:29:04 +0300
Message-Id: <69a812273091b6535ddc7f9346289d71bb30f43d.1697009258.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1697009258.git.jani.nikula@intel.com>
References: <cover.1697009258.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: enable W=1 warnings by default
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kbuild@vger.kernel.org,
 jani.nikula@intel.com, Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <nathan@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We enable a bunch more compiler warnings than the kernel
defaults. However, they've drifted to become a unique set of warnings,
and have increasingly fallen behind from the W=1 set.

Align with the W=1 warnings from scripts/Makefile.extrawarn for clarity,
by copy-pasting them with s/KBUILD_CFLAGS/subdir-ccflags-y/ to make it
easier to compare in the future.

Some of the -Wextra warnings do need to be disabled, just like in
Makefile.extrawarn, but take care to not disable them for W=2 or W=3
builds, depending on the warning.

v2: Add back some -Wextra warning disables (Nathan)

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 42 ++++++++++++++++++++++-------------
 1 file changed, 27 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 623f81217442..94f84befa38f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -3,22 +3,34 @@
 # Makefile for the drm device driver.  This driver provides support for the
 # Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.
 
-# Add a set of useful warning flags and enable -Werror for CI to prevent
-# trivial mistakes from creeping in. We have to do this piecemeal as we reject
-# any patch that isn't warning clean, so turning on -Wextra (or W=1) we
-# need to filter out dubious warnings.  Still it is our interest
-# to keep running locally with W=1 C=1 until we are completely clean.
-#
-# Note the danger in using -Wextra is that when CI updates gcc we
-# will most likely get a sudden build breakage... Hopefully we will fix
-# new warnings before CI updates!
-subdir-ccflags-y := -Wextra
-subdir-ccflags-y += -Wno-unused-parameter
-subdir-ccflags-y += -Wno-type-limits
-subdir-ccflags-y += -Wno-missing-field-initializers
-subdir-ccflags-y += -Wno-sign-compare
-subdir-ccflags-y += -Wno-shift-negative-value
+# Unconditionally enable W=1 warnings locally
+# --- begin copy-paste W=1 warnings from scripts/Makefile.extrawarn
+subdir-ccflags-y += -Wextra -Wunused -Wno-unused-parameter
+subdir-ccflags-y += -Wmissing-declarations
+subdir-ccflags-y += $(call cc-option, -Wrestrict)
+subdir-ccflags-y += -Wmissing-format-attribute
+subdir-ccflags-y += -Wmissing-prototypes
+subdir-ccflags-y += -Wold-style-definition
+subdir-ccflags-y += -Wmissing-include-dirs
 subdir-ccflags-y += $(call cc-option, -Wunused-but-set-variable)
+subdir-ccflags-y += $(call cc-option, -Wunused-const-variable)
+subdir-ccflags-y += $(call cc-option, -Wpacked-not-aligned)
+subdir-ccflags-y += $(call cc-option, -Wformat-overflow)
+subdir-ccflags-y += $(call cc-option, -Wformat-truncation)
+subdir-ccflags-y += $(call cc-option, -Wstringop-overflow)
+subdir-ccflags-y += $(call cc-option, -Wstringop-truncation)
+# The following turn off the warnings enabled by -Wextra
+ifeq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
+KBUILD_CFLAGS += -Wno-missing-field-initializers
+KBUILD_CFLAGS += -Wno-type-limits
+KBUILD_CFLAGS += -Wno-shift-negative-value
+endif
+ifeq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
+KBUILD_CFLAGS += -Wno-sign-compare
+endif
+# --- end copy-paste
+
+# Enable -Werror in CI and development
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
 # Fine grained warnings disable
-- 
2.39.2

