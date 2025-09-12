Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C82BB5522F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0EE10EC79;
	Fri, 12 Sep 2025 14:49:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OvjkFud8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C7210E1D4;
 Fri, 12 Sep 2025 14:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688544; x=1789224544;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SNeakIRlfKhq43LW6oZaameNLtAuNPayhxuYCXUl0mM=;
 b=OvjkFud8+qbaQ6wkGkvC6qWbAkKXUJCfu8l5JaX8OFSOi3aHbbji4Q4N
 lAig4xIo4L1Z9FYymg8wQmrRFeo9moIHSnRWMqJCXveuQJ0p2dn7EtX2J
 Y/2XUxoYHYlTWdjiJ18yaZU9lhCw77PkxV1uPtB5tHyvCBKNgfgZh2oi/
 HYBzRh9BMXY+OnlsPwg09/uF634EX77h1M5cNS83Fhr422o6AIq/6ZUQL
 w4dnmeGgpusiwNbsVsRw/vj3jjWSRDlMr/tHc9rZOi+YiZbaNKoqInobR
 RAAqRkr/fZ16rSo4MGpZW9QkuAfXpTon1PFl8IxZIh9ZqgYyHBZVnnw6U w==;
X-CSE-ConnectionGUID: zgy858p8T2CtgM8P1GzzLA==
X-CSE-MsgGUID: z2quUeCQTsenwL4PE8agZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="59074519"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59074519"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:03 -0700
X-CSE-ConnectionGUID: RKRygyJQTxGr0XX2TZGmRA==
X-CSE-MsgGUID: Fs1emlphTayF3rO3TLY0lA==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 00/15] drm/i915: vlv clock cleanups
Date: Fri, 12 Sep 2025 17:48:39 +0300
Message-ID: <cover.1757688216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

This is v2 of [1]. There were issues with sideband get/put, discovered
in CI, so I ended up doing what Ville suggested in [2], and handling
sideband get/put inside the functions. This is done in new patches 1-2,
which obviously caused some rebase churn in the rest. I also removed
vlv_get_cck_clock_hpll() completely, this is new patch 11.

I added r-b/ack from the previous version in some patches, dropped them
from others, depending on how much changes there were. Sorry about the
trouble, please look into this again.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1755607980.git.jani.nikula@intel.com
[2] https://lore.kernel.org/r/aMAqlVAw2NqlwQ5_@intel.com

Jani Nikula (15):
  drm/i915: do cck get/put inside vlv_get_hpll_vco()
  drm/i915: do cck get/put inside vlv_get_cck_clock()
  drm/i915: add vlv_clock_get_gpll()
  drm/i915: add vlv_clock_get_czclk()
  drm/i915: add vlv_clock_get_hrawclk()
  drm/i915: make vlv_get_cck_clock_hpll() static
  drm/i915: add vlv_clock_get_cdclk()
  drm/i915: make vlv_get_cck_clock() static
  drm/i915: rename vlv_get_hpll_vco() to vlv_clock_get_hpll_vco()
  drm/i915: cache the results in vlv_clock_get_hpll_vco() and use it
    more
  drm/i915: remove vlv_get_cck_clock_hpll()
  drm/i915: remove intel_update_czclk() as unnecessary
  drm/i915: log HPLL frequency similar to CZCLK
  drm/i915: move hpll and czclk caching under display
  drm/i915: split out vlv_clock.[ch]

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 36 +++------
 drivers/gpu/drm/i915/display/intel_display.c  | 61 --------------
 drivers/gpu/drm/i915/display/intel_display.h  |  6 --
 .../gpu/drm/i915/display/intel_display_core.h |  5 ++
 .../drm/i915/display/intel_display_driver.c   |  1 -
 drivers/gpu/drm/i915/display/vlv_clock.c      | 81 +++++++++++++++++++
 drivers/gpu/drm/i915/display/vlv_clock.h      | 38 +++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  3 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 18 ++---
 drivers/gpu/drm/i915/i915_drv.h               |  3 -
 drivers/gpu/drm/xe/xe_device_types.h          |  6 --
 12 files changed, 145 insertions(+), 114 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.c
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.h

-- 
2.47.3

