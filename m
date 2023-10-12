Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6943B7C676D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 10:16:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CE210E445;
	Thu, 12 Oct 2023 08:15:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8F2B10E442;
 Thu, 12 Oct 2023 08:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697098556; x=1728634556;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ikoUWd1GVs2XIRtNBTsUtk+eeIvamgrTE3niVbAs7Cw=;
 b=V5YB0AesvzjwP6Op3pSwAmg6Zm0Dy9nM3y8tJlKbTUPNX+jvpTMeb2le
 q1sGCwAYEaJEHk2fIuuKrwHlmBdekzXAHyMTUu2c9ESo+r1yVy9fr/eKc
 k/soNnjAU8Gg1Skti087zzILPaGXtcax4okFREc4halDTTxsCesk4HFIQ
 4bptXVTNkytugANkvSICEjkzGJpUulblcHs9LjaVAqxXO71IxLE/UD7Zr
 ycXZbuvYss7FKHzbRCCh9nuyYl6bYoyBau0BQ9s+uGtKfo7shNL9cA02m
 Mjj6ZcB/2F3HHwvYOa1Gs46t6nxyKtEMyOEOb6aYaA/I3/OqvtjC13Tf/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3454670"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; 
   d="scan'208";a="3454670"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="783599284"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="783599284"
Received: from maloneyj-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.239.225])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 01:15:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 09:15:38 +0100
Message-Id: <20231012081547.852052-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/9] Client memory fdinfo test and
 intel_gpu_top support
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Some new tests to exercise per client fdinfo memory stats.

Same as the previous posting, just rebased on top of latest intel_gpu_top fixes.

i915 kernel side at https://patchwork.freedesktop.org/series/119082/.

Tvrtko Ursulin (9):
  tests/i915/drm_fdinfo: Check engine info is supported
  tests/i915/drm_fdinfo: Stress test context close versus fdinfo reads
  tests/i915/drm_fdinfo: Add some memory info tests
  lib/igt_drm_fdinfo: Copy over region map name on match
  lib/igt_drm_clients: Fix client id type confusion
  lib/igt_drm_clients: Allow passing in the memory region map
  tools/intel_gpu_top: Fully wrap clients operations
  tools/intel_gpu_top: Add per client memory info
  tools/intel_gpu_top: Add ability to show memory region breakdown

 lib/igt_drm_clients.c    |   7 +-
 lib/igt_drm_clients.h    |   5 +-
 lib/igt_drm_fdinfo.c     |   4 +
 man/intel_gpu_top.rst    |   4 +
 tests/intel/drm_fdinfo.c | 286 +++++++++++++++++++++++++++++++++++++++
 tools/gputop.c           |   4 +-
 tools/intel_gpu_top.c    | 191 +++++++++++++++++++++++---
 7 files changed, 472 insertions(+), 29 deletions(-)

-- 
2.39.2

