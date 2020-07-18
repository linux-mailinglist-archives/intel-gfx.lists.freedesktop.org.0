Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 423F422474C
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jul 2020 02:04:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894C06E2CC;
	Sat, 18 Jul 2020 00:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61DF6E17B
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jul 2020 00:04:38 +0000 (UTC)
IronPort-SDR: Xj9SXPKWSSD7s0k2Gvg7c0Iv7YS5zaxbGLSreJOvHRokYnkEwmqoq9vPMICSYM/AQWmRLf80ay
 QU4fcx1nuhaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="129778153"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="129778153"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 17:04:38 -0700
IronPort-SDR: QeY4KVNRJkRnLO3paZaWG4AY3ptaCf2x2WYWX/FuUlMTod4GhzDnkEQJivqDCqH43qIvRQ1vW9
 W81RQcIR9m6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="270941278"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jul 2020 17:04:38 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jul 2020 17:04:33 -0700
Message-Id: <20200718000437.69033-1-umesh.nerlige.ramappa@intel.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This cover letter is included to trigger "Test-with" an IGT patch.

Tests - https://patchwork.freedesktop.org/patch/377905/?series=79617&rev=1

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20200717235842.68574-1-umesh.nerlige.ramappa@intel.com

Piotr Maciejewski (4):
  drm/i915/perf: Ensure observation logic is not clock gated
  drm/i915/perf: Whitelist OA report trigger registers
  drm/i915/perf: Whitelist OA counter and buffer registers
  drm/i915/perf: Map OA buffer to user space for gen12 performance query

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  60 +++++++
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  15 +-
 drivers/gpu/drm/i915/i915_perf.c              | 167 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |   5 +
 drivers/gpu/drm/i915/i915_reg.h               |  12 ++
 include/uapi/drm/i915_drm.h                   |  32 ++++
 8 files changed, 290 insertions(+), 5 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
