Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3283C7BB7C3
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 14:35:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3147510E4E0;
	Fri,  6 Oct 2023 12:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED20A10E4DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 12:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696595706; x=1728131706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qacfm631k2c6qgx8O95EcNeGual3NcFbAvpXGWJuWB8=;
 b=iOaPDdAqQDzfZ+vHUsT+wPorJQ8tvweKzxUOTcMpGjN2z06LahDZglOj
 zU2ov+tTRKjWHnR+oPTnRMzmL3NKgcnuG2J2c9S5D1MXHqsbMXGJdyqPo
 lQjN5X+sV+AE6OMjYLecpKxi/jCZVxJasLhYmTbp1ehS4zv4hNZ03pTsH
 1pUHz9Z4TMVa9BlDbU9yWSYYVAJR3jtdir3weCNYKmQe6ggZ0BHBpiVo2
 p4QjX/K08DX9Ci1zJ0EQ5zc2yyUWLb5vrBhlnQXPlO7JalDWOWjDU14dt
 RkhEocLoc3Nihp/ZTTI0TmQur7lA3YotIkaes5bYpCBQM2tlKoI4F/xaA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386564224"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="386564224"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 05:35:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="875930223"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="875930223"
Received: from lvroom-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.41.239])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 05:35:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 15:34:46 +0300
Message-Id: <48f11648d7169687e7242e4c9b4694a0c03c4263.1696595500.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1696595500.git.jani.nikula@intel.com>
References: <cover.1696595500.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: drop -Wall and related disables
 from cflags as redundant
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

The kernel top level Makefile, and recently scripts/Makefile.extrawarn,
have included -Wall, and the disables -Wno-format-security and
$(call cc-disable-warning,frame-address,) for a very long time. They're
redundant in our local subdir-ccflags-y and can be dropped.

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index dec78efa452a..623f81217442 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -5,22 +5,20 @@
 
 # Add a set of useful warning flags and enable -Werror for CI to prevent
 # trivial mistakes from creeping in. We have to do this piecemeal as we reject
-# any patch that isn't warning clean, so turning on -Wall -Wextra (or W=1) we
+# any patch that isn't warning clean, so turning on -Wextra (or W=1) we
 # need to filter out dubious warnings.  Still it is our interest
 # to keep running locally with W=1 C=1 until we are completely clean.
 #
-# Note the danger in using -Wall -Wextra is that when CI updates gcc we
+# Note the danger in using -Wextra is that when CI updates gcc we
 # will most likely get a sudden build breakage... Hopefully we will fix
 # new warnings before CI updates!
-subdir-ccflags-y := -Wall -Wextra
-subdir-ccflags-y += -Wno-format-security
+subdir-ccflags-y := -Wextra
 subdir-ccflags-y += -Wno-unused-parameter
 subdir-ccflags-y += -Wno-type-limits
 subdir-ccflags-y += -Wno-missing-field-initializers
 subdir-ccflags-y += -Wno-sign-compare
 subdir-ccflags-y += -Wno-shift-negative-value
 subdir-ccflags-y += $(call cc-option, -Wunused-but-set-variable)
-subdir-ccflags-y += $(call cc-disable-warning, frame-address)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
 # Fine grained warnings disable
-- 
2.39.2

