Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA23773FF66
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 17:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB3B10E2FB;
	Tue, 27 Jun 2023 15:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25C7610E2FB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 15:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687878865; x=1719414865;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aPzz2BNe6ckpGnKOsv6FkAc8btU5v2/BhJRUVs91CqA=;
 b=eqOSSfAYdRPkTpu0DFnmYGJg94kvFBATfUgjwh6ZWOsdimhSoEjBQye2
 pk+Rn4mvtxFWpkY5QxJyGxPSrMaa3xfKAmosy1GB1hH4E+4ye22khRxFc
 PDvTM1ASH28qzUsm48DEs94jgqKbuDYnLxbHSYY6aVIMVhoXMNbkdRItJ
 2sJkR7Ggww1iOYhWE4tc25qRoJog7buq8MwhUiNURV3q4r8OgBYGfbQzl
 fwr+UTML8mHhJF0XViJznJbkym8ABL29bhBpo66kG3wkBDhI3drpkXoX+
 +Y2r5BDaQ1+Ri0S2Eh3YQDTcJxHLT3bcBtBBUViujI4zWKyYD2kaHXCKv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="361635375"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="361635375"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="716584554"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="716584554"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 18:13:57 +0300
Message-Id: <cover.1687878757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] drm/i915: further device info fixes and
 cleanups
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

This is v2 of [1], fixing mock device init to not modify rodata.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/119086/


Jani Nikula (6):
  drm/i915: use mock device info for creating mock device
  drm/i915: move platform_engine_mask and memory_regions to device info
  drm/i915: separate display info printing from the rest
  drm/i915: fix display info usage
  drm/i915: move display device and runtime info to struct intel_display
  drm/i915: make device info a const pointer to rodata

 drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
 .../gpu/drm/i915/display/intel_display_core.h |  9 +++
 .../drm/i915/display/intel_display_device.c   | 21 ++++++
 .../drm/i915/display/intel_display_device.h   |  5 ++
 drivers/gpu/drm/i915/gt/intel_gt.c            |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c     |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  1 +
 drivers/gpu/drm/i915/i915_driver.c            |  2 +
 drivers/gpu/drm/i915/i915_drv.h               | 11 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c         |  6 ++
 drivers/gpu/drm/i915/i915_gpu_error.h         |  3 +
 drivers/gpu/drm/i915/i915_pci.c               | 64 +++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c      | 44 ++-----------
 drivers/gpu/drm/i915/intel_device_info.h      | 11 +---
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 45 +++++++------
 16 files changed, 122 insertions(+), 108 deletions(-)

-- 
2.39.2

