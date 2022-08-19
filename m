Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0297599B55
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D46D10E736;
	Fri, 19 Aug 2022 12:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A4310E736
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910573; x=1692446573;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=38BU8rIke+P8eg7eA0Yg4KCt4c3XwFPk7gLMh1535Yk=;
 b=JII+hqvLLkVTrXaGQ2M3R/PLqdsjwdQQu9aMJ3TX4wXVp1VR/CU2Sxjw
 OHlCrzlpud5J0TIGNt1zqkWO+ML96VWBedbkZO6oOUF+FnvKlotTIZ0NW
 bNwIyMGw5pGZnCuwcnQlp4WJ9EUlDShPWzdGm6DNlxOvYv8n5klBw7tIV
 dknu80VNm33dx9BqhA/A/bdXlcP6T3jUf0V1x/5beD4+gVPr5sPDQ4Rzv
 RGFjPwaw0DD0ZounOiQUeaohtG/Tqv6wuTn0lPuan2Xb8g9QBi9gKwRGd
 xJzRagRdWvn8KUt5swuOkbVzMuqlqlAmr7hIcRlSr+BfTFulZtMtb7wdZ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="290565279"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="290565279"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:02:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="668560557"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:02:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:33 +0300
Message-Id: <cover.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/14] drm/i915: stop modifying "const"
 device info
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

v3 of https://patchwork.freedesktop.org/series/105358/

Add a patch resolving guc time stamp logging related conflicts in the
front, and remove the last two patches, for now, to avoid any
potentially regressing functional changes. Leave them for later.


Jani Nikula (14):
  drm/i915/guc: remove runtime info printing from time stamp logging
  drm/i915: combine device info printing into one
  drm/i915: add initial runtime info into device info
  drm/i915: move graphics.ver and graphics.rel to runtime info
  drm/i915: move fbc_mask to runtime info
  drm/i915: move page_sizes to runtime info
  drm/i915: move ppgtt_type and ppgtt_size to runtime info
  drm/i915: move has_pooled_eu to runtime info
  drm/i915: move memory_regions to runtime info
  drm/i915: move platform_engine_mask to runtime info
  drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info
  drm/i915: move has_hdcp to runtime info
  drm/i915: move has_dmc to runtime info
  drm/i915: move has_dsc to runtime info

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
 drivers/gpu/drm/i915/gt/uc/intel_guc.c        |   2 -
 drivers/gpu/drm/i915/i915_debugfs.c           |   3 +-
 drivers/gpu/drm/i915/i915_driver.c            |  11 +-
 drivers/gpu/drm/i915/i915_drv.h               |  24 +-
 drivers/gpu/drm/i915/i915_gem.c               |   3 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +-
 drivers/gpu/drm/i915/i915_pci.c               | 242 +++++++++---------
 drivers/gpu/drm/i915/intel_device_info.c      |  71 ++---
 drivers/gpu/drm/i915/intel_device_info.h      |  82 +++---
 drivers/gpu/drm/i915/intel_uncore.c           |   2 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   8 +-
 21 files changed, 256 insertions(+), 242 deletions(-)

-- 
2.34.1

