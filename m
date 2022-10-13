Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2A85FDADE
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 15:30:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCD710E241;
	Thu, 13 Oct 2022 13:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 519B910E23F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Oct 2022 13:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665667817; x=1697203817;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S6nxXiqwDTfUURKcx5Qdjwvkirc7kjq78ey5qXJSs6w=;
 b=jdeah3qXxIJz1Wlly5I7xsshT+57L1LZIRbCLYMctFW29gSb8bMkwuug
 QDoGkT6zHxDZT+UvfLTxdR3PtUOPl2i1fJvXwQ5CvNVb6DLYDgSLSgqc0
 triKxW2sllYUnt+32S5W5s8M/N35b9fQCQ8lVNQsXZKihN6jhnTuw7Y6A
 YxNviVWCoT5rj5b1VQoKDTlNAZGNwGHkRN7xvQRCehA86Lrza7eApImZr
 n27vgpnlaZyuORMp9mUAZmKt3uwkdeHpR1FnugqtfTc0jRkZdTkNoBsQI
 4M8Klw75RMUP4rFgnNJnFKHIoBnFzAgCEyKoGTMtV5F8LbLJDhKhvbqnA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="391385768"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="391385768"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 06:30:16 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="716336693"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="716336693"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 06:30:13 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Oct 2022 15:29:59 +0200
Message-Id: <20221013133001.3639326-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915: refactor 915_vma_move_to_active
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

Regards
Andrzej


Andrzej Hajda (2):
  drm/i915: add wait and lock to i915_vma_move_to_active
  drm/i915/selftests: add igt_vma_move_to_active_unlocked

 .../i915/gem/selftests/i915_gem_client_blt.c  | 22 +++---------
 .../i915/gem/selftests/i915_gem_coherency.c   |  4 +--
 .../drm/i915/gem/selftests/i915_gem_context.c | 20 +++--------
 .../drm/i915/gem/selftests/i915_gem_mman.c    | 10 ++----
 .../drm/i915/gem/selftests/igt_gem_utils.c    | 12 ++-----
 .../drm/i915/gem/selftests/igt_gem_utils.h    | 14 ++++++++
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  4 +--
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |  4 +--
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 16 ++-------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 35 +++----------------
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 35 ++++---------------
 drivers/gpu/drm/i915/gt/selftest_mocs.c       |  7 ++--
 drivers/gpu/drm/i915/gt/selftest_rps.c        |  8 ++---
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 28 ++++-----------
 drivers/gpu/drm/i915/gvt/scheduler.c          |  5 ++-
 drivers/gpu/drm/i915/i915_perf.c              |  4 +--
 drivers/gpu/drm/i915/i915_vma.h               |  6 +++-
 drivers/gpu/drm/i915/selftests/i915_request.c |  9 ++---
 drivers/gpu/drm/i915/selftests/igt_spinner.c  | 20 ++---------
 19 files changed, 67 insertions(+), 196 deletions(-)

-- 
2.34.1

