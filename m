Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E094E958E58
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 21:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC19210E836;
	Tue, 20 Aug 2024 19:00:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NHQt9op9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB9E10E840;
 Tue, 20 Aug 2024 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724180454; x=1755716454;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bGv2BQbxUGwkmP6k6TD3WoXSl96IgHuHgAbDCooKGFQ=;
 b=NHQt9op9D0w8NzWeOP0SqmJgib2XnMhkFObdbkGUXfrU4JdOt7m0LWRJ
 8tkw3eCmMo6Br2ch+FK+Qsv0yo9QPqF8dkdyN07acmDr7Y2Z3IE4Qn5aL
 H+owTyB7gTkHghKc7gMhuTpmNj59t5eguUpPRk/KHL19Q9oD7Nm0YGnRp
 jOzSOMhLVUMbnrTR2Wj61VEnIIxpn0DNNZFxg2Ohm7K4OpeZob+Ftivq7
 5T0dPhPNyYpdZcRbHvIKgTYw/Ln0eTnvI7Mht4/Cp3WkVOdaRb1tVDiR2
 /EUhYZ8FviO//xLI3AdeobucVb+n5xXZINV9CrQQ5pFzqV1mmZCbRmbFc Q==;
X-CSE-ConnectionGUID: VBmNCJqcQmyciSicV34dtQ==
X-CSE-MsgGUID: GWdmQ7PrTiaMrPhOptMLiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22035839"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22035839"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:00:54 -0700
X-CSE-ConnectionGUID: xSJcyr62QOa3WI2g2Q+AZA==
X-CSE-MsgGUID: 7mD16byyTI6J54+1zdDqiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="65676197"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 12:00:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 00/10] drm/i915/display: identify display steppings in display
 code
Date: Tue, 20 Aug 2024 22:00:33 +0300
Message-Id: <cover.1724180287.git.jani.nikula@intel.com>
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

Use a Single Point of Truth for display stepping detection instead of
duplicating in i915 and xe.

BR,
Jani.


Jani Nikula (10):
  drm/xe/display: fix compat IS_DISPLAY_STEP() range end
  drm/xe/display: remove intel_display_step_name() to simplify
  drm/xe/display: remove the unused compat HAS_GMD_ID()
  drm/xe/step: define more steppings E-J
  drm/i915/display: rename IS_DISPLAY_IP_RANGE() to
    IS_DISPLAY_VER_FULL()
  drm/i915/display: rename IS_DISPLAY_IP_STEP() to IS_DISPLAY_VER_STEP()
  drm/i915/display: identify display steppings in display probe
  drm/i915/display: switch to display detected steppings
  drm/i915: remove display stepping handling
  drm/xe: remove display stepping handling

 .../drm/i915/display/intel_display_device.c   | 226 +++++++++++++++++-
 .../drm/i915/display/intel_display_device.h   |  19 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |   5 -
 drivers/gpu/drm/i915/intel_device_info.c      |   1 -
 drivers/gpu/drm/i915/intel_step.c             |  84 +++----
 drivers/gpu/drm/i915/intel_step.h             |   2 -
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   5 -
 .../drm/xe/compat-i915-headers/intel_step.h   |  10 +-
 drivers/gpu/drm/xe/xe_debugfs.c               |   3 +-
 drivers/gpu/drm/xe/xe_pci.c                   |   3 +-
 drivers/gpu/drm/xe/xe_step.c                  |  57 ++---
 drivers/gpu/drm/xe/xe_step_types.h            |  30 ++-
 18 files changed, 332 insertions(+), 135 deletions(-)

-- 
2.39.2

