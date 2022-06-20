Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7565512F3
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4878810E233;
	Mon, 20 Jun 2022 08:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87FE10E233
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714300; x=1687250300;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0JFoy2/uZ/ArfwF3c33CFahtf/SmNS0OJRiP8uBkCBk=;
 b=LUTg4rUozm1pqb+re89kES3pGe3WiUdYh21PCHOKy9j2yza7q27eSyp8
 D4ibg+w3R6pBVdCzbz77j00hz771C6QVm58te8JyGEiFlISJMqcPDX+fo
 8OtaOgA1TgAwJH7QmSn3j7cOq6K6CNShRRYiKRs/uxUByHJhMLy5zqbhu
 L4A+dhcCed4lnBYku6P+y6fH4VM5fcaJzQh2PJIGl7fOc1dQ3mYIHia0R
 u4u7dA4eYNQ680veBNb35slsAUy0ST2Wf2HlTCb5qRpsct8KHzyGC3nAi
 iH5kFx0gJHZ7wsc1xI9dVVuKfRaj63yTioKo2BnHqTSsVW9lywzBGOaK2 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="260271737"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="260271737"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:20 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="833012651"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:37:59 +0300
Message-Id: <cover.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/16] drm/i915: stop modifying "const" device
 info
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

Move any device info that gets modified runtime into runtime info,
making device info a const pointer. Finally throw mkwrite_device_info()
into the curb.

The data size increases by sizeof(struct intel_runtime_info) for each
struct intel_device_info in i915_pci.c.

bloat-o-meter gives chg +0.08% in text size, almost all of which is
caused by the last commit (drm/i915: make device info a pointer to
static const data). IMO the first 14-15 commits separating
static/runtime info are worth it even if we decide the text size penalty
is too much to switch to using a pointer for static device info.

BR,
Jani.


Jani Nikula (16):
  drm/i915: use GRAPHICS_VER() instead of accessing match_info directly
  drm/i915: combine device info printing into one
  drm/i915: add initial runtime info into device info
  drm/i915: move fbc_mask to runtime info
  drm/i915: move page_sizes to runtime info
  drm/i915: move ppgtt_type and ppgtt_size to runtime info
  drm/i915: move has_pooled_eu to runtime info
  drm/i915: move memory_regions to runtime info
  drm/i915: move platform_engine_mask to runtime info
  drm/i915: move graphics.ver and graphics.rel to runtime info
  drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info
  drm/i915: move has_hdcp to runtime info
  drm/i915: move has_dmc to runtime info
  drm/i915: move has_dsc to runtime info
  drm/i915: stop resetting display info to zero for no display
  drm/i915: make device info a pointer to static const data

 drivers/gpu/drm/i915/display/intel_display.h  |   4 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_pages.c     |   2 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  18 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   2 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |   2 +-
 drivers/gpu/drm/i915/gt/intel_sseu.c          |   5 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   3 +-
 drivers/gpu/drm/i915/i915_driver.c            |  23 +-
 drivers/gpu/drm/i915/i915_drv.h               |  35 ++-
 drivers/gpu/drm/i915/i915_gem.c               |   3 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +-
 drivers/gpu/drm/i915/i915_pci.c               | 230 +++++++++---------
 drivers/gpu/drm/i915/intel_device_info.c      |  73 +++---
 drivers/gpu/drm/i915/intel_device_info.h      |  82 ++++---
 drivers/gpu/drm/i915/intel_uncore.c           |   2 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   8 +-
 20 files changed, 255 insertions(+), 254 deletions(-)

-- 
2.30.2

