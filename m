Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB1F6D5B79
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 11:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EA9E10E191;
	Tue,  4 Apr 2023 09:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F0810E191
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 09:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680599135; x=1712135135;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8nknxswrGQf6gO5aUerKZLoG6PjzOpa3KwMzDYJDZSw=;
 b=RPKLMDt3EH53i+ogGbMgH+4I+GluB36FyM5ytscrmsPRW1MbHN5d2FME
 bnHZkk3qGR0sW5xhecbCB1UpUMOERhSc7NJQdySuvcT+G+4OOWrIVo8nU
 k573PNif3WPIW4m5gvdq/O2+2K20SzSXcJMO3bskylIBZvx1ew50zzS8i
 I3fAAyex8BqOFASGUHw6kBNV+jNTqlDMZaPVzxFXrdlutHTqjSMG2OXFK
 pbJe1PqmJ2K/c5GII1yn3npGIySZeFlbSxzuTpGCut2LwjJfCbeHqIHWY
 5QScQAZPyf2wRVu5DUH7pT3ZuNb+OXM75/M1rcH82xhz0imlZx9QzOpzA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="330713230"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="330713230"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 02:05:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="829905597"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="829905597"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.43.58])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 02:05:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Apr 2023 12:05:28 +0300
Message-Id: <20230404090528.173075-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: run kernel-doc on headers as part of
 HDRTEST
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

Enabling kernel-doc warnings in commit aaee4bbe8a1a ("drm/i915: enable
kernel-doc warnings for CONFIG_DRM_I915_WERROR=y") actually only covers
the .c files. And it's good for avoiding warnings in W= builds. However,
we need something more to check for kernel-doc issues in headers. Add it
as part of the existing HDRTEST.

We have tons of issues, and this unleashes warnings galore on
CONFIG_DRM_I915_WERROR=y. It doesn't fail the build because (at least
for now) we don't pass -Werror to kernel-doc.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 831e42175165..b739300267c2 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -387,7 +387,8 @@ always-$(CONFIG_DRM_I915_WERROR) += \
 		$(shell cd $(srctree)/$(src) && find * -name '*.h')))
 
 quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
-      cmd_hdrtest = $(CC) $(filter-out $(CFLAGS_GCOV), $(c_flags)) -S -o /dev/null -x c /dev/null -include $<; touch $@
+      cmd_hdrtest = $(CC) $(filter-out $(CFLAGS_GCOV), $(c_flags)) -S -o /dev/null -x c /dev/null -include $<; \
+		$(srctree)/scripts/kernel-doc -none $<; touch $@
 
 $(obj)/%.hdrtest: $(src)/%.h FORCE
 	$(call if_changed_dep,hdrtest)
-- 
2.39.2

