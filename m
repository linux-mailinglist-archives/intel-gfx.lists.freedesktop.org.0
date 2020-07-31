Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48235234800
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 16:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EA06EAD3;
	Fri, 31 Jul 2020 14:47:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B421E6EACA
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 14:46:44 +0000 (UTC)
IronPort-SDR: K9/8jsr4PInWD+ND3WH6gHPn8qNhuvjP6QFmjOUj2XZBhdc2ccPjuGGYvjTy2HT4kJ2jxPxnat
 ku0fGX+rr+zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9698"; a="131857552"
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="131857552"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2020 07:46:44 -0700
IronPort-SDR: COek4id6d+6Ghj/yKCQmI2h6TQm1+84+4vtlf8qR4mz+VkG3lGZR+UA2I+Vw5Tv8T12KDH/+BB
 xASEztfEIfYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,418,1589266800"; d="scan'208";a="331081308"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga007.jf.intel.com with ESMTP; 31 Jul 2020 07:46:44 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 07:46:39 -0700
Message-Id: <20200731144643.32364-1-umesh.nerlige.ramappa@intel.com>
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

Fixes a memory corruption due to addition of OA whitelist on demand.

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
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 122 ++++++++--
 drivers/gpu/drm/i915/gt/intel_workarounds.h   |   7 +
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   5 +
 drivers/gpu/drm/i915/i915_perf.c              | 224 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |   6 +
 drivers/gpu/drm/i915/i915_reg.h               |  10 +
 include/uapi/drm/i915_drm.h                   |  33 +++
 9 files changed, 383 insertions(+), 28 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
