Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B4A7D4FF7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B365C10E36A;
	Tue, 24 Oct 2023 12:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61FE310E36A
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698151292; x=1729687292;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vfW1mzDqtYeGZ8B2gMl05vHOICORbXDrp4FteEmy/XU=;
 b=iNsPnxAZcX/0ik2BuiK0FLuzG+GVEonMCSe7+sUp5VyIDNwVhLLbP7VF
 yN7FFIqRVWErueTZ3C/nH6PNdCuT9kUpo45ldmd7CHnxV65s9Iv9+uhDQ
 xkLsfjzFSMGbN1k7OmiqbqWHtXsAxG/Mn3w4disIkrx1BDvvtbmV3MMH3
 f1aO+AehV60artThoh7IoJM8LipDENbyLFlfJzDepl/OyopVbFRZmG3sf
 7lUFNS6qyl+50B5rytj8b9nw78ot/c7zhbQZ6mjr81bUF5zr9O/o/eFHJ
 i1+zqMTeVxs5oAOCaIxqXr9QuJ3bYNHALY4E6Q0O9vwI76vQR+G48R0TH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="386856559"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386856559"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:41:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758464366"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="758464366"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:41:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 15:40:46 +0300
Message-Id: <20231024124109.384973-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 00/23] Framework for display parameters
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently all module parameters are handled by i915_param.c/h. This
is a problem for display parameters when Xe driver is used.

This patch set adds a mechanism to add parameters specific to the
display. This is mainly copied from existing i915 parameters
implementation with some naming changes and taking into account
varying driver name.

Also all display specific module parameters are moved under display and the
module parameter are all converted as non-writable. This should be ok
as we have writable device parameters under debugfs.

v4:
  - Change verbose_state_checks device parameter permissions to 0400

v3:
  - Change enable_ip as boolean
  - Fix enable_psr2_sel_fetch description
  - Add default value into psr_safest_params description
  - Drop unused predefinition (dentry) from intel_display_debugfs_params.h
v2:
  - Drop fastboot parameter
  - Include display parameters into i915_capabilities debugfs interface

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Luca Coelho <luca@coelho.fi>

Jouni Högander (23):
  drm/i915/display: Add framework to add parameters specific to display
  drm/i915/display: Dump also display parameters
  drm/i915/display: Move enable_fbc module parameter under display
  drm/i915/display: Move psr related module parameters under display
  drm/i915/display: Move vbt_firmware module parameter under display
  drm/i915/display: Move lvds_channel_mode module parameter under
    display
  drm/i915/display: Move panel_use_ssc module parameter under display
  drm/i915/display: Move vbt_sdvo_panel_type module parameter under
    display
  drm/i915/display: Move enable_dc module parameter under display
  drm/i915/display: Move enable_dpt module parameter under display
  drm/i915/display: Move enable_sagv module parameter under display
  drm/i915/display: Move disable_power_well module parameter under
    display
  drm/i915/display: Move enable_ips module parameter under display
  drm/i915/display: Move invert_brightness module parameter under
    display
  drm/i915/display: Move edp_vswing module parameter under display
  drm/i915/display: Move enable_dpcd_backlight module parameter under
    display
  drm/i915/display: Move load_detect_test parameter under display
  drm/i915/display: Move force_reset_modeset_test parameter under
    display
  drm/i915/display: Move disable_display parameter under display
  drm/i915/display: Use device parameters instead of module in
    I915_STATE_WARN
  drm/i915/display: Move verbose_state_checks under display
  drm/i915/display: Move nuclear_pageflip under display
  drm/i915/display: Move enable_dp_mst under display

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/hsw_ips.c        |   4 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
 .../gpu/drm/i915/display/intel_backlight.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../display/intel_display_debugfs_params.c    | 176 ++++++++++++++
 .../display/intel_display_debugfs_params.h    |  13 ++
 .../drm/i915/display/intel_display_device.c   |  13 +-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_params.c   | 217 ++++++++++++++++++
 .../drm/i915/display/intel_display_params.h   |  61 +++++
 .../drm/i915/display/intel_display_power.c    |  14 +-
 .../drm/i915/display/intel_display_reset.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   6 +-
 .../drm/i915/display/intel_dp_aux_backlight.c |   4 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  10 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |   2 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  14 +-
 .../drm/i915/display/skl_universal_plane.c    |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   5 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   3 +
 drivers/gpu/drm/i915/i915_driver.c            |   2 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +
 drivers/gpu/drm/i915/i915_gpu_error.h         |   2 +
 drivers/gpu/drm/i915/i915_params.c            |  89 -------
 drivers/gpu/drm/i915/i915_params.h            |  22 --
 34 files changed, 548 insertions(+), 162 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h

-- 
2.34.1

