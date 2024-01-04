Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8B5824614
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 17:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AEB10E4C9;
	Thu,  4 Jan 2024 16:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F75B10E4C9;
 Thu,  4 Jan 2024 16:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704385524; x=1735921524;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ji0m7plgJ79y7eKWNTOP+Im7XpolkkkG10jyW8xQPRg=;
 b=aLVDNULLHof+1HbgT1GyiG+NNZ94JmEv1J/LUT0XHvThh12h9ihQ2228
 HjPAdxy5yVUS5d2OASlE5zCUpczv1YpzzldPrJ74aaWFteRJ2+5XhQ+9w
 sX52VF7ZslDqplBxV//VbUb/nLWUlFF0CNi+/YSYWrfWMFtoEn9Y1jIv/
 CqSewlsKXOx2iBceZi+RdE5+d5qajmcC4if6u+R7kiGAVR/3C64q314z+
 njBmcbpOl5uXwkOIn/86Ip83Wf3A8kgkQUNXSo7B1gYZ8jzrozWDCJ+UY
 XeaNTP/nXOURZO4DdEVNCVpwT1WR1IuPnwFT2zPYbi/pvxo/moWKUyB8X g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="428459463"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="428459463"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:24:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="903868049"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="903868049"
Received: from josouza-mobl2.bz.intel.com ([10.87.243.88])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 08:24:18 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 2/3] drm/xe: Fix definition of intel_wakeref_t
Date: Thu,  4 Jan 2024 08:24:10 -0800
Message-ID: <20240104162411.56085-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240104162411.56085-1-jose.souza@intel.com>
References: <20240104162411.56085-1-jose.souza@intel.com>
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

i915 defines it as unsigned long so Xe should do the same to avoid
compilation warnings:

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

