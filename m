Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA87A6A6D80
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 14:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7FD010E261;
	Wed,  1 Mar 2023 13:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8079C10E269
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 13:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677678866; x=1709214866;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zCtkIFQpj7rvfsn3qqj+XiE4lWrZvuGCp2nPp+hStsY=;
 b=BfYzuGV0sgzMrvBLvSO/BTWz41sQywsBFESz5u7IlBoP68Zqcd1jDrWD
 oUE+LiN3d6jqHXc3nqSpZM/nmzVfn1pezBdKiv58cTw/mgFbFFpY1lyXa
 iyJCxppyfZXgnG+oK0MdXVJIHz5zfOifoxDI/YV/0QIqvD+mW5tlXRf8O
 6o76I2ktE39Y/vbn7NkL4T/kxAoYqIm1Ypst06/u2IGxBYWosiZUUjlCi
 xGeSlpLgS7rvMCQZOnWatPjN5/JWIwUhbrG9FhmQs2E56VP9TSj1AlrZ9
 nOTgj6r7JyCmm6Ksey//RsU7FDHlOXmsNZ3oQGpUrrCTPKc4d09GNVqZ7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="335904919"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="335904919"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="706987428"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="706987428"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 15:54:14 +0200
Message-Id: <cover.1677678803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: pm cleanups,
 rename to clock gating
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

Finish off some of the cleanups done earlier in intel_pm.[ch]

Jani Nikula (6):
  drm/i915/wm: remove display/ prefix from include
  drm/i915/pm: drop intel_pm_setup()
  drm/i915/pm: drop intel_suspend_hw()
  drm/i915: remove unnecessary intel_pm.h includes
  drm/i915: rename intel_pm.[ch] to intel_clock_gating.[ch]
  drm/i915/clock: mass rename dev_priv to i915

 drivers/gpu/drm/i915/Makefile                 |   2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   1 -
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_debugfs.c  |   1 -
 .../drm/i915/display/intel_modeset_setup.c    |   1 -
 drivers/gpu/drm/i915/display/intel_wm_types.h |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   1 -
 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 -
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   1 -
 drivers/gpu/drm/i915/gt/selftest_llc.c        |   1 -
 drivers/gpu/drm/i915/i915_debugfs.c           |   1 -
 drivers/gpu/drm/i915/i915_driver.c            |  11 +-
 drivers/gpu/drm/i915/i915_gem.c               |   8 +-
 drivers/gpu/drm/i915/i915_irq.c               |   1 -
 drivers/gpu/drm/i915/i915_pmu.c               |   1 -
 drivers/gpu/drm/i915/i915_request.c           |   1 -
 drivers/gpu/drm/i915/i915_sysfs.c             |   1 -
 drivers/gpu/drm/i915/intel_clock_gating.c     | 888 +++++++++++++++++
 drivers/gpu/drm/i915/intel_clock_gating.h     |  14 +
 drivers/gpu/drm/i915/intel_pm.c               | 907 ------------------
 drivers/gpu/drm/i915/intel_pm.h               |  20 -
 drivers/gpu/drm/i915/intel_runtime_pm.c       |   2 +
 drivers/gpu/drm/i915/intel_uncore.c           |   1 -
 drivers/gpu/drm/i915/vlv_suspend.c            |   4 +-
 24 files changed, 918 insertions(+), 957 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_clock_gating.c
 create mode 100644 drivers/gpu/drm/i915/intel_clock_gating.h
 delete mode 100644 drivers/gpu/drm/i915/intel_pm.c
 delete mode 100644 drivers/gpu/drm/i915/intel_pm.h

-- 
2.39.1

