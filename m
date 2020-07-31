Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58249234EC3
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Aug 2020 01:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 838216E103;
	Fri, 31 Jul 2020 23:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBDFD6E0FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 23:58:49 +0000 (UTC)
IronPort-SDR: y4cRK8qmDzwALehr5LRxZ3rBxsDbnZQpglP+O9rzK68dE88+MI2VtXFl4n7YhHb2w9IUbIYyII
 gfCOpfCrco5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9699"; a="131458108"
X-IronPort-AV: E=Sophos;i="5.75,420,1589266800"; d="scan'208";a="131458108"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 16:58:49 -0700
IronPort-SDR: G8wvUyer2LQ/QvfVQrGJbs/ZMeHx20kcXXeDqQ3EQ0AWtOdjrw4kh2BdE12DDVRfDFxCcZOing
 9e+dWO6VnUew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,420,1589266800"; d="scan'208";a="395475544"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2020 16:58:49 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 16:58:44 -0700
Message-Id: <20200731235848.40971-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Allow privileged user to map the OA buffer
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

- Fixes a memory corruption due to addition of OA whitelist on demand.
- Spinlock when applying whitelist

This cover letter is included to trigger "Test-with" an IGT patch.

Tests - https://patchwork.freedesktop.org/series/80113/
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20200730230002.55737-1-umesh.nerlige.ramappa@intel.com

Piotr Maciejewski (1):
  drm/i915/perf: Ensure observation logic is not clock gated

Umesh Nerlige Ramappa (3):
  drm/i915/perf: Whitelist OA report trigger registers
  drm/i915/perf: Whitelist OA counter and buffer registers
  drm/i915/perf: Map OA buffer to user space for gen12 performance query

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |   2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 129 ++++++++--
 drivers/gpu/drm/i915/gt/intel_workarounds.h   |   7 +
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   5 +
 drivers/gpu/drm/i915/i915_perf.c              | 224 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |   6 +
 drivers/gpu/drm/i915/i915_reg.h               |  10 +
 include/uapi/drm/i915_drm.h                   |  33 +++
 10 files changed, 392 insertions(+), 28 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
