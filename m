Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E079BC6BB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 08:16:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9588D10E3E6;
	Tue,  5 Nov 2024 07:16:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T4xL2vo9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 703DB10E527;
 Tue,  5 Nov 2024 07:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730790974; x=1762326974;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i4ESn0gCGRJSlerHcryDbh+36AEYfhwSb9CbdFXXjOo=;
 b=T4xL2vo97MOz3Z/1MI071hm5HJ5LHvTY1y57fSyx36+Y4Qc+ZpWqCuvx
 WjTVsO7e9Tu4UHzgd+FYN0Uq/11ZPo2BFedMDU9xfVPMVBqsiCorxZhK/
 IYFZA99CfuVSIMcMMOExY1R0SqIn5WW9FcwWy9p6he1q976XY66F/YwYc
 eeblg7bdK81UZiiGGgVGkbo2POkQb2oZOiNlnJBiw3D3PnxTk2svS8Uss
 fnwEhyq7Lb4c6WCFIX5kt1nb9nTP0OEmMei3+NlqdOLJbguhRbzFkgTa2
 XEefv5aAPqdrhvlgEYDORgNKDrRxp4Z9TU7STj4iWFq456cEZnjBTKTmq g==;
X-CSE-ConnectionGUID: rb0GjMOURzyH2H8dw2Q+dg==
X-CSE-MsgGUID: XHbMBZDoRYm0r7Onw4RPKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34449538"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="34449538"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:13 -0800
X-CSE-ConnectionGUID: iHgQgMmQQtWrAuVFN9Dl9w==
X-CSE-MsgGUID: u06qoCeIRM2byUZZT8+iZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="87835515"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO vgovind2-mobl3..)
 ([10.245.245.146])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:11 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH 0/8] use hw support for min/interim ddb allocation for async
 flip
Date: Tue,  5 Nov 2024 09:15:52 +0200
Message-Id: <20241105071600.235338-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
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

In Xe3, hw can automatically switch to minimum / interim ddb allocations
for async flip use case. Configure the minimum and interim ddb
configurations. As usage of intel_display is recommended instead of
drm_i915_private, few preparatory patches were added for that purpose.

Stanislav Lisovskiy (1):
  drm/i915/xe3: Use hw support for min/interim ddb allocations for async
    flip

Vinod Govindapillai (7):
  drm/i915/display: update intel_enabled_dbuf_slices_mask to use
    intel_display
  drm/i9i5/display: use intel_display in intel_de_read calls of
    skl_watermark.c
  drm/i915/display: update use_minimal_wm0_only to use intel_display
  drm/i915/display: update use_min_ddb to use intel_display
  drm/i915/display: update skl_plane_wm_equals to use intel_display
  drm/i915/display: update to plane_wm register access function
  drm/i915/debugfs: add dbuf alloc status as part of i915_ddb_info

 .../gpu/drm/i915/display/intel_atomic_plane.c |  13 +-
 .../drm/i915/display/intel_display_debugfs.c  |  23 ++-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |   2 +-
 .../drm/i915/display/intel_display_types.h    |   8 +
 .../drm/i915/display/skl_universal_plane.c    |  31 ++++
 .../i915/display/skl_universal_plane_regs.h   |  14 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 163 +++++++++++++-----
 drivers/gpu/drm/i915/display/skl_watermark.h  |   3 +-
 9 files changed, 209 insertions(+), 50 deletions(-)

-- 
2.34.1

