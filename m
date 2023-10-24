Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4FF7D4DCF
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 12:32:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4367E10E321;
	Tue, 24 Oct 2023 10:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 821D710E321
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 10:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698143562; x=1729679562;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vRwUgBOcMkCbo9i3a7r6bYJtDwukc41onRK9rBH8jV8=;
 b=ZpkqfIEC2Cp+2QKwsi/OI7AVH/c8YrYEExWiGIRVaONbwVoEi4qq1BeM
 INgf8DnNud/cQg1cnyfxUeEDuGzcf8bH7GqtVhj2huIrzNZW8lGAH2Dx2
 tJcFiT+5BG1N8nK41BobBLSI7ewbDc829ClDdXzwRKlzPASlteXer4F3m
 COxMd8Rcydb3Tba5voGZCWtBko0FSXa9g/4JY8Blc9miWiWx2vatTgQJJ
 uT8ro6I8OX/fFK44OFlRRrmBCWWVJXwsWcBhJHjpaY2GTql6EeNJ/heMD
 gzCdo6Z0hRSN5sx4m6m3a1l7s8OuUgWNMmw4cDOiG+fgA1ouGGAyZUP6D A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386839366"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386839366"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="793439258"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="793439258"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:36 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 13:31:59 +0300
Message-Id: <20231024103222.302256-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/23] Framework for display parameters
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

