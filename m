Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A18281F05
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Oct 2020 01:28:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36C616E9E8;
	Fri,  2 Oct 2020 23:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B29D6E9E8
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 23:28:02 +0000 (UTC)
IronPort-SDR: 07Rm9RQb60HDrgjr/+UfG0hW1OekMjFnT3Myyto1LrNfCXjiswbcxU8pzeLAzztfgzjsxNmy+R
 ZBshi199ekeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9762"; a="163969275"
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="163969275"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:28:01 -0700
IronPort-SDR: w5i1P41SOHhKSkhh8U5eCJ243qG2kTFL0VTLPgyvZHs4cCZsU0QW32HUi2B1qsLajMsoZmVoQ7
 2v8o+yQ1JYRg==
X-IronPort-AV: E=Sophos;i="5.77,329,1596524400"; d="scan'208";a="325972361"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 16:28:01 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>
Date: Fri,  2 Oct 2020 16:27:55 -0700
Message-Id: <20201002232801.51936-1-umesh.nerlige.ramappa@intel.com>
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
v5:
- Split patches into smaller units
- Grow the wal->list only for the engine that needs it.
- Bring back the wal->count check when applying whitelist during resume

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20201002013957.16456-1-umesh.nerlige.ramappa@intel.com

Piotr Maciejewski (1):
  drm/i915/perf: Ensure observation logic is not clock gated

Umesh Nerlige Ramappa (5):
  drm/i915/gt: Lock intel_engine_apply_whitelist with uncore->lock
  drm/i915/perf: Whitelist OA report trigger registers
  drm/i915/gt: Refactor _wa_add to reuse wa_index and wa_list_grow
  drm/i915/perf: Whitelist OA counter and buffer registers
  drm/i915/perf: Map OA buffer to user space for gen12 performance query

 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h      |   2 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 212 ++++++++++++----
 drivers/gpu/drm/i915/gt/intel_workarounds.h   |   7 +
 .../gpu/drm/i915/gt/intel_workarounds_types.h |   5 +
 drivers/gpu/drm/i915/i915_perf.c              | 228 +++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h        |   8 +
 drivers/gpu/drm/i915/i915_reg.h               |  10 +
 include/uapi/drm/i915_drm.h                   |  33 +++
 9 files changed, 455 insertions(+), 52 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
