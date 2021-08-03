Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF343DF633
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Aug 2021 22:14:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B4246E8CD;
	Tue,  3 Aug 2021 20:13:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 034D96E12B;
 Tue,  3 Aug 2021 20:13:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="213499167"
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="213499167"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 13:13:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,292,1620716400"; d="scan'208";a="568776531"
Received: from unerlige-ril-10.jf.intel.com ([10.165.21.208])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 13:13:50 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>, daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org
Date: Tue,  3 Aug 2021 13:13:41 -0700
Message-Id: <20210803201349.31031-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] Enable triggered perf query for Xe_HP
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

This is a revival of the patch series to support triggered perf query reports
from here - https://patchwork.freedesktop.org/series/83831/

The patches were not pushed earlier because corresponding UMD changes were
missing. This revival addresses UMD changes in GPUvis for this series. GPUvis
uses the perf library in igt-gpu-tools. Changes to the library are here -
https://patchwork.freedesktop.org/series/93355/

GPUvis changes will be posted as a PR once the above library and kernel changes
are pushed.

Summary of the feature:

Current platforms provide MI_REPORT_PERF_COUNT to query a snapshot of perf
counters from a batch. This mechanism does not have consistent support on all
engines for newer platforms. To support perf query, all new platforms use a
mechanism to trigger OA report snapshots into the OA buffer by writing to a HW
register from a batch. To lookup this report in the OA buffer quickly, the OA
buffer is mmapped into the user space.

This series implements the new query mechanism.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Chris Wilson (3):
  drm/i915/gt: Refactor _wa_add to reuse wa_index and wa_list_grow
  drm/i915/gt: Check for conflicting RING_NONPRIV
  drm/i915/gt: Enable dynamic adjustment of RING_NONPRIV

Piotr Maciejewski (1):
  drm/i915/perf: Ensure observation logic is not clock gated

Umesh Nerlige Ramappa (4):
  drm/i915/gt: Lock intel_engine_apply_whitelist with uncore->lock
  drm/i915/perf: Whitelist OA report trigger registers
  drm/i915/perf: Whitelist OA counter and buffer registers
  drm/i915/perf: Map OA buffer to user space for gen12 performance query

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 269 +++++++++++++-----
 drivers/gpu/drm/i915/gt/intel_workarounds.h   |   7 +
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 237 +++++++++++++++
 drivers/gpu/drm/i915/i915_perf.c              | 228 ++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |   8 +
 drivers/gpu/drm/i915/i915_reg.h               |  30 +-
 include/uapi/drm/i915_drm.h                   |  33 +++
 9 files changed, 728 insertions(+), 88 deletions(-)

-- 
2.20.1

