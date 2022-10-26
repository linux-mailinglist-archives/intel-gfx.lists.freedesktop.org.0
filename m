Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F9060EB73
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 00:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48EBA10E533;
	Wed, 26 Oct 2022 22:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E16B710E533
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 22:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666822865; x=1698358865;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yvtkaKkqrCXSymCz3lFMUswjF3RrfcWJbyNYtXtYdsY=;
 b=BsCJTYu1PWdi/p9QorbkAPp/2GodlhzpYZohS1saOMTiqMKOEL/F6Njm
 F1+4lS7nhEuVvQ+cfsEB0tkNGXdFu31qXS//wE3cNbKoin2OkzFG4dpid
 v/l4JNyzg2ytAUr2ydPZXPTuY+E/uJurlDDJOBfTMMdTLblFOInJ1NvyL
 xmRhei9DtJ6Prk4W7njHs1dbFOcq32Euq9Hc12NWe8OKvbJdEseV+ODef
 HWxdzASFEVb5MuKugPP2sr+SYbnA8iHuU7RwNfE31PfGzs7q9W6bU5AUF
 X05osegFF/Yz1G7zeFls6NCjO3xxfvZjr3Q1C+Y5ql5Dog269iY+uAYcI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394390422"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="394390422"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721431379"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="721431379"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 22:20:46 +0000
Message-Id: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 00/16] Add DG2 OA support
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

Add OA format support for DG2 and various fixes for DG2.

This series has 2 uapi changes listed below:

1) drm/i915/perf: Add OAG and OAR formats for DG2

DG2 has new OA formats defined that can be selected by the
user. The UMD changes that are consumed by GPUvis are:
https://patchwork.freedesktop.org/patch/504456/?series=107633&rev=5

Mesa MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/18893

2) drm/i915/perf: Apply Wa_18013179988

DG2 has a bug where the OA timestamp does not tick at the CS timestamp
frequency. Instead it ticks at a multiple that is determined from the
CTC_SHIFT value in RPM_CONFIG. Since the timestamp is used by UMD to
make sense of all the counters in the report, expose the OA timestamp
frequency to the user. The interface is generic and applies to all
platforms. On platforms where the bug is not present, this returns the
CS timestamp frequency. UMD specific changes consumed by GPUvis are:
https://patchwork.freedesktop.org/patch/504464/?series=107633&rev=5

Mesa MR: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/18893

v2:
- Add review comments
- Update uapi changes in cover letter
- Drop patches for non-production platforms
drm/i915/perf: Use helpers to process reports w.r.t. OA buffer size
drm/i915/perf: Add Wa_16010703925:dg2

- Drop 64-bit OA format changes for now
drm/i915/perf: Parse 64bit report header formats correctly
drm/i915/perf: Add Wa_1608133521:dg2

v3:
- Add review comments to patches 02, 04, 05, 14
- Drop Acks

v4:
- Add review comments to patch 04
- Update R-bs
- Add MR links to patches 02 and 12

v5:
- Drop unrelated comment
- Rebase and fix MCR reg write
- On pre-gen12, EU flex config is saved/restored in the context image, so
  save/restore EU flex config only for gen12.

v6:
- Fix checkpatch issues

Test-with: 20221025200709.83314-1-umesh.nerlige.ramappa@intel.com
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Lionel Landwerlin (1):
  drm/i915/perf: complete programming whitelisting for XEHPSDV

Umesh Nerlige Ramappa (14):
  drm/i915/perf: Fix OA filtering logic for GuC mode
  drm/i915/perf: Add 32-bit OAG and OAR formats for DG2
  drm/i915/perf: Fix noa wait predication for DG2
  drm/i915/perf: Determine gen12 oa ctx offset at runtime
  drm/i915/perf: Enable bytes per clock reporting in OA
  drm/i915/perf: Simply use stream->ctx
  drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
  drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
  drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
  drm/i915/perf: Store a pointer to oa_format in oa_buffer
  drm/i915/perf: Add Wa_1508761755:dg2
  drm/i915/perf: Apply Wa_18013179988
  drm/i915/perf: Save/restore EU flex counters across reset
  drm/i915/perf: Enable OA for DG2

Vinay Belgaumkar (1):
  drm/i915/guc: Support OA when Wa_16011777198 is enabled

 drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   1 +
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   4 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/gt/intel_lrc.h           |   2 +
 drivers/gpu/drm/i915/gt/intel_sseu.c          |   4 +-
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   9 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |  10 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  66 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   5 +
 drivers/gpu/drm/i915/i915_getparam.c          |   3 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_perf.c              | 576 ++++++++++++++----
 drivers/gpu/drm/i915/i915_perf.h              |   2 +
 drivers/gpu/drm/i915/i915_perf_oa_regs.h      |   6 +-
 drivers/gpu/drm/i915/i915_perf_types.h        |  47 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   2 +
 drivers/gpu/drm/i915/selftests/i915_perf.c    |  16 +-
 include/uapi/drm/i915_drm.h                   |  10 +
 20 files changed, 630 insertions(+), 141 deletions(-)

-- 
2.25.1

