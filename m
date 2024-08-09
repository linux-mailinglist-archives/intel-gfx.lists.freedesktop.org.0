Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D731B94D225
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 16:27:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8B610E0AC;
	Fri,  9 Aug 2024 14:27:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+4JYyOS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD7CE10E09D;
 Fri,  9 Aug 2024 14:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723213649; x=1754749649;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GYAsRiLMkBnu7D2BFWW53DRRa8F2R2Mh4uB4csl3jY4=;
 b=Y+4JYyOSbMNj2RmL50HLwMGTViAH216pfC6ih6iR04ulq38JKhgDhWNl
 jW/Qesxy4iaAPxBoTSth9bQtKdceUTzuF27ahErUH8Fw1KqlwZ8AWXVnz
 oHPn/9KHjpW7RA9td1tKKkCmszr9OG4KWvhUAYJ0q10Yti/j/TfjPDtEj
 33Z+rYLjWEdHvDgbHrQ6i/+Kf+zD42P9bFTI6AZIkF7KIhJaa00GT+TYp
 G3utnvhYkWNvkNW3/HP0r8t/K3On9mMuEOKPo7tLUrAKF79cgT0+LgWsz
 wGdkoGdlfeAgN3l1Q3xzCXX7nrwxX5NXcMvHFpQwh/r1k4Y+TL3PanfMZ g==;
X-CSE-ConnectionGUID: viQ5MmmuSTOshf6eiOwvng==
X-CSE-MsgGUID: 9vzzNsUQT+6GUqcyc2OrwQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="32013700"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="32013700"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 07:27:15 -0700
X-CSE-ConnectionGUID: ZMWt6KLiRs20TB1xi8QgJA==
X-CSE-MsgGUID: I6yLeKzzQLyM89Vt/qE+8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="57471438"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 07:27:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH v2 0/4] drm/i915: struct intel_display conversions
Date: Fri,  9 Aug 2024 17:27:02 +0300
Message-Id: <cover.1723213547.git.jani.nikula@intel.com>
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

v2 of https://lore.kernel.org/r/cover.1722444150.git.jani.nikula@intel.com

Cc: Imre Deak <imre.deak@intel.com>

Jani Nikula (4):
  drm/i915/acpi: convert to struct intel_display
  drm/i915/opregion: unify intel_encoder/intel_connector naming
  drm/i915/opregion: convert to struct intel_display
  drm/i915/bios: convert to struct intel_display

 drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   3 +-
 drivers/gpu/drm/i915/display/intel_acpi.c     |  17 +-
 drivers/gpu/drm/i915/display/intel_acpi.h     |  18 +-
 drivers/gpu/drm/i915/display/intel_bios.c     | 846 +++++++++---------
 drivers/gpu/drm/i915/display/intel_bios.h     |  28 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   9 +-
 .../drm/i915/display/intel_display_debugfs.c  |   7 +-
 .../drm/i915/display/intel_display_device.c   |   8 +-
 .../drm/i915/display/intel_display_driver.c   |  22 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  27 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   8 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_opregion.c | 320 +++----
 drivers/gpu/drm/i915/display/intel_opregion.h |  62 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   3 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   5 +-
 drivers/gpu/drm/i915/i915_driver.c            |  22 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  19 +-
 24 files changed, 765 insertions(+), 687 deletions(-)

-- 
2.39.2

