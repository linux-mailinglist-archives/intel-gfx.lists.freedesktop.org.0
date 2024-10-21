Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 562C09A6B18
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A9610E461;
	Mon, 21 Oct 2024 13:54:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IGy9Px4x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD0BC10E461;
 Mon, 21 Oct 2024 13:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729518864; x=1761054864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VPdT7R0IF1zNwWZVSDgmZCWyF5ii9kwr7mRM5puYaiQ=;
 b=IGy9Px4xV4HMW8lKqFENeQs8zCMjn7kY/C4eKCcYh8/J7LV3bpn+nFsy
 y370POAW8UNzbDXeCKwYsU4XjIgfW5h8MK6WVRX0TnFB9XSH+RZSJsTC/
 4Nym0PE9T1Kgb7WeMB7zC+onn5H5tMlk9cT2UH4k9jL7w1hC8NYqXNt+G
 lGmjCVLfhS08viB5astxhh2JvtwkKTbEgVd4dacKZf2PEz1k/OTBP/JZw
 dpmBRfsH0XZ1mstRrn35GKGoA6KbqYuvcC4m3kxv7F7Q9j0yMhpxgGsST
 sYByZNIarb4+edjOHQsRQgdI/CuPiopQ2rGJO1kG50R4OXm5QHdvGqvJN A==;
X-CSE-ConnectionGUID: 8+XbmJ7lRCqHOjDry4j6dw==
X-CSE-MsgGUID: QMzHUmVsQ8OvKgkdyhnI6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39540466"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39540466"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:54:23 -0700
X-CSE-ConnectionGUID: 9sojdWTPT7Kbw8kpfHe1ZQ==
X-CSE-MsgGUID: sBc9AU7HTp6Cb/ppued1Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="83547838"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:54:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH v4 00/15] drm/i915/display: platform identification with
 display->platform.<platform>
Date: Mon, 21 Oct 2024 16:54:01 +0300
Message-Id: <cover.1729518793.git.jani.nikula@intel.com>
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

v4 of https://lore.kernel.org/r/cover.1727699233.git.jani.nikula@intel.com

Jani Nikula (15):
  drm/i915/display: reindent subplatform initialization
  drm/i915/display: use a macro to initialize subplatforms
  drm/i915/display: use a macro to define platform enumerations
  drm/i915/display: join the platform and subplatform enums
  drm/i915/display: convert display platforms to lower case
  drm/i915/display: add display platforms structure with platform
    members
  drm/i915/display: add platform member to struct intel_display
  drm/i915/display: remove the display platform enum as unnecessary
  drm/i915/display: add platform group for g4x
  drm/i915/display: add subplatform group for HSW/BDW ULT
  drm/i915/bios: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/pps: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/tv: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/vga: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/vblank: use display->platform.<platform> instead of
    IS_<PLATFORM>()

 drivers/gpu/drm/i915/display/intel_bios.c     |  40 +--
 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../drm/i915/display/intel_display_device.c   | 269 +++++++++++++-----
 .../drm/i915/display/intel_display_device.h   | 185 ++++++------
 drivers/gpu/drm/i915/display/intel_pps.c      |  47 ++-
 drivers/gpu/drm/i915/display/intel_tv.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  11 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |   4 +-
 8 files changed, 340 insertions(+), 229 deletions(-)

-- 
2.39.5

