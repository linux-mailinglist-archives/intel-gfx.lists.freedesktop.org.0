Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FC5167B64
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 11:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1523D6EF34;
	Fri, 21 Feb 2020 10:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A07F6EF34
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 10:54:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 02:54:15 -0800
X-IronPort-AV: E=Sophos;i="5.70,468,1574150400"; d="scan'208";a="229817043"
Received: from jmiler-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.38.187])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 02:54:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 12:54:14 +0200
Message-Id: <20200221105414.14358-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: fix header test with GCOV
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
Cc: jani.nikula@intel.com, Masahiro Yamada <masahiroy@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

$(CC) with $(CFLAGS_GCOV) assumes the output filename with .gcno suffix
appended is writable. This is not the case when the output filename is
/dev/null:

  HDRTEST drivers/gpu/drm/i915/display/intel_frontbuffer.h
/dev/null:1:0: error: cannot open /dev/null.gcno
  HDRTEST drivers/gpu/drm/i915/display/intel_ddi.h
/dev/null:1:0: error: cannot open /dev/null.gcno
make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
drivers/gpu/drm/i915/display/intel_ddi.hdrtest] Error 1
make[5]: *** Waiting for unfinished jobs....
make[5]: *** [../drivers/gpu/drm/i915/Makefile:307:
drivers/gpu/drm/i915/display/intel_frontbuffer.hdrtest] Error 1

Filter out $(CFLAGS_GVOC) from the header test $(c_flags) as they don't
make sense here anyway.

References: http://lore.kernel.org/r/d8112767-4089-4c58-d7d3-2ce03139858a@infradead.org
Reported-by: Randy Dunlap <rdunlap@infradead.org>
Fixes: c6d4a099a240 ("drm/i915: reimplement header test feature")
Cc: Masahiro Yamada <masahiroy@kernel.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index b314d44ded5e..bc28c31c4f78 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -301,7 +301,7 @@ extra-$(CONFIG_DRM_I915_WERROR) += \
 		$(shell cd $(srctree)/$(src) && find * -name '*.h')))
 
 quiet_cmd_hdrtest = HDRTEST $(patsubst %.hdrtest,%.h,$@)
-      cmd_hdrtest = $(CC) $(c_flags) -S -o /dev/null -x c /dev/null -include $<; touch $@
+      cmd_hdrtest = $(CC) $(filter-out $(CFLAGS_GCOV), $(c_flags)) -S -o /dev/null -x c /dev/null -include $<; touch $@
 
 $(obj)/%.hdrtest: $(src)/%.h FORCE
 	$(call if_changed_dep,hdrtest)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
