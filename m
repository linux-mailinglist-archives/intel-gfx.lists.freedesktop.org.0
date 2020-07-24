Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFC422BAE4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 02:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3706E8AC;
	Fri, 24 Jul 2020 00:19:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285846E2B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 00:19:02 +0000 (UTC)
IronPort-SDR: Bvb2xNuAEx8Din+DsyRf8NMj16bdn/uV9fiL9NThDzDmblY0I8Z2yPvz9MCY3hTB7ZF7gkPP4Q
 Ii9YP0yRjw4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="149830249"
X-IronPort-AV: E=Sophos;i="5.75,388,1589266800"; d="scan'208";a="149830249"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2020 17:19:01 -0700
IronPort-SDR: sHEUo1SySQwi2OhjyGNvKukSYpi1hYwPjOQaBZUmMgfllbZG0mPbr2w/XL1sb9ZM+hoqi65Y1V
 drsRYFB+O4Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,388,1589266800"; d="scan'208";a="311217838"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jul 2020 17:19:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jul 2020 17:18:57 -0700
Message-Id: <20200724001901.35662-1-umesh.nerlige.ramappa@intel.com>
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

Tests - https://patchwork.freedesktop.org/series/79829/

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20200724001521.35201-1-umesh.nerlige.ramappa@intel.com

Piotr Maciejewski (4):
  drm/i915/perf: Ensure observation logic is not clock gated
  drm/i915/perf: Whitelist OA report trigger registers
  drm/i915/perf: Whitelist OA counter and buffer registers
  drm/i915/perf: Map OA buffer to user space for gen12 performance query

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  60 +++++
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  38 ++-
 drivers/gpu/drm/i915/i915_perf.c              | 254 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |  17 ++
 drivers/gpu/drm/i915/i915_reg.h               |  12 +
 include/uapi/drm/i915_drm.h                   |  32 +++
 8 files changed, 411 insertions(+), 6 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
