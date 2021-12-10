Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4646E470161
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:17:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE0F10E26D;
	Fri, 10 Dec 2021 13:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D51E10E2C0
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639142237; x=1670678237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cK0juDwHRuowEMBuKCCeWf2ZAz/mK/W9RylUKRuB3HE=;
 b=PbSPGKxrpcs15clzziLKT12/bk4bR2nP26zs64VmE/cOycl8f3nnKGgf
 CSLZyFoi/F9hemnrjR+kG0yhoo20bk4epQmQ5x2ZQObtcPoz1ueFNhfaM
 z49zoaPKbd4wmIuHCrRSsudRKFFI2ifhJ+0iF/HtQyzI0E0yT0p9Pcx9f
 2Z/VC46JNhAQyZPAWwvWbozpHs8EkukgkWC83mHmno31fk9pxGrCmsbdN
 leL5ThOY48pqwRAGq1po6BC8RoMZu+TNb1ePX4VRjcKjBmDF7f3qAaVPp
 jTeoA/oO10WoHvv9+B36P3JQqtPUEFkxJv0+pGT8wUU1NMO2b+57ObgBf A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="235856455"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="235856455"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:16 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="543976784"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 15:16:55 +0200
Message-Id: <e1e195b8ca1252d1e149c8185d107a5517496973.1639142167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639142167.git.jani.nikula@intel.com>
References: <cover.1639142167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915/reset: include intel_display.h
 instead of intel_display_types.h
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

Use the more specific include that's needed.

v2: Include intel_display.h (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 63199f0550e6..7be0002d9d70 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -6,7 +6,7 @@
 #include <linux/sched/mm.h>
 #include <linux/stop_machine.h>
 
-#include "display/intel_display_types.h"
+#include "display/intel_display.h"
 #include "display/intel_overlay.h"
 
 #include "gem/i915_gem_context.h"
-- 
2.30.2

