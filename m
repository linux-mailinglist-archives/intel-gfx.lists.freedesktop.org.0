Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D0A59CCBB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 02:05:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9768AA74BB;
	Tue, 23 Aug 2022 00:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1588A7328
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213023; x=1692749023;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FjPrK8z77ty+xeUvHzjv5PNk/hV1K32/YUW9BrKoYXw=;
 b=m7Rad6ERbgfhK8wjNAjZLQZyJuUzIWGxvYyssZlgfF/deDFZKgO4i2Iy
 Rikoohwjv5NcylT9+X/UMHTx5mLN+OphO4+/CCmlYJXeeKGQ7KPrDMs6q
 9ylsMqaIwRtOcfmMSHh3mqHWAcSpK62AwV4e0KSExEqnW987xbREBkvnX
 3RVWU+iyFacV1+jw4ullkiAC63NiVKGknJsc49S2G7p3/8gLOk7tRkzXT
 W8hgOI/mtgXOGZcHOfFgLY5n3stLl6cix+zfxpC2KjLIToJ6pi97cadRL
 j8ORvrDDmT+JvlA8ocerFPnqTZGbci3IzfnKTMeNOV9XZljx4MV81qOC5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304824"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304824"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775504"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:23 +0000
Message-Id: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/19] Add DG2 OA support
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
The below 2 patches have uapi changes:

drm/i915/perf: Add OA formats for DG2
drm/i915/perf: Apply Wa_18013179988

Test-with: 20220822235657.280702-1-umesh.nerlige.ramappa@intel.com
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh Nerlige Ramappa (18):
  drm/i915/perf: Fix OA filtering logic for GuC mode
  drm/i915/perf: Add OA formats for DG2
  drm/i915/perf: Fix noa wait predication for DG2
  drm/i915/perf: Determine gen12 oa ctx offset at runtime
  drm/i915/perf: Enable commands per clock reporting in OA
  drm/i915/perf: Use helpers to process reports w.r.t. OA buffer size
  drm/i915/perf: Simply use stream->ctx
  drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
  drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
  drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
  drm/i915/perf: Store a pointer to oa_format in oa_buffer
  drm/i915/perf: Parse 64bit report header formats correctly
  drm/i915/perf: Add Wa_16010703925:dg2
  drm/i915/perf: Add Wa_1608133521:dg2
  drm/i915/perf: Add Wa_1508761755:dg2
  drm/i915/perf: Apply Wa_18013179988
  drm/i915/perf: Save/restore EU flex counters across reset
  drm/i915/perf: Enable OA for DG2

Vinay Belgaumkar (1):
  drm/i915/guc: Support OA when Wa_16011777198 is enabled

 drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
 drivers/gpu/drm/i915/gt/intel_lrc.h           |   2 +
 drivers/gpu/drm/i915/gt/intel_sseu.c          |   4 +-
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   9 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   8 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  45 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   3 +
 drivers/gpu/drm/i915/i915_getparam.c          |   3 +
 drivers/gpu/drm/i915/i915_pci.c               |   1 +
 drivers/gpu/drm/i915/i915_perf.c              | 769 ++++++++++++++----
 drivers/gpu/drm/i915/i915_perf.h              |   2 +
 drivers/gpu/drm/i915/i915_perf_oa_regs.h      |   6 +-
 drivers/gpu/drm/i915/i915_perf_types.h        |  53 +-
 drivers/gpu/drm/i915/intel_device_info.h      |   1 +
 drivers/gpu/drm/i915/selftests/i915_perf.c    |  16 +-
 include/uapi/drm/i915_drm.h                   |  12 +
 19 files changed, 746 insertions(+), 195 deletions(-)

-- 
2.25.1

