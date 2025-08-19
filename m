Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 769C8B2C432
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACC910E1A5;
	Tue, 19 Aug 2025 12:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MGlQqOAd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49CD610E1A5;
 Tue, 19 Aug 2025 12:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608029; x=1787144029;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YEc9ATY8cUmAM6h1ycSGEYNMzyONm+fW3JB4qLH0w5Q=;
 b=MGlQqOAdq5c80JZYqDLPWCiGjaxQi/kNi7aECeldWf/EPGG0w/UrnTRV
 hq7b+f58EUXntaRjlozSfFf4JlHjSamLQ2Vk1/zthnO9YpCsr3yQxFeqX
 xGxACu8PTmNVJe6/yYyUEiZRRuUkhkXgPOX5nCfuLXRCRURYzUOiHjFhZ
 zVjcKTB7wQlzkH/vSSciqmK5JjSIb4ltHcyb2epA2itpJUXlfngQeZR7Z
 S20Y8HUTIRuYrUwNR0oGoSLmNLPHCZNM3mTEiv9CGLKt0jDx1ovkzN+wU
 kD+/6AP/BplD0T+qI+mrlkBvsEmH6T2k93+A2z24XOJmVqLhDTootU0rZ w==;
X-CSE-ConnectionGUID: f2MCdyU/Tu22RPXUUKA6Hg==
X-CSE-MsgGUID: v+d6wcerSDa1ivotYT0BUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="75300764"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75300764"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:53:48 -0700
X-CSE-ConnectionGUID: Az8H2ZiyTmGLtfKxrHZtcg==
X-CSE-MsgGUID: /V5cJ3i6SMiUpSlS5HMshQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168246418"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:53:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 00/12] drm/i915: vlv clock cleanups
Date: Tue, 19 Aug 2025 15:53:30 +0300
Message-ID: <cover.1755607980.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
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

Rebase and resend of [1].

[1] https://lore.kernel.org/r/cover.1754385408.git.jani.nikula@intel.com

Jani Nikula (12):
  drm/i915: add vlv_clock_get_gpll()
  drm/i915: add vlv_clock_get_czclk()
  drm/i915: add vlv_clock_get_hrawclk()
  drm/i915: make vlv_get_cck_clock_hpll() static
  drm/i915: add vlv_clock_get_cdclk()
  drm/i915: make vlv_get_cck_clock() static
  drm/i915: rename vlv_get_hpll_vco() to vlv_clock_get_hpll_vco()
  drm/i915: cache the results in vlv_clock_get_hpll_vco() and use it
    more
  drm/i915: remove intel_update_czclk() as unnecessary
  drm/i915: log HPLL frequency similar to CZCLK
  drm/i915: move hpll and czclk caching under display
  drm/i915: split out vlv_clock.[ch]

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 29 ++----
 drivers/gpu/drm/i915/display/intel_display.c  | 61 -------------
 drivers/gpu/drm/i915/display/intel_display.h  |  6 --
 .../gpu/drm/i915/display/intel_display_core.h |  5 ++
 .../drm/i915/display/intel_display_driver.c   |  1 -
 drivers/gpu/drm/i915/display/vlv_clock.c      | 89 +++++++++++++++++++
 drivers/gpu/drm/i915/display/vlv_clock.h      | 38 ++++++++
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  3 +-
 drivers/gpu/drm/i915/gt/intel_rps.c           | 11 ++-
 drivers/gpu/drm/i915/i915_drv.h               |  3 -
 drivers/gpu/drm/xe/xe_device_types.h          |  6 --
 12 files changed, 148 insertions(+), 105 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.c
 create mode 100644 drivers/gpu/drm/i915/display/vlv_clock.h

-- 
2.47.2

