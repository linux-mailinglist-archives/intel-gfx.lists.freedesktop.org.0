Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 679A789D92E
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 14:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0458A10F9AB;
	Tue,  9 Apr 2024 12:27:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XX3eyVxV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C6910F5D9;
 Tue,  9 Apr 2024 12:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712665617; x=1744201617;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6ZZM/6CinDJYo/Myhk1meCq5cL9mhlAw3zzuYu6z95w=;
 b=XX3eyVxVJuMekEaIBOOKhJbWrASwIYE22sYJPuCBAzU41LwowJEbE25N
 +uFN2TeTg+D187NUz2eFL7976NWqiggdLJjoCgyWE6GKJpsLUaco03JsO
 yvmmxH9UzLgELAxiG6E9wgMbK3wZJ0q4TuWbXAtBOaZ35doE29u8JQvWx
 23WXS36HNNAqZMfGnPUCp/yBse4d1SXC5aK8c2SkYWPEieLYpuY5kgrS5
 rVSVYlfm44GmpFvUPAOtWfZB81e4jSR2egXR+AdwnwbAwVu0vwB+2NvPd
 wThHbk0eDrfiWI0M/yhcgcQFL+vnBo3l3CBKXtHPUdRxRbqX3humSu35K Q==;
X-CSE-ConnectionGUID: NvyeO+F/S6uS2R7wzfkaKQ==
X-CSE-MsgGUID: zy9O3FW1T7ePdHp4H1CsLA==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="10948456"
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="10948456"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:26:57 -0700
X-CSE-ConnectionGUID: 52VVxKzqTKK/E63NIsV9Rw==
X-CSE-MsgGUID: rtvaITKfSweO/ymp1Qyp4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,189,1708416000"; d="scan'208";a="24695672"
Received: from mserban-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.59.228])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2024 05:26:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net
Subject: [PATCH v3 0/7] drm/i915: better high level abstraction for display
Date: Tue,  9 Apr 2024 15:26:42 +0300
Message-Id: <cover.1712665176.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

v3 of [1], and no longer an RFC.

This is just initial plumbing, and not much in terms of usage (apart
from patch 7). We could start converting a number of places already, but
the main blocker atm is that I haven't figured out a decent solution for
the various IS_<PLATFORM>() check macros.

I'm intentionally keeping the patches small and independent, because
they could conceivably be backported to stable as dependencies, so we
don't cause a huge problem for backports.

Anyway, we could start moving things forward with this.


BR,
Jani.


[1] https://lore.kernel.org/r/cover.1709727127.git.jani.nikula@intel.com


Jani Nikula (7):
  drm/i915/display: add intel_display -> drm_device backpointer
  drm/i915/display: add generic to_intel_display() macro
  drm/i915: add generic __to_intel_display()
  drm/xe/display: add generic __to_intel_display()
  drm/i915/display: accept either i915 or display for feature tests
  drm/i915/de: allow intel_display and drm_i915_private for de functions
  drm/i915/quirks: convert struct drm_i915_private to struct
    intel_display

 .../gpu/drm/i915/display/intel_backlight.c    |  40 +++----
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_de.h       | 102 +++++++++++-------
 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../drm/i915/display/intel_display_device.c   |   3 +
 .../drm/i915/display/intel_display_device.h   |   4 +-
 .../drm/i915/display/intel_display_driver.c   |   3 +-
 .../drm/i915/display/intel_display_types.h    |  37 +++++++
 drivers/gpu/drm/i915/display/intel_panel.c    |  10 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_quirks.c   |  56 +++++-----
 drivers/gpu/drm/i915/display/intel_quirks.h   |   6 +-
 drivers/gpu/drm/i915/i915_drv.h               |  11 ++
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  11 ++
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      |   1 +
 15 files changed, 197 insertions(+), 102 deletions(-)

-- 
2.39.2

