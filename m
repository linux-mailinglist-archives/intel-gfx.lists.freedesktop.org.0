Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 168049DAC37
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 18:06:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 888D210E304;
	Wed, 27 Nov 2024 17:06:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ap/nVNNm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F65910E304;
 Wed, 27 Nov 2024 17:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732727175; x=1764263175;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lXhPuTJINwlvaNi+Ip+Irour1DaEg42el47L95BovIU=;
 b=ap/nVNNmba49C3a8YVM/ipr2U7OTvPUHF53ZVcdPvg/dPK7woQm5hkYU
 d7v/sfX7rnLwigGVztYN26Vgytc98nfwgYxcgcbeqrkSz8f0HDwsVlS2O
 0izcC7AVjJl/P2N3YEW1Q5HpQiu2aO815PDtgO7xmoRdwCYmYulP70HFD
 2s4/dF8EqjmIZ+lniK7ykmF77SSSDu9c11F8u18AdRuK5mwf/5SV/f+lr
 Ait/7HQ/wp02P0YwWJamQe9C7Q8E36AWw7zur6PnLs01eGvA4GO7dv+3u
 1l1y7GzH/cWEb/6hIzcZUnRyN4j7c5juJUBJIEYU2uw65T16Z+XcQkJ2u Q==;
X-CSE-ConnectionGUID: Oq+RDG3wQ1aK3SFPfEUi3g==
X-CSE-MsgGUID: B0enKv9cS5mcNeBXyb3Xww==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32994324"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="32994324"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:15 -0800
X-CSE-ConnectionGUID: 6MxsLyInQAa0hSiRflM9GQ==
X-CSE-MsgGUID: wnj0ukRJTr6fyHhIEvMRZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="91621164"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 09:06:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 0/7] drm/i915/display: power conversion to struct intel_display
Date: Wed, 27 Nov 2024 19:06:01 +0200
Message-Id: <cover.1732727056.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Lay the groundwork for display power code conversion to struct
intel_display. This still falls short for converting all the users of
power get/put/etc. but starts off with internal conversions and the high
level interfaces. It's a good start anyway.

BR,
Jani.

Jani Nikula (7):
  drm/i915/display: simplify conditional compilation on runtime PM debug
  drm/i915/display: convert for_each_power_well() to struct
    intel_display
  drm/i915/display: convert for_each_power_domain_well() to struct
    intel_display
  drm/i915/display: convert power wells to struct intel_display
  drm/i915/display: convert power domain code internally to struct
    intel_display
  drm/i915/display: convert high level power interfaces to struct
    intel_display
  drm/i915/display: convert power map to struct intel_display

 .../drm/i915/display/intel_display_debugfs.c  |   3 +-
 .../drm/i915/display/intel_display_driver.c   |   8 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |   3 +-
 .../drm/i915/display/intel_display_power.c    | 983 +++++++++---------
 .../drm/i915/display/intel_display_power.h    |  87 +-
 .../i915/display/intel_display_power_map.c    |  56 +-
 .../i915/display/intel_display_power_well.c   | 546 +++++-----
 .../i915/display/intel_display_power_well.h   |  35 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   7 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
 drivers/gpu/drm/i915/i915_driver.c            |  32 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  28 +-
 15 files changed, 900 insertions(+), 902 deletions(-)

-- 
2.39.5

