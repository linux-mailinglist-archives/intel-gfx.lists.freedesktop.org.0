Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D26605265
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 23:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AE7A10E05E;
	Wed, 19 Oct 2022 21:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999A910E028
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 21:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666216770; x=1697752770;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7XtbOCh3TJQbhGMeWPtnY1mU7vAFPinJsy3UavrQP3U=;
 b=na6venwWZZ7BtIEIYnrbJf5YMloDHsJR/4eJikrGN41dxH/6/q1iSa9y
 2SelBf7E++Yg5YhKK/w4iQhaOhfOzNDzN7x6KdVMWX1UsREAbcKOekv9P
 l7E7uQw8n0LG/pNIShCOPtylErsl4bdCZ6QP7rx6hGibWBzPy2y7+dtXL
 bwltGo6yLdNMxAC/tZXXzFphcHVsgZHpakMm8uAYvPGGJKZ3panTdqYWG
 kQpmIEXLX8KYiupM3c1+muEiO8aKuqeftDe5Te7PG81NsI/a6aWUxccFk
 NyGT2WO3YWhifu9mL64vVz8Fv6gcacOdz+T0uvLwcyCXgwKtq1NvUWBAI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="306529808"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="306529808"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 14:59:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="660548426"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="660548426"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 14:59:27 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Oct 2022 23:59:04 +0200
Message-Id: <20221019215906.295296-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] drm/i915: refactor
 i915_vma_move_to_active
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patchset refactors code related to i915_vma_move_to_active.
I hope 1st patch is quite straightforward.
For the 2nd, I am not sure where to put the helper, any better proposition
welcome.

v2:
    - moved i915_request_await_object to _i915_vma_move_to_active (Tvrtko)

Regards
Andrzej


Andrzej Hajda (2):
  drm/i915: call i915_request_await_object from _i915_vma_move_to_active
  drm/i915/selftests: add igt_vma_move_to_active_unlocked

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 17 ++++-----
 .../i915/gem/selftests/i915_gem_client_blt.c  | 22 +++---------
 .../i915/gem/selftests/i915_gem_coherency.c   |  4 +--
 .../drm/i915/gem/selftests/i915_gem_context.c | 16 +++------
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 10 ++----
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  8 ++---
 .../drm/i915/gem/selftests/igt_gem_utils.h    | 14 ++++++++
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  4 +--
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  4 +--
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 14 ++------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 35 +++----------------
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 33 ++++-------------
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |  5 ++-
 drivers/gpu/drm/i915/gt/selftest_rps.c        |  8 ++---
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 22 ++++--------
 drivers/gpu/drm/i915/gvt/scheduler.c          |  5 ++-
 drivers/gpu/drm/i915/i915_perf.c              |  4 +--
 drivers/gpu/drm/i915/i915_vma.c               |  5 +++
 drivers/gpu/drm/i915/i915_vma.h               |  1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |  9 ++---
 drivers/gpu/drm/i915/selftests/igt_spinner.c  | 20 ++---------
 21 files changed, 77 insertions(+), 183 deletions(-)

-- 
2.34.1

