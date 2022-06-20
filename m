Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3E35512F0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC47C10E1CF;
	Mon, 20 Jun 2022 08:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E52710E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714281; x=1687250281;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0JFoy2/uZ/ArfwF3c33CFahtf/SmNS0OJRiP8uBkCBk=;
 b=NIGhFriAOfMbCWgX0c9yTN2TK3/RoKzmgcwVlsjfd7bYq4YiW8+S+nN8
 yVA7wkIC2XA0wM91nPGX42h7D2Hc8tP/a9viPBP16zV+MKLtGRcg0NH8p
 shkf5SC0cZ6Swn6nVPNj/5O0dMYZseBj7DTqAgdXnkBg03pJBBvT85sX4
 pqo19E8IctlH5xc1dzt9Oq9y3IG4sEu8usEnNhmkWZhccQSWtX+j3hhxn
 pQVcmMbtRGkG8W3n1ClWNxtJh3JIW2VrKVtnbFvED2XpZhgJDyfcf2Zld
 sUV7dQ1Dc1G8B4v1uKyjK7vngmH+1OqFDBrR66StgR3pB8v50Hj0QnEtj g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="341521554"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="341521554"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:00 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="643012313"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:37:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:37:39 +0300
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

