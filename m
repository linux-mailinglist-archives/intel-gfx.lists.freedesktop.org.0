Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D55422902B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 07:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2D86E32A;
	Wed, 22 Jul 2020 05:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 312B86E328
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 05:55:19 +0000 (UTC)
IronPort-SDR: f+cif47Ha/uiDkhpwZGBxT3bhXmHNH+zxS7MmNQV+c/1/4YOIJbQ4yLEYmWDRqSym91eSz3TVZ
 kQlwXRXJkq7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="211818692"
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="211818692"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 22:55:18 -0700
IronPort-SDR: 7H66FF3y756oVDZqAS+5iuHmjy2CbUu88gHtMUL6L4vrD3EEx56fANkVjnbdHOhoGQ7eINe82h
 8wcDFRoxTsFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="284112221"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga003.jf.intel.com with ESMTP; 21 Jul 2020 22:55:18 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jul 2020 22:55:14 -0700
Message-Id: <20200722055518.44028-1-umesh.nerlige.ramappa@intel.com>
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

Tests - https://patchwork.freedesktop.org/series/79745/

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20200722053805.57139-1-umesh.nerlige.ramappa@intel.com

Piotr Maciejewski (4):
  drm/i915/perf: Ensure observation logic is not clock gated
  drm/i915/perf: Whitelist OA report trigger registers
  drm/i915/perf: Whitelist OA counter and buffer registers
  drm/i915/perf: Map OA buffer to user space for gen12 performance query

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  60 +++++
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  38 ++-
 drivers/gpu/drm/i915/i915_perf.c              | 239 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |  17 ++
 drivers/gpu/drm/i915/i915_reg.h               |  12 +
 include/uapi/drm/i915_drm.h                   |  32 +++
 8 files changed, 396 insertions(+), 6 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
