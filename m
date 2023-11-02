Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C190A7DF6AF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FD9010E931;
	Thu,  2 Nov 2023 15:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2285410E907
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698939782; x=1730475782;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9rQvv113HoLh9YP5KQK6D4lcTs2PhDePCmX3cyhhzsA=;
 b=YRuHHVUw0MTflLhpXOk2cDfrK4VHjzDg759bk+va9kerl8xOGbLy8FHL
 2vUYjFBNWmnHyxKLr9F/FGlGD+tud+ViqryEcUIu03bx7PynwrRDpVpbW
 YnMaIFBHJJNLtFuQ96mbmbCWVM67E5YREIniaZagXnCeVzQU2pX55wGHk
 IZHe3Zn0iQ8zu2gF2V0O08PN84FJubOXBakXjYZamkkChZf9x58qXeBFL
 YeSJl7qFQ1gQMlPftK4B+CNyXQZaWgH0//zYXpYePeITDvQOxKlMQ8tzo
 i/xJLJgqRqzR38YVRM+BLE09PqUyLH2SbDZkCzbkQtcfx2oIKoNFGXSrD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="385918414"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="385918414"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="2590495"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:42:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:42:25 +0200
Message-Id: <cover.1698939671.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/pmu: hide struct i915_pmu
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implementation details of pmu should be implementation details
hidden inside i915_pmu.c. Make it so.

BR,
Jani.


Jani Nikula (5):
  drm/i915/pmu: report irqs to pmu code
  drm/i915/pmu: convert one more container_of() to event_to_pmu()
  drm/i915/pmu: change attr_group allocation and initialization
  drm/i915/pmu: hide struct i915_pmu inside i915_pmu.c
  drm/i915: add a number of explicit includes to avoid implicit ones

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   1 +
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |   1 +
 .../drm/i915/gem/selftests/i915_gem_context.c |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   1 +
 drivers/gpu/drm/i915/gt/selftest_execlists.c  |   1 +
 drivers/gpu/drm/i915/gt/selftest_migrate.c    |   1 +
 drivers/gpu/drm/i915/gt/selftest_slpc.c       |   2 +
 drivers/gpu/drm/i915/i915_drv.h               |   5 +-
 drivers/gpu/drm/i915/i915_irq.c               |   6 +-
 drivers/gpu/drm/i915/i915_pmu.c               | 216 ++++++++++++++++--
 drivers/gpu/drm/i915/i915_pmu.h               | 138 +----------
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   1 +
 drivers/gpu/drm/i915/selftests/i915_request.c |   4 +-
 drivers/gpu/drm/i915/selftests/igt_mmap.c     |   2 +
 .../drm/i915/selftests/intel_memory_region.c  |   1 +
 16 files changed, 214 insertions(+), 169 deletions(-)

-- 
2.39.2

