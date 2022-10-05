Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1731A5F5794
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 17:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5CD10E6B9;
	Wed,  5 Oct 2022 15:32:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E330910E6BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 15:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664983919; x=1696519919;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lLIv5InaIbqGqWePU7S8iTukfjMGC3Wa89gamKCaPeE=;
 b=N+ZbFs6pzVm7H3acdC6Q3KHMM7P50gGcbGQMKcIVOgZ2bX8TA44Bg6d6
 vnB5Bmn5vdZI/hCSRhMaIg+Q0a1F9w+z7DdbPnZ3FHl9wMWg7bDd1puB3
 WgGNxi+N9thN9CDeryGLAprVtsO9ivkeLtB3idqi4Zn/GWZJy73qU+zEp
 Om4Q0A9eJs0aArTIcZ/DWn2LjwyaZpWiIYQL4Qv7OEKjRxpJazEmVG3wX
 iPd0C+YLSIg/vWUQ+CYuJPDN64vD9RNnDlxWta9ngN8T6bSoGULwnA9Hq
 V+ohF57kWHxY1DNWh0wZYhe0/QlXXVUQXjXCBWaEpQxUC6Zitsd0ZP89S g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="304756387"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="304756387"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 08:31:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="728692560"
X-IronPort-AV: E=Sophos;i="5.95,161,1661842800"; d="scan'208";a="728692560"
Received: from vadimbel-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.23.121])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 08:31:57 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Oct 2022 16:31:47 +0100
Message-Id: <20221005153148.758822-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: add back GEN12_BDSM_MASK
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The mask was added in commit e5f415bfc5c2 ("drm/i915: Add missing mask
when reading GEN12_DSMBASE"), but then looks to be dropped in some
unrelated code movement in commit dbb2ffbfd708 ("drm/i915/mtl: enable
local stolen memory") without explanation. Add it back.

Fixes: dbb2ffbfd708 ("drm/i915/mtl: enable local stolen memory")
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 910086974454..2c4922961f33 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -910,7 +910,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
 		GEM_BUG_ON((dsm_size + SZ_8M) > lmem_size);
 	} else {
 		/* Use DSM base address instead for stolen memory */
-		dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE);
+		dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
 		if (WARN_ON(lmem_size < dsm_base))
 			return ERR_PTR(-ENODEV);
 		dsm_size = lmem_size - dsm_base;
-- 
2.37.3

