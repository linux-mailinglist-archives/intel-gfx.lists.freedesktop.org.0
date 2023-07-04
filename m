Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8E3746DF5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 11:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C147810E2C3;
	Tue,  4 Jul 2023 09:48:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F23410E2C3
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 09:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688464134; x=1720000134;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GnQa6Prt1DmDT3ieejIThLDq10Z7VEsdhhAs3girPBQ=;
 b=UPnUronkXfLR5aSxX5Am8fK5iQwS0JeU1naeqxnBqPpd9nn+LKfJuMCg
 mxy6rUY5XggXtTRyJcYq4RFNsMzElI09k7xHfDZeEOZhlrQNoq86X2nR5
 vansYl2JJ8sZHRovtYarhgL1jhs9scyJ01gNtYiuF2PXzcyD3K8Sqh1Yu
 7b/8SYsKt3lWBxRZ3mrWs4DcGor0suo2XlawZK7zLsLgn+elnLnmDfX3w
 kOQsJH3BImeoI8kM0KT7CoDYG2CgJpVB/knTU2ct6KVZO90ZxKUtB+8vz
 auIWLpOlaQuHFS8P2N8qU4AcDqxDu+cT+o0BxAkjv3Ac/a2e5SVlzZ1fx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="393829717"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="393829717"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:48:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="788804386"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="788804386"
Received: from jbouhlil-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.173])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 02:48:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jul 2023 12:48:46 +0300
Message-Id: <cover.1688463863.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/uncore: unclaimed reg debug race
 fix and optimization
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

Fix a race in unclaimed reg debug. This does increase the code size for
CONFIG_DRM_I915_DEBUG_MMIO=y.

However, also add an optimization to reduce code size for
CONFIG_DRM_I915_DEBUG_MMIO=n.

Do we care about the bloat for the debug config?

Before/after for both CONFIG_DRM_I915_DEBUG_MMIO=y and =n.


$ scripts/bloat-o-meter intel_uncore.before.with-debug.o intel_uncore.after.with-debug.o
add/remove: 0/2 grow/shrink: 10/0 up/down: 927/-149 (778)
Function                                     old     new   delta
fwtable_read16                               721     821    +100
fwtable_read32                               719     817     +98
fwtable_read8                                722     818     +96
fwtable_read64                               722     817     +95
gen6_write16                                 679     772     +93
gen6_write8                                  678     769     +91
gen6_write32                                 677     768     +91
fwtable_write16                              742     831     +89
fwtable_write8                               741     828     +87
fwtable_write32                              740     827     +87
__pfx___unclaimed_reg_debug                   16       -     -16
__unclaimed_reg_debug                        133       -    -133
Total: Before=33797, After=34575, chg +2.30%

$ scripts/bloat-o-meter intel_uncore.before.without-debug.o intel_uncore.after.without-debug.o
add/remove: 0/2 grow/shrink: 0/10 up/down: 0/-2557 (-2557)
Function                                     old     new   delta
__pfx___unclaimed_reg_debug                   16       -     -16
__unclaimed_reg_debug                        133       -    -133
gen6_write8                                  678     446    -232
gen6_write32                                 677     445    -232
gen6_write16                                 679     447    -232
fwtable_read64                               722     482    -240
fwtable_read32                               719     479    -240
fwtable_read16                               721     481    -240
fwtable_read8                                722     480    -242
fwtable_write8                               741     491    -250
fwtable_write32                              740     490    -250
fwtable_write16                              742     492    -250
Total: Before=33797, After=31240, chg -7.57%

Cc: Lee Shawn C <shawn.c.lee@intel.com>

Jani Nikula (3):
  drm/i915/uncore: split unclaimed_reg_debug() to header and footer
  drm/i915/uncore: fix race around i915->params.mmio_debug
  drm/i915/uncore: optimize CONFIG_DRM_I915_DEBUG_MMIO=n more

 drivers/gpu/drm/i915/intel_uncore.c | 47 ++++++++++++++++++-----------
 1 file changed, 29 insertions(+), 18 deletions(-)

-- 
2.39.2

