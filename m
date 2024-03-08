Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53311876691
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 15:47:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBD5310FA2E;
	Fri,  8 Mar 2024 14:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gUAuiIVO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9DD10F891
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 14:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709909221; x=1741445221;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nabzxEN1PS9JUzBZrjbpuSG/w5qm31efipUM4ftZUUw=;
 b=gUAuiIVOBgeKGFhc+i0UCX7+12tXr46jBrAZL/b2dfOgGUeRhWDth8Xv
 VlPkO8DjguJdALrAxziqV3dJZa08rdXawqL7MD45QvgeCIY4kQA5Lh5hK
 Itg5Xg1CUGp6LyqKAWB2mWQjwy8nb+hF4RTFAL3nmjSYR9WBqN4MiYF7Y
 vyR+r5NgmzEPvElPT9P1h954ddoQKn5VrW1yyGnyon8o0vibnEISs3ehU
 +WBk1Lg5QfmsjQHZJRzf7jdgg92cwTucJytdt7jOOGD5OspaZtdmCkxnA
 Q7EOqzop1QoqoeRIEtnL94yGlaQcvkyLLMZYmcJJGRGTNsf3t9hMUw8wl g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="8382438"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="8382438"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:47:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="15185431"
Received: from unknown (HELO localhost) ([10.245.244.189])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:46:58 -0800
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: [PATCH] drm/i915: Add includes for BUG_ON/BUILD_BUG_ON in
 i915_memcpy.c
Date: Fri,  8 Mar 2024 16:46:43 +0200
Message-ID: <20240308144643.137831-1-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
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

Add standalone includes for BUG_ON and BUILD_BUG_ON to avoid build failure
after linux-next include refactoring.

Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
---
 drivers/gpu/drm/i915/i915_memcpy.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
index ba82277254b7..cc41974cee74 100644
--- a/drivers/gpu/drm/i915/i915_memcpy.c
+++ b/drivers/gpu/drm/i915/i915_memcpy.c
@@ -25,6 +25,8 @@
 #include <linux/kernel.h>
 #include <linux/string.h>
 #include <linux/cpufeature.h>
+#include <linux/bug.h>
+#include <linux/build_bug.h>
 #include <asm/fpu/api.h>
 
 #include "i915_memcpy.h"
-- 
2.43.2

