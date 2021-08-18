Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2623EF6EF
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 02:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70EEE6E2E1;
	Wed, 18 Aug 2021 00:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BFE6E247
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 00:37:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="279966458"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="279966458"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 17:37:31 -0700
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="676844432"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 17:37:31 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 17 Aug 2021 17:42:08 -0700
Message-Id: <20210818004216.220279-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] Drop frontbuffer rendering support from
 Skylake and newer
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

This will break some IGT tests, here(https://patchwork.freedesktop.org/series/93764/)
I fixed the ones part of fast-feedback test list but probably there
will be more tests needing fix.

The first patch was also sent separated to intel-gfx and dri-devel.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>

José Roberto de Souza (8):
  drm/damage_helper: Fix handling of cursor dirty buffers
  drm/i915/display: Drop PSR support from HSW and BDW
  drm/i915/display: Move DRRS code its own file
  drm/i915/display: Some code improvements and code style fixes for DRRS
  drm/i915/display: Share code between intel_edp_drrs_flush and
    invalidate
  drm/i915/display: Prepare DRRS for frontbuffer rendering drop
  drm/i915/display/skl+: Drop frontbuffer rendering support
  drm/i915/display: Drop PSR frontbuffer rendering support

 Documentation/gpu/i915.rst                    |  14 +-
 drivers/gpu/drm/drm_damage_helper.c           |   8 +-
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_cursor.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../drm/i915/display/intel_display_debugfs.c  |   3 +-
 .../drm/i915/display/intel_display_types.h    |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       | 467 +-----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  11 -
 drivers/gpu/drm/i915/display/intel_drrs.c     | 450 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_drrs.h     |  36 ++
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   9 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 283 ++---------
 drivers/gpu/drm/i915/display/intel_psr.h      |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |   4 +-
 drivers/gpu/drm/i915/i915_irq.c               |  16 -
 drivers/gpu/drm/i915/i915_pci.c               |   4 +-
 drivers/gpu/drm/i915/i915_reg.h               |  21 +-
 19 files changed, 561 insertions(+), 792 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_drrs.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_drrs.h

-- 
2.32.0

