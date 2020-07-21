Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA101227518
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 04:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF34F6E0ED;
	Tue, 21 Jul 2020 02:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 498D46E09A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 02:00:14 +0000 (UTC)
IronPort-SDR: +p096cTOJj1tc41RsU0sEVpSsYB9ot4JsLSVZsdhrd6FIW0unn/jNtlJ9K5Gagy1Vft4Y4bFkf
 y20yv0j7L1Tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="138142342"
X-IronPort-AV: E=Sophos;i="5.75,377,1589266800"; d="scan'208";a="138142342"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 19:00:13 -0700
IronPort-SDR: SmKz6+OOBDu2D8CXxtBEyLm1Hl8XJfIl6+jTAXl1QIQUXtGNftsdsXvvmEh1KH34m+6ZXeXcti
 Ty1AisAi74Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,377,1589266800"; d="scan'208";a="431817876"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Jul 2020 19:00:12 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 19:00:08 -0700
Message-Id: <20200721020012.46506-1-umesh.nerlige.ramappa@intel.com>
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

This cover letter is included to trigger "Test-with" an IGT patch.

Tests - https://patchwork.freedesktop.org/series/79695/

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20200721015717.46279-1-umesh.nerlige.ramappa@intel.com

Piotr Maciejewski (4):
  drm/i915/perf: Ensure observation logic is not clock gated
  drm/i915/perf: Whitelist OA report trigger registers
  drm/i915/perf: Whitelist OA counter and buffer registers
  drm/i915/perf: Map OA buffer to user space for gen12 performance query

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  60 +++++
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  25 +-
 drivers/gpu/drm/i915/i915_perf.c              | 221 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |  17 ++
 drivers/gpu/drm/i915/i915_reg.h               |  12 +
 include/uapi/drm/i915_drm.h                   |  32 +++
 8 files changed, 364 insertions(+), 7 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
