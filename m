Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3287DA8586D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 11:54:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B450110EB45;
	Fri, 11 Apr 2025 09:54:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J/Pm1jvN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCAF710EB45;
 Fri, 11 Apr 2025 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744365263; x=1775901263;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lVHjNp10TqdfTGgtkBkeraGo6DIBLq3/sRM07RtXY98=;
 b=J/Pm1jvNFOZjEsV+oLp8P4QbHZy5mwA1lj6+71CpYFNA7BmYoCYciq3n
 91WcVWrwHZ0yy3wWpZvDJr30p8DVtnmBOYdzSPrMdw42nJ6CNMP0Llnel
 yseaQgvVkbNUJjzAUPwIPGDScciUi6GlLBqyU5VLq9gw/nbffIEw3WxPh
 xs48miNQfWMhT3tmJG4dn51PY8LdKdIIXauTrlUtV3fA/esBWxMyMdrXX
 1Mh4AYyRj8e9VrXae3/p/GUdDjFAh72XPXb1+pwmlXt07FPt+NoO9aDSR
 eJAnhynUkJrZJFWIACeFBciSvrreIdam8SSCpY2EHW/MGTbWYq8D/Ajxs g==;
X-CSE-ConnectionGUID: SKk1vDZGQ0+GUnbfksAGsQ==
X-CSE-MsgGUID: nG7eP/b4Q9KxShRdXi1tXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="56094839"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="56094839"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:22 -0700
X-CSE-ConnectionGUID: yWG4+QSDQmS0cYVHeeyaQA==
X-CSE-MsgGUID: vMKQ2m+AS+yWxumkvSX/Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="133265550"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 0/4] drm/{i915,xe}: Move PCH stuff under display
Date: Fri, 11 Apr 2025 12:54:10 +0300
Message-Id: <cover.1744364975.git.jani.nikula@intel.com>
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

Resurrect [1], patches 1-2 unchanged, with some cleanups on top.

With the current patches in flight, we'll have removed all the PCH
checks from i915 core other than a couple of instances in
intel_clock_gating.c. We can figure those out as we go along, but
merging this now unblocks a bunch of further cleanups in display.

BR,
Jani.


[1] https://lore.kernel.org/r/20250218010224.761209-1-rodrigo.vivi@intel.com



Jani Nikula (2):
  drm/i915/pch: move PCH detection to intel_display_driver_early_probe()
  drm/i915/pch: clean up includes

Rodrigo Vivi (2):
  drm/{i915,xe}: Move intel_pch under display
  drm/i915/display: Convert intel_pch towards intel_display

 drivers/gpu/drm/i915/Makefile                 |   2 +-
 .../gpu/drm/i915/display/intel_display_core.h |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   3 +
 .../gpu/drm/i915/{soc => display}/intel_pch.c | 248 +++++++++---------
 drivers/gpu/drm/i915/display/intel_pch.h      |  58 ++++
 drivers/gpu/drm/i915/i915_driver.c            |   3 -
 drivers/gpu/drm/i915/i915_drv.h               |   5 -
 drivers/gpu/drm/i915/soc/intel_pch.h          |  56 ----
 drivers/gpu/drm/xe/Makefile                   |   2 +-
 .../xe/compat-i915-headers/soc/intel_pch.h    |   6 -
 drivers/gpu/drm/xe/display/xe_display.c       |   3 -
 drivers/gpu/drm/xe/xe_device_types.h          |   2 -
 12 files changed, 199 insertions(+), 195 deletions(-)
 rename drivers/gpu/drm/i915/{soc => display}/intel_pch.c (50%)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pch.h
 delete mode 100644 drivers/gpu/drm/i915/soc/intel_pch.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h

-- 
2.39.5

