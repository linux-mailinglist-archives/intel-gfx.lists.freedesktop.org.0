Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0A66A82E62
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:18:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6591010E04D;
	Wed,  9 Apr 2025 18:18:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kQXXEj8U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4108B10E04D;
 Wed,  9 Apr 2025 18:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222693; x=1775758693;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eXj9fVF6BUUJTwiiaaz1p2jhPkBw+RVHj3Qp3HALSXk=;
 b=kQXXEj8UfuyY7Bpa6H9vkDewJvPx9ZZb2me3RFGOVRf+lGuwdt1qPERb
 aJqBO83YsxDFLG0vHyz0fU7/+Rsvnl9pii5mA7ObX49mnkmnGxA7M4X5N
 mcqreMCnQGjEvMvDrwyW8KdAEPuqsSysYfLIxPW1ELANgIikzI9uhXpHi
 zPb9FicPwO4AXsoXBLaWyrI7cT8SpdNfNI5BDBFGsdTO62H5yJndRw31I
 WQ75yl3+HkVKfWAF+BpNP5qanzjRVtT6fka98lenJgNmcNbifgg9TWnty
 JQ77HYTgPJTGXAmncz4BQ62nT+nvViqOT98MIOPzye1HYYzwN5g21tgFW w==;
X-CSE-ConnectionGUID: Yx3zQ87HR+yTK7F+ZQ8acA==
X-CSE-MsgGUID: RSYPT/cvTx+bH2ufqXRIpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="57088312"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="57088312"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:11 -0700
X-CSE-ConnectionGUID: mlStuzCpSsO35WGBP17Eww==
X-CSE-MsgGUID: U8ywvhaBSj2TT7wXZfi6KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="133785279"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:18:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/14] drm/i915/display: final (?!) mass conversions to struct
 intel_display
Date: Wed,  9 Apr 2025 21:17:41 +0300
Message-Id: <cover.1744222449.git.jani.nikula@intel.com>
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

With this, we are approaching the end of mass conversions to struct
intel_display. There are still plenty of drm_i915_private uses left, of
course, but the straightforward conversions of entire files are
done. And we no longer use any of the IS_*() platform checks.

BR,
Jani.

Jani Nikula (14):
  drm/i915/fb: convert intel_fbdev.[ch] and intel_fbdev_fb.[ch] to
    struct intel_display
  drm/i915/display: convert intel_modeset_setup.[ch] to struct
    intel_display
  drm/i915/display: convert intel_modeset_verify.c to struct
    intel_display
  drm/i915/sprite: convert intel_sprite_uapi.c to struct intel_display
  drm/i915/frontbuffer: convert intel_frontbuffer.[ch] to struct
    intel_display
  drm/i915/crt: switch to display->platform based platform detection
  drm/i915/dmc: switch to display->platform based platform detection
  drm/i915/dp-aux: switch to display->platform based platform detection
  drm/i915/dpio: switch to display->platform based platform detection
  drm/i915/gmbus: switch to display->platform based platform detection
  drm/i915/hdmi: switch to display->platform based platform detection
  drm/i915/display: switch to display->platform.dgfx from IS_DGFX()
  drm/i915/audio: don't set LPE audio irq chip data, it's unused
  drm/xe/compat: clean up unused platform check macros

 drivers/gpu/drm/i915/display/intel_bios.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  13 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   7 +-
 .../drm/i915/display/intel_display_driver.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  45 ++--
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   4 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |   4 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  74 ++++---
 drivers/gpu/drm/i915/display/intel_fbdev.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |  13 +-
 drivers/gpu/drm/i915/display/intel_fbdev_fb.h |   4 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |  60 +++---
 .../gpu/drm/i915/display/intel_frontbuffer.h  |   8 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  22 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  44 ++--
 .../gpu/drm/i915/display/intel_lpe_audio.c    |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    | 192 +++++++++---------
 .../drm/i915/display/intel_modeset_setup.h    |   4 +-
 .../drm/i915/display/intel_modeset_verify.c   |  17 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |   6 +-
 .../drm/i915/display/intel_plane_initial.c    |   8 +-
 .../gpu/drm/i915/display/intel_sprite_uapi.c  |  17 +-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  36 +---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   |   6 +-
 25 files changed, 269 insertions(+), 343 deletions(-)

-- 
2.39.5

