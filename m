Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFED7B3272
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 14:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82AF210E6FC;
	Fri, 29 Sep 2023 12:25:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87A510E6FC;
 Fri, 29 Sep 2023 12:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695990325; x=1727526325;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fmYhpna0hQ2lGSob9Ctdf0iSt9jYnkevBMIO6lr1eic=;
 b=S7pfNA8cC5zZVvLzk1a3dWpktC71KE3oDTTWFR62EhSnfb5JAIAMIsey
 8kb7Rg2wxBMNCOfWGQABnoo6YTSCkofsskIib03D91F2LUxx4dIVKSXTS
 uHTMpXWnBv5InTsOXN/ST7qaMdZ6SmwahaSe+Fd8EOl7SqhX6WhaXzP1U
 KCrdSDNoxBFa2gVHJFckG3wUmbGkj34Bmk3oPB+/+gFtTnG36Ra86W/v4
 bNBB8iHPysearJIUrtHesRbcyyRxmpuDn2t3gJQ36883KHVQkUoDmCpDQ
 HnmUq5hUV5vq3nEVm9/Wnj9FzMgCOY4txbB+h45kd4ay7V7oVXmDIjGX1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="446443759"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="446443759"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726577122"
X-IronPort-AV: E=Sophos;i="6.03,187,1694761200"; d="scan'208";a="726577122"
Received: from pbrady4x-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.203.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 05:25:23 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 13:25:05 +0100
Message-Id: <20230929122517.349348-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 00/12] fdinfo tests,
 intel_gpu_top memory support, etc
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Some basic testst for fdinfo memory stats, intel_gpu_top memory stats support
(first draft) and a couple fixlets.

Tvrtko Ursulin (12):
  tests/i915/drm_fdinfo: Check engine info is supported
  tests/i915/drm_fdinfo: Stress test context close versus fdinfo reads
  tests/i915/drm_fdinfo: Add some memory info tests
  tools/intel_gpu_top: Fix clients header width when no clients
  tools/intel_gpu_top: Fix client layout on first sample period
  tools/intel_gpu_top: Optimise interactive display a bit
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
 tools/intel_gpu_top.c    | 250 +++++++++++++++++++++++++++++-----
 7 files changed, 518 insertions(+), 42 deletions(-)

-- 
2.39.2

