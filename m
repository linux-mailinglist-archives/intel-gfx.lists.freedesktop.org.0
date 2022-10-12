Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDBF5FCE5A
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 00:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3125A10E1D2;
	Wed, 12 Oct 2022 22:27:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A057110E149
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 22:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665613666; x=1697149666;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Wa0ylZbtImnCXB8dnwBnSmL7tE0BAhoL4K5tottBPg=;
 b=IQJwjbi3CONw3cmnpQVhaShUxHxXkcBlwF5mH8pJGodiSWuyPl8VanKn
 mjgNsG9lhBOEv1p7taHhk8T1eomrrbNPJiYbYEYW38ku9a3v1CncY8Ahh
 1mxTUp8v9yVJifOFKdK7jo3rQqR/Asr3WgS9qFYL4LsoHvFAX0OEym+c1
 ekNn/tQpT5IY4M8SZyOVCJ7Qy2mET8gZGScgFwD05mg0x5N2PtRtKkrzH
 MGu2CMg51dHTVB/25+tPsB67yq/C/l0WgBMUmC32mKloUcNzVBflJGBGQ
 xm5CMJGYzXPyLShxFXZVn+1/t45DMUFgE3ngZvMFSQktleWoHgpgmyemi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="305983956"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="305983956"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="660097636"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="660097636"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:45 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Wed, 12 Oct 2022 22:27:23 +0000
Message-Id: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/16] Add DG2 OA support
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

2) drm/i915/perf: Apply Wa_18013179988

DG2 has a bug where the OA timestamp does not tick at the CS timestamp
frequency. Instead it ticks at a multiple that is determined from the
CTC_SHIFT value in RPM_CONFIG. Since the timestamp is used by UMD to
make sense of all the counters in the report, expose the OA timestamp
frequency to the user. The interface is generic and applies to all
platforms. On platforms where the bug is not present, this returns the
CS timestamp frequency. UMD specific changes consumed by GPUvis are:
https://patchwork.freedesktop.org/patch/504464/?series=107633&rev=5

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

Test-with: 20220923195224.283045-1-umesh.nerlige.ramappa@intel.com
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
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   8 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  66 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   5 +
 drivers/gpu/drm/i915/i915_getparam.c          |   3 +
 drivers/gpu/drm/i915/i915_pci.c               |   2 +
 drivers/gpu/drm/i915/i915_perf.c              | 579 ++++++++++++++----
 drivers/gpu/drm/i915/i915_perf.h              |   2 +
 drivers/gpu/drm/i915/i915_perf_oa_regs.h      |   6 +-
 drivers/gpu/drm/i915/i915_perf_types.h        |  47 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   2 +
 drivers/gpu/drm/i915/selftests/i915_perf.c    |  16 +-
 include/uapi/drm/i915_drm.h                   |  10 +
 20 files changed, 631 insertions(+), 141 deletions(-)

-- 
2.25.1

