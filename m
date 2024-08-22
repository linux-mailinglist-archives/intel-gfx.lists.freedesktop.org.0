Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C78E95BB4A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 18:05:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F42110E0AC;
	Thu, 22 Aug 2024 16:05:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DD+XyNT+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B8110EB43;
 Thu, 22 Aug 2024 16:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724342702; x=1755878702;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oHIdM+BJY8OPEdFTxaBuWEezvEA4r5Nq+z6uEfxVOSo=;
 b=DD+XyNT+54pwZU4qVGn1xPq+GcA/LRD0d1XWvHwoAGN5cmi36ZD7iQS1
 csecXDzLON8QZs9L9J6mUlUCMHlBHTWgfVJ/qZkp81cx722U3lYWI0xsz
 Ba/4HTOWLnWSjvbHbaXIlWeMq2fno2Lo1HCaanoTXLVi4keZP7+NXceBn
 PjIynhixtyjbvXcZo+jQ6mY+okUoWp3Rqsk50L6HARIDlqd+Xfs+7Fk+0
 HkmZ3Pc7GblY9wQToPEEGYg6nqUXFGYws/l3ZGYkfdehzLqWcbbSXc1Xb
 twQrid62sBisPpl/5LCNl0U+ZxnxGZbcW/WCX7ulID/xF/xZtXnyE2Y5O w==;
X-CSE-ConnectionGUID: GQTmW9rURQObaX1Hdsrc6w==
X-CSE-MsgGUID: sYVZZyZJRoG66eECYR4Pog==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22953017"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22953017"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:05:01 -0700
X-CSE-ConnectionGUID: lPxSRh09Q9KEUtsglHstnw==
X-CSE-MsgGUID: D+WWn8MOR6CczvsiyKBJJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="61169302"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 09:04:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/7] drm/i915/display: conversion to struct intel_display
Date: Thu, 22 Aug 2024 19:04:48 +0300
Message-Id: <cover.1724342644.git.jani.nikula@intel.com>
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

A bunch more intel_display conversions.

BR,
Jani.


Jani Nikula (7):
  drm/i915/vblank: use drm_crtc_vblank_crtc() instead of open-coding
  drm/i915/vblank: fix context imbalance warnings
  drm/i915/vblank: convert to struct intel_display
  drm/i915/vrr: convert to struct intel_display
  drm/i915/tv: convert to struct intel_display
  drm/i915/sprite: convert to struct intel_display
  drm/i915/display: convert params to struct intel_display

 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../display/intel_display_debugfs_params.c    |   8 +-
 .../display/intel_display_debugfs_params.h    |   4 +-
 .../drm/i915/display/intel_display_params.c   |   6 +-
 .../drm/i915/display/intel_display_params.h   |   4 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   | 209 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_tv.c       | 203 ++++++++---------
 drivers/gpu/drm/i915/display/intel_tv.h       |   6 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   | 111 +++++-----
 drivers/gpu/drm/i915/display/intel_vrr.c      | 127 +++++------
 drivers/gpu/drm/i915/i915_debugfs.c           |   3 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +-
 13 files changed, 357 insertions(+), 331 deletions(-)

-- 
2.39.2

