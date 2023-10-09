Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF2E7BDEB5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 15:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F15B10E112;
	Mon,  9 Oct 2023 13:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2202510E117
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 13:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696857728; x=1728393728;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/Qfdhh3ZvKynqsCf2Q2O8rJBCDAq4mvRIfexmX5lFck=;
 b=arozZTxXh4YP+63KlK8fyfs2fDoSkNqXLKp6ZwONalc70j6rSqQyVcyj
 3iDiBOqc/kNDrELq8yojpWMD/JRMsDdWWpmwJ3tCHRwzky2OK0as4kcJf
 Q/hkbiUrWw151ZCYVPrR8kMydbZCse3BTrDeqO7fv7TZUNBrWe3OzjkJB
 aMkje2C6tYI5kUYBOq2qSUK/GD0Adr0WU9u0CHOcZIbN7EunQ0Ney3dBB
 oY/1/ox7Rs+rfEB9VebqJd096ZJCXfpwt5/pTM+6x8qO+22kq5IlMlTRh
 glicicxT90Csg803Lb+SeAviYc6hz6T/QYXsZCCr57kbqfCZIYtZD7TiP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="384014437"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="384014437"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 06:22:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="788162040"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="788162040"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 09 Oct 2023 06:22:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Oct 2023 16:22:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Oct 2023 16:22:01 +0300
Message-ID: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/dsb: Allocate command buffer from
 local memory
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Using system memory for the DSB command buffer doesn't appear to work.
On DG2 it seems like the hardware internally replaces the actual memory
reads with zeroes, and so we end up executing a bunch of NOOPs instead
of whatever commands we put in the buffer. To determine that I measured
the time it takes to execute the instructions, and the results are
always more or less consistent with executing a buffer full of NOOPs
from local memory.

Another theory I considered was some kind of cache coherency issue.
Looks like i915_gem_object_pin_map_unlocked() will in fact give you a
WB mapping for system memory on DGFX regardless of what mapping mode
was requested (WC in case of the DSB code). But clflush did not
change the behaviour at all, so that theory seems moot.

On DG1 it looks like the hardware might actually be fetching data from
system memory as the logs indicate that we just get underruns. But that
is equally bad, so doens't look like we can really use system memory on
DG1 either.

Thus always allocate the DSB command buffer from local memory on
discrete GPUs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 3e32aa49b8eb..7410ba3126f9 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -5,6 +5,7 @@
  */
 
 #include "gem/i915_gem_internal.h"
+#include "gem/i915_gem_lmem.h"
 
 #include "i915_drv.h"
 #include "i915_irq.h"
@@ -461,7 +462,11 @@ struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_state,
 	/* ~1 qword per instruction, full cachelines */
 	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
 
-	obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
+	if (HAS_LMEM(i915))
+		obj = i915_gem_object_create_lmem(i915, PAGE_ALIGN(size),
+						  I915_BO_ALLOC_CONTIGUOUS);
+	else
+		obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
 	if (IS_ERR(obj))
 		goto out_put_rpm;
 
-- 
2.41.0

