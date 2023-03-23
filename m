Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7A46C7378
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 23:59:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BE7F10EB7D;
	Thu, 23 Mar 2023 22:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614FD10E13F
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 22:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679612342; x=1711148342;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AbCCWncZhauAFZZcG671lN4PgbibslDqu545KICRot0=;
 b=CDLhJykp0zXOOoB5xocjxeU9apm0A47hWmi7tDYSBY711WBCvQ5x3Ysf
 Tcg7ViFVLcPa0bhEkp+bQRXJ6EH5yr2e7KY7jUNsWM8d5sfoZEG91oSKP
 vsaOofkUbsaDk6Dw2OnoXlD+M8lG3gEkvQLN3XJvR9sgjr5bW+Sq9nOgZ
 tlFU4ieZ71+KgePXektVlxEMFUV4Se39H+nH/Y3EEfyaDV01o+dDHQ4k7
 3PQ/y6IKOnl5cj81rFRxTANQ5WGdqHQTh67AHqUKNdWsT4nyo3GvE68DV
 7e71jsalCSrmh4TvYJuq7yBIOmGuGsijmsckCCZ5Z0JauAKN4PmOg9HdA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="320033247"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="320033247"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="771639212"
X-IronPort-AV: E=Sophos;i="5.98,286,1673942400"; d="scan'208";a="771639212"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 15:59:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 15:58:50 -0700
Message-Id: <20230323225901.3743681-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] Add OAM support for MTL
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

The OAM unit captures OA reports specific to the media engines. Add support to
program the OAM unit on media tile on MTL.

The OAM unit is selected by passing the class:instance of a media engine to perf
parameters. Corresponding UMD changes are posted to the igt-dev repo as part of
supporting the GPUvis tool.

v2: Incorporate review feedback (Jani, Ashutosh)
v3: Incorporate review feedback (Jani, Ashutosh)
v4: Incorporate review feedback (Ashutosh)
v5:
- Enforce paired engine-class and engine-instance configuration
- Include fix for Wa_14017512683

v6: Rebase to fix build failure
v7: Incorporate review comments
v8:
- Checkpatch fixes
- Initialize perf group irrespective of MC6 state (Ashutosh)
- Use group type check when opening perf stream (Ashutosh)

v9: No changes, just a CI rerun with modified IGT (v5).

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230323225534.3739835-1-umesh.nerlige.ramappa@intel.com

Chris Wilson (1):
  drm/i915/perf: Drop wakeref on GuC RC error

Umesh Nerlige Ramappa (9):
  drm/i915/perf: Validate OA sseu config outside switch
  drm/i915/perf: Group engines into respective OA groups
  drm/i915/perf: Fail modprobe if i915_perf_init fails on OOM
  drm/i915/perf: Parse 64bit report header formats correctly
  drm/i915/perf: Handle non-power-of-2 reports
  drm/i915/perf: Add engine class instance parameters to perf
  drm/i915/perf: Add support for OA media units
  drm/i915/perf: Pass i915 object to perf revision helper
  drm/i915/perf: Wa_14017512683: Disable OAM if media C6 is enabled in
    BIOS

Vinay Belgaumkar (1):
  drm/i915/mtl: Synchronize i915/BIOS on C6 enabling

 drivers/gpu/drm/i915/gt/intel_engine_types.h |  10 +
 drivers/gpu/drm/i915/gt/intel_rc6.c          |  26 +-
 drivers/gpu/drm/i915/gt/intel_rc6.h          |   2 +
 drivers/gpu/drm/i915/gt/intel_rc6_types.h    |   2 +
 drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
 drivers/gpu/drm/i915/i915_driver.c           |   4 +-
 drivers/gpu/drm/i915/i915_drv.h              |   2 +
 drivers/gpu/drm/i915/i915_getparam.c         |   2 +-
 drivers/gpu/drm/i915/i915_pci.c              |   1 +
 drivers/gpu/drm/i915/i915_perf.c             | 564 +++++++++++++++----
 drivers/gpu/drm/i915/i915_perf.h             |   4 +-
 drivers/gpu/drm/i915/i915_perf_oa_regs.h     |  78 +++
 drivers/gpu/drm/i915/i915_perf_types.h       |  75 ++-
 drivers/gpu/drm/i915/intel_device_info.h     |   1 +
 include/uapi/drm/i915_drm.h                  |  23 +
 15 files changed, 673 insertions(+), 124 deletions(-)

-- 
2.36.1

