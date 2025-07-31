Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14172B17157
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 14:36:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2905310E26D;
	Thu, 31 Jul 2025 12:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ev11WWRo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A99D10E26A;
 Thu, 31 Jul 2025 12:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753965382; x=1785501382;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SAJHbfxPX3YAOV5DfQUB0KXO5s+9jLaRz4S/WBAwmN8=;
 b=ev11WWRoYo5bAT6F/5WWRntoT2h6BbpRg6ZU5TTIr4LeOe7Qm7JqlCIe
 AEF4p47dHQV60jKydySwd5pGqIlt/QBEwq6Lt+80xs9K9UFd9NrNT84Zf
 hqzgFMHFUPMFM0fn142ovPGG7pAsTc610rvzPoAqR3WRVNtLrAjvWZbwm
 0DhIOGeuKv+dvULj1pdULBGkcS3Cy176vzFsDpKU0Epm6ikh07ejowaIt
 Y+WxRpWcjn4mrgRIyTaNhsTbq64t3d9x/RFy1RfZ7LbzNMCA+XyEHwgL2
 O4XZGwPqIA2lLP+YDuHBT2Jy0LGRXoxR/dbMJJ3aJWpUmZgz1iJs9QbFg A==;
X-CSE-ConnectionGUID: IVcSLnlVTMe/xj9sszAYlQ==
X-CSE-MsgGUID: ZzI5e/bmQjG7ZxgakCMymw==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="66979958"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="66979958"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:36:22 -0700
X-CSE-ConnectionGUID: If4QqTE2TD2YGfk9OLI9Mw==
X-CSE-MsgGUID: 6F2R9lTuTzGWLhLpFz+diQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="163617910"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:36:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/2] drm/xe/compat: cleanups
Date: Thu, 31 Jul 2025 15:36:14 +0300
Message-Id: <cover.1753965351.git.jani.nikula@intel.com>
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


Jani Nikula (2):
  drm/xe/compat: remove unused platform macros
  drm/xe/compat: stop including i915_utils.h from compat i915_drv.h

 drivers/gpu/drm/i915/display/intel_bios.c     |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  1 +
 .../drm/i915/display/intel_display_driver.c   |  1 +
 .../drm/i915/display/intel_display_power.c    |  1 +
 .../i915/display/intel_display_power_well.c   |  1 +
 drivers/gpu/drm/i915/display/intel_fb.c       |  1 +
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  1 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  1 +
 drivers/gpu/drm/i915/display/intel_vblank.c   |  1 +
 .../drm/i915/display/skl_universal_plane.c    |  1 +
 drivers/gpu/drm/i915/soc/intel_dram.c         |  1 +
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 22 -------------------
 drivers/gpu/drm/xe/display/ext/i915_utils.c   |  1 +
 13 files changed, 12 insertions(+), 22 deletions(-)

-- 
2.39.5

