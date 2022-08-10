Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7091D58ECEA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 15:18:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2824A575B;
	Wed, 10 Aug 2022 13:18:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D75D79BC1A
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137505; x=1691673505;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1h6aqV72iEpNeHsujrlWSuDwwCj1+2kkNHpdeZx4HNs=;
 b=QcO3VreSufPxqcKWoIxRigv2tRQ17w7j7l499xQ4ppeXMANVMSa28Lk8
 fd49wr8RFJaWOE71kPq2MkCAL5NePny95AAOPwwa0tcxq1MZo8eSzL/NQ
 1o4CA+kjdstC6qUAYPgJSZYQ85/qEz/TFR96TRgaWwDBWKM/ZfWMfqosB
 eFgaX9kIj/8PmvVYqpZ3OQcnWVBM+5+tOb2K/Cw5en5IzJNHl5G+nX/ne
 SWzThP5k0ZOOdIL5iCxxboKwU6+RQBB+yDSlMBW/YbEwTR0cjMnTJ6+xm
 Ep4uScylVgbgiYvLgMazplsLTp4Y09JruQOze3a5BADfnoJXrpuD8xllu w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="288645023"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="288645023"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:18:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="581228962"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:18:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:18:04 +0300
Message-Id: <cover.1660137416.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/15] drm/i915: stop modifying "const"
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

v2 of https://patchwork.freedesktop.org/series/105358/

Move any device info that gets modified runtime into runtime info,
making device info a const pointer. Finally throw mkwrite_device_info()
into the curb.

The data size increases by sizeof(struct intel_runtime_info) for each
struct intel_device_info in i915_pci.c.

Jani Nikula (15):
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
 drivers/gpu/drm/i915/i915_driver.c            |  19 +-
 drivers/gpu/drm/i915/i915_drv.h               |  35 +--
 drivers/gpu/drm/i915/i915_gem.c               |   3 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +-
 drivers/gpu/drm/i915/i915_pci.c               | 240 +++++++++---------
 drivers/gpu/drm/i915/intel_device_info.c      |  73 +++---
 drivers/gpu/drm/i915/intel_device_info.h      |  82 +++---
 drivers/gpu/drm/i915/intel_uncore.c           |   2 +-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |   8 +-
 20 files changed, 259 insertions(+), 256 deletions(-)

-- 
2.34.1

