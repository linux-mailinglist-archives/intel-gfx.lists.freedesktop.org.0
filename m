Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CC7A79FAC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:12:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BDFA10E957;
	Thu,  3 Apr 2025 09:11:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3eoYa1V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA7010E956;
 Thu,  3 Apr 2025 09:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743671506; x=1775207506;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aUEQroovJ6vRQA7UBSnMx4Fc2GF1cLqOsFQIGNVHq0I=;
 b=k3eoYa1V8M7ltyUNzeacevIT14RR8ExrRhEja1kFmxbui3AyiOwwP+YH
 1dLxPVcxFtZwK5IgRtKVsLctr3z+196FkoD9QYs7bV1ckEjpbKAUKm/Jf
 W26RZHjp42zrl5DbelkbZ1l7R/zawbly609L7N8jrZq7F8yKAhv7BFAns
 4J7leDTvd3Kt/Yeig6UjEqUAhCzaWGTswvqyjqZmeJazw9l9gbc52nebS
 fmo4XVplkCaidfqZS3geoXX+lZtIax9CVwUtKroywdC+talq0yawb20BX
 YyksrnuQB0u2XSCGBUz7/+Ql47CZj7sP5GHgUgCiLsP+bzt1GJd+DhtRV A==;
X-CSE-ConnectionGUID: UWWCT22oSlWQsPyH3N3N7g==
X-CSE-MsgGUID: sSM78bBPR92sYGys9ihy4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="44960735"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="44960735"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:11:46 -0700
X-CSE-ConnectionGUID: Hsust/IGSpey11qMuyPpyQ==
X-CSE-MsgGUID: 099+VDxrTteJOlzxFYC2TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127447960"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.158])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:11:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/7] drm/i915/wm: convert to struct intel_display
Date: Thu,  3 Apr 2025 12:11:32 +0300
Message-Id: <cover.1743671373.git.jani.nikula@intel.com>
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

The wm code is one of the last big holdouts of struct drm_i915_private
usage. Convert them all to struct intel_display, as much as possible
anyway.

After this, we're really starting to get down to the bottom of the
barrel.


Jani Nikula (7):
  drm/i915/wm: convert intel_wm.h external interfaces to struct
    intel_display
  drm/i915/wm: convert intel_wm.c internally to struct intel_display
  drm/i915/wm: convert skl_watermark.h external interfaces to struct
    intel_display
  drm/i915/wm: convert skl_watermarks.c internally to struct
    intel_display
  drm/i915/wm: convert intel_wm.h external interfaces to struct
    intel_display
  drm/i915/wm: convert i9xx_wm.c to intel_de_*() register interface
  drm/i915/wm: convert i9xx_wm.c internally to struct intel_display

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 1222 ++++++++---------
 drivers/gpu/drm/i915/display/i9xx_wm.h        |   18 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |   17 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |    4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   22 +-
 .../gpu/drm/i915/display/intel_display_core.h |    6 +-
 .../drm/i915/display/intel_display_debugfs.c  |    3 +-
 .../drm/i915/display/intel_display_driver.c   |   12 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |    4 +-
 .../drm/i915/display/intel_modeset_setup.c    |   11 +-
 drivers/gpu/drm/i915/display/intel_wm.c       |  166 +--
 drivers/gpu/drm/i915/display/intel_wm.h       |   14 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  623 ++++-----
 drivers/gpu/drm/i915/display/skl_watermark.h  |   23 +-
 drivers/gpu/drm/i915/i915_driver.c            |    2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |    2 +-
 16 files changed, 1053 insertions(+), 1096 deletions(-)

-- 
2.39.5

