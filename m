Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B8D23291C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 02:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C6466E821;
	Thu, 30 Jul 2020 00:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21BED6E820
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 00:48:28 +0000 (UTC)
IronPort-SDR: uomvNe/h1ToTswT031ib8v6XyveYLgVxevgTXL66gkxFiZbvVgu/YNJQODz39IJ8XShfc+Ykxo
 eFMl1Hrs16bA==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="152751065"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="152751065"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:48:27 -0700
IronPort-SDR: kU2pjNNlQa86WK4AaCHV6gj6h8G3nemoAkEq+cMePdosr7tMc/kgUJwqH/c+qltamPZHx+ljMT
 D0OqHwQaF2Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="274032915"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2020 17:48:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 17:48:20 -0700
Message-Id: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Allow privileged user to map the OA buffer
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

This cover letter is included to trigger "Test-with" an IGT patch.

Tests - https://patchwork.freedesktop.org/series/80059/

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20200730004603.8171-1-umesh.nerlige.ramappa@intel.com

Piotr Maciejewski (4):
  drm/i915/perf: Ensure observation logic is not clock gated
  drm/i915/perf: Whitelist OA report trigger registers
  drm/i915/perf: Whitelist OA counter and buffer registers
  drm/i915/perf: Map OA buffer to user space for gen12 performance query

Umesh Nerlige Ramappa (2):
  drm/i915: Allow removal of whitelist register and refactor
  drm/i915/selftests: Clear flags when using wa->reg for comparison

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 157 +++++++++++++---
 drivers/gpu/drm/i915/gt/intel_workarounds.h   |   3 +
 .../gpu/drm/i915/gt/selftest_workarounds.c    |   3 +
 drivers/gpu/drm/i915/i915_perf.c              | 169 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |   5 +
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 include/uapi/drm/i915_drm.h                   |  16 ++
 9 files changed, 339 insertions(+), 28 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
