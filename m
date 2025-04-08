Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B63A80C8A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 15:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC68510E234;
	Tue,  8 Apr 2025 13:38:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8w6v+S/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BD8C10E234;
 Tue,  8 Apr 2025 13:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744119536; x=1775655536;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FZjmlgwZ18crLjUhC4JzBBLriecKxz8DtzRr/4LAtS4=;
 b=B8w6v+S/vKhY2Zpbbvjpc5ovjAiJBklRTaHlLgwmZcHVau0kcrCO6Xc3
 RuVcR86xFjRkRjyEu8VwRC1KNZzR/SMjkhcacN6o5n8mIxUkjYMrhiNTt
 UKbtDjS+Lm3VghCwi8R1/rJZkhJcR3ibG5QD+t883YwViV6b+5KeOF4wA
 5I6rbSAWTQ6CnAc9zIShOEYMdH3zWv87T5fkjs78/iYGsHCd2n9f4yWxw
 3U0UtKVOjnpmzdVFPXCGlJHXc/+fX6dxEqknqpioP50kMHbp7Nv4S4dCM
 DsvG7kFOxT0cdQZkzx1iZ13cPa767VYE0DXd32vDeDP6bf1FywzNVARSw w==;
X-CSE-ConnectionGUID: Z2cNavvlQPKjhUifT1um6g==
X-CSE-MsgGUID: pUfXYPwTT8i6vtVIPekX+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45712009"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="45712009"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:38:46 -0700
X-CSE-ConnectionGUID: POiJOQyIQfOy2XbSh5EC+g==
X-CSE-MsgGUID: 5Lee4uMtRMuzcqdiz4gbTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="129122686"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.137])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:38:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 0/7] drm/i915/wm: convert to struct intel_display
Date: Tue,  8 Apr 2025 16:38:34 +0300
Message-Id: <cover.1744119460.git.jani.nikula@intel.com>
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

v2 of [1], basically just a rebase.

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1743671373.git.jani.nikula@intel.com

Jani Nikula (7):
  drm/i915/wm: convert intel_wm.h external interfaces to struct
    intel_display
  drm/i915/wm: convert intel_wm.c internally to struct intel_display
  drm/i915/wm: convert skl_watermark.h external interfaces to struct
    intel_display
  drm/i915/wm: convert skl_watermarks.c internally to struct
    intel_display
  drm/i915/wm: convert i9xx_wm.h external interfaces to struct
    intel_display
  drm/i915/wm: convert i9xx_wm.c to intel_de_*() register interface
  drm/i915/wm: convert i9xx_wm.c internally to struct intel_display

 drivers/gpu/drm/i915/display/i9xx_wm.c        | 1222 ++++++++---------
 drivers/gpu/drm/i915/display/i9xx_wm.h        |   18 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |   24 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |    4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   22 +-
 .../gpu/drm/i915/display/intel_display_core.h |    6 +-
 .../drm/i915/display/intel_display_debugfs.c  |    3 +-
 .../drm/i915/display/intel_display_driver.c   |   12 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      |    4 +-
 .../drm/i915/display/intel_modeset_setup.c    |   11 +-
 drivers/gpu/drm/i915/display/intel_wm.c       |  171 +--
 drivers/gpu/drm/i915/display/intel_wm.h       |   14 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  616 ++++-----
 drivers/gpu/drm/i915/display/skl_watermark.h  |   23 +-
 drivers/gpu/drm/i915/i915_driver.c            |    2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |    2 +-
 16 files changed, 1057 insertions(+), 1097 deletions(-)

-- 
2.39.5

