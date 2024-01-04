Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97ED58245C6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8EB410E4D8;
	Thu,  4 Jan 2024 16:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58DC310E4CA;
 Thu,  4 Jan 2024 16:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704384420; x=1735920420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qeTTLzK/Y4e/tEforojzTPBMgfa+sl9k69bumQ4e+PA=;
 b=VU6cOBHjxZzPHKtc4gMnb9AiUNaT1mx2NR1xX6HxK75ODPDvqN5PVOfD
 bm1eFZpnoJbZ+QF1irejgZInvncam6eBd7lKSFIezDNO/JSOZzElaMxZf
 VzT9GVfsNnpZ/7CT+Jk5BtloE/WPFrsXHOONkxDTO3uEmQ8SX3453cDC9
 0up4OkBzIxmNJMNtgcbz8msPTc4K7T8x/K6P9DxO9dVGD99EGKFZWiP1l
 3OgA92O6TNbrEApjk869pRKGO/m3UPZj4prddhSTiNG8Jn1USRVwI97hq
 8rmwWZCAKTcmNlQry7gSGg43215MU5s0Ndw5wwwAYjc4kY8n2LC1+FM3Y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="394461096"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="394461096"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:06:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="22534644"
Received: from josouza-mobl2.bz.intel.com ([10.87.243.88])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:06:06 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 2/2] drm/xe: Fix definition of intel_wakeref_t
Date: Thu,  4 Jan 2024 08:05:57 -0800
Message-ID: <20240104160557.48496-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240104160557.48496-1-jose.souza@intel.com>
References: <20240104160557.48496-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915 defines it as unsigned long so Xe should do the same.
It did not break anything because the bool was being promoted to int
by compiler.
This was caught because it causing compilation warnings:

  CC [M]  drivers/gpu/drm/i915/i915_gem.o
  CC [M]  drivers/gpu/drm/xe/i915-display/intel_display_power_well.o
In file included from ./include/drm/drm_mm.h:51,
                 from drivers/gpu/drm/xe/xe_bo_types.h:11,
                 from drivers/gpu/drm/xe/xe_bo.h:11,
                 from ./drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h:11,
                 from ./drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h:15,
                 from drivers/gpu/drm/i915/display/intel_display_power.c:8:
drivers/gpu/drm/i915/display/intel_display_power.c: In function ‘print_async_put_domains_state’:
drivers/gpu/drm/i915/display/intel_display_power.c:408:29: warning: format ‘%lu’ expects argument of type ‘long unsigned int’, but argument 5 has type ‘int’ [-Wformat=]
  408 |         drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
      |                             ^~~~~~~~~~~~~~~~~~~~~~~~~
  409 |                 power_domains->async_put_wakeref);
      |                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                              |
      |                              int
./include/drm/drm_print.h:410:39: note: in definition of macro ‘drm_dev_dbg’
  410 |         __drm_dev_dbg(NULL, dev, cat, fmt, ##__VA_ARGS__)
      |                                       ^~~
./include/drm/drm_print.h:510:33: note: in expansion of macro ‘drm_dbg_driver’
  510 | #define drm_dbg(drm, fmt, ...)  drm_dbg_driver(drm, fmt, ##__VA_ARGS__)
      |                                 ^~~~~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_display_power.c:408:9: note: in expansion of macro ‘drm_dbg’
  408 |         drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
      |         ^~~~~~~
drivers/gpu/drm/i915/display/intel_display_power.c:408:50: note: format string is defined here
  408 |         drm_dbg(&i915->drm, "async_put_wakeref %lu\n",
      |                                                ~~^
      |                                                  |
      |                                                  long unsigned int
      |                                                %u
  CC [M]  drivers/gpu/drm/i915/i915_gem_evict.o
  CC [M]  drivers/gpu/drm/i915/i915_gem_gtt.o
  CC [M]  drivers/gpu/drm/xe/i915-display/intel_display_trace.o
  CC [M]  drivers/gpu/drm/xe/i915-display/intel_display_wa.o
  CC [M]  drivers/gpu/drm/i915/i915_query.o

Fixes: 44e694958b95 ("drm/xe/display: Implement display support")
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
index 1c5e30cf10caa..ecb1c07077069 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
@@ -5,4 +5,4 @@
 
 #include <linux/types.h>
 
-typedef bool intel_wakeref_t;
+typedef unsigned long intel_wakeref_t;
-- 
2.43.0

