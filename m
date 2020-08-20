Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C6924C4F9
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 20:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55AE36E9A7;
	Thu, 20 Aug 2020 18:02:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00D596E9A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 18:02:06 +0000 (UTC)
IronPort-SDR: 3ZxsA+0839p/4llMp9W0TARxg2mB5C/9qqTvXZOrQuOMtjZTkIkTUHWQnBCr5Feeg1/gYE13RY
 2P054s3gWyeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="154638692"
X-IronPort-AV: E=Sophos;i="5.76,334,1592895600"; d="scan'208";a="154638692"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 11:02:06 -0700
IronPort-SDR: Qcmdcf6QRutR3GzpXN8GvuvmAArvG+9xeXLZvrrTIg0rjTAiz0FG67mWr0Xn6gzmXkc4aclxCW
 WOA9aK7Y9EMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,334,1592895600"; d="scan'208";a="442071380"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Aug 2020 11:02:00 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Aug 2020 11:01:56 -0700
Message-Id: <20200820180200.68355-1-umesh.nerlige.ramappa@intel.com>
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

Allow user to map the OA buffer and also trigger reports into it.

CI fixes:
v1: Fixes a memory corruption due to addition of OA whitelist on demand.
v2: Spinlock when applying whitelist
v3: Use uncore->lock. Do not check for wal->count when applying whitelist.

v4: Refresh and rerun with newly added test (forked access).

Tests: https://patchwork.freedesktop.org/series/80761/
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20200818203547.24461-1-umesh.nerlige.ramappa@intel.com

Piotr Maciejewski (1):
  drm/i915/perf: Ensure observation logic is not clock gated

Umesh Nerlige Ramappa (3):
  drm/i915/perf: Whitelist OA report trigger registers
  drm/i915/perf: Whitelist OA counter and buffer registers
  drm/i915/perf: Map OA buffer to user space for gen12 performance query

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 153 +++++++++---
 drivers/gpu/drm/i915/gt/intel_workarounds.h   |   7 +
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   5 +
 drivers/gpu/drm/i915/i915_perf.c              | 225 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |   5 +
 drivers/gpu/drm/i915/i915_reg.h               |  10 +
 include/uapi/drm/i915_drm.h                   |  33 +++
 9 files changed, 402 insertions(+), 40 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
