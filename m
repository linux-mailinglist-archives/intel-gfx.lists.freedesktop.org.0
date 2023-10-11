Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43017C4BBD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 09:29:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C2B010E492;
	Wed, 11 Oct 2023 07:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1278C10E48B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 07:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697009358; x=1728545358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sk7+SDf5VMSdPv94BbG9zAThSlfGA2P7R80rkLeBe7M=;
 b=Mhf7sVK2ty91OD7SSLRf/VnHYYBJ05eUPnRR0qnZwfdLlhmAMMZAmaEh
 ime+jMJ1K/2COTEfG5aKkkrz9UY1kh6MVj5LfzbkTbspsQs+hLwGikXYQ
 1/4ZDmlLCLNt01hndTjvSIL2zYAMG+7gF+whzoZ9U5nqdUgcyqX+Jii4m
 83x+ge/1wZ8eSTabUZi+Tu+N8tUpmInqD/AZVKM4iP92tQb6qgLPx7sHf
 bDSzZcHXIWyYU9w1YRzWnzQ+tAvZ4zqPzsqWcDeT3CvBywqE4FDqdWtyK
 K30V8QQw891YF7DJo2XDM51au3kMPEYRlY43keFgD1PrN+zPuPhgTXCDz A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="448802430"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="448802430"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 00:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757443270"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="757443270"
Received: from wprelogx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.229])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 00:29:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 10:29:03 +0300
Message-Id: <5ab754ddc2e342c75deb8476275984918e573beb.1697009258.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1697009258.git.jani.nikula@intel.com>
References: <cover.1697009258.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915: drop -Wall and related
 disables from cflags as redundant
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
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
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

