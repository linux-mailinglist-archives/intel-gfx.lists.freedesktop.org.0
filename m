Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5927BFA00
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5217610E1E0;
	Tue, 10 Oct 2023 11:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5140F10E075
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938168; x=1728474168;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VtoKeC8k1ZVbUayLYbDiyu7qFR5e2Q0PNGv/AeE8dSg=;
 b=FVB9VQ8Lw3Q+/OnQLmGF2CD8Nql/p/UhKUNFCJCJ3qElD0FjoUwWSwjw
 aCg1E6IOzMCEcKmBhTD10zN+C3FAtAx0rkXI3QobvZLJeBdHU15UrT99w
 fc0tdHDw2aZXXokaIbZg0hxV+w730JY+/OclmBGN3fcdB4o1RIXFIYg2y
 uQ5uZsBTWqdsRI9cH6Q8PvGJdJezwD2w96YI6Ahd4n7abHHfYzNYBlIG3
 ytvF6p0b1dZguoi+h8BP676cPkfNmoV4gUJNuGtUnhS0eegKXEkWQBIBi
 wjB1jgApycMz0jfUykxxHQ8/UbT/q6QbnDLiv3BXpkStJ+QMWRYkhIAU+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635416"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635416"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655239"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655239"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:40 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:40:55 +0300
Message-Id: <20231010114120.2504103-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/25] Framework for display parameters
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

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Jouni Högander (25):
  drm/i915/display: Add framework to add parameters specific to display
  drm/i915/display: Dump also display parameters into GPU error dump
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
  drm/i915/display: Move fastboot module parameter under display
  drm/i915/display: Move enable_dpcd_backlightmodule parameter under
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
  drm/i915/display: Use same permissions for enable_sagv as for rest

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/hsw_ips.c        |   4 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
 .../gpu/drm/i915/display/intel_backlight.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../display/intel_display_debugfs_params.c    | 176 ++++++++++++++
 .../display/intel_display_debugfs_params.h    |  14 ++
 .../drm/i915/display/intel_display_device.c   |  13 +-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_params.c   | 221 ++++++++++++++++++
 .../drm/i915/display/intel_display_params.h   |  62 +++++
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
 drivers/gpu/drm/i915/i915_driver.c            |   2 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   3 +
 drivers/gpu/drm/i915/i915_gpu_error.h         |   2 +
 drivers/gpu/drm/i915/i915_params.c            |  94 --------
 drivers/gpu/drm/i915/i915_params.h            |  23 --
 34 files changed, 553 insertions(+), 170 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_params.h

-- 
2.34.1

