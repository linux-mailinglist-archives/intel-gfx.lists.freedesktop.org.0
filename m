Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F35A32BCF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E16E210E903;
	Wed, 12 Feb 2025 16:36:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KwOzPhsM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6830B10E903;
 Wed, 12 Feb 2025 16:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378211; x=1770914211;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qIDmZ8GFyhMCk8IVoPrqfz2e02AtA4vVqcnswtOqR0o=;
 b=KwOzPhsMpCWWIy7Kq+6Jt582SL24o5gu452MSYaWYSGe49WIajIk84Rr
 lvNhEA0Mi3QhoYouINYdSwTJBgdRbKhdqrn/RD/5UnGXbaF9t+WsEJzlY
 bFWLGzOajkBVX3wHukCqnpFA+1Rf3lp4CEicRmk99mIS59HmXBHTRFztx
 gL528rRLdh2PCBGV4sdwa5saeWfp5USCNfpV42NTB5+3bAFO3Qcyt1tSo
 XYrwvL8aTYdbpoOhza5qMXwJ1rPVv3JvlqHqk6leD4a73EhGsObjnHRh8
 C0SHJhH627r8dvIXgkGSvnE4OHRyJpOJKPfXBwQEcrIZMdgtXTX9fQT3S g==;
X-CSE-ConnectionGUID: 7JQlwRmMRGSAuuHdjgI0XA==
X-CSE-MsgGUID: /lkTI25WST61CzZ1GD/vmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="65405190"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="65405190"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:36:50 -0800
X-CSE-ConnectionGUID: /Apk0w3aRiq3wG6+R9efEg==
X-CSE-MsgGUID: hvBdBAEaS+iwiuN8qrmtOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112858729"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:36:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/14] drm/i915/display: conversions to struct intel_display
Date: Wed, 12 Feb 2025 18:36:29 +0200
Message-Id: <cover.1739378095.git.jani.nikula@intel.com>
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

Convert a bunch of files and functions to struct intel display.

The approach is to mostly convert a file, then see what the stragglers
are, convert those too, and repeat.

The PCH checks are starting to become a big straggler for further
conversions.

BR,
Jani.

Jani Nikula (14):
  drm/i915/dp: convert g4x_dp.[ch] to struct intel display
  drm/i915/hdmi: convert g4x_hdmi.[ch] to struct intel_display
  drm/i915/ips: convert hsw_ips.c to struct intel_display
  drm/i915/display: convert assert_transcoder*() to struct intel_display
  drm/i915/display: convert assert_port_valid() to struct intel_display
  drm/i915/hpd: drop dev_priv parameter from intel_hpd_pin_default()
  drm/i915/display: convert
    intel_set_{cpu,pch}_fifo_underrun_reporting() to intel_display
  drm/i915/sdvo: convert intel_sdvo.[ch] to struct intel_display
  drm/i915/display: convert intel_cpu_transcoder_mode_valid() to
    intel_display
  drm/i915/display: convert intel_mode_valid_max_plane_size() to
    intel_display
  drm/i915/dsi: convert platform checks to display->platform.<platform>
    style
  drm/i915/combo-phy: convert intel_combo_phy.[ch] to struct
    intel_display
  drm/i915/display: convert intel_fifo_underrun.[ch] to struct
    intel_display
  drm/i915/display: convert i915_pipestat_enable_mask() to struct
    intel_display

 drivers/gpu/drm/i915/display/g4x_dp.c         |  99 +++---
 drivers/gpu/drm/i915/display/g4x_dp.h         |  14 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       | 154 +++++----
 drivers/gpu/drm/i915/display/g4x_hdmi.h       |   6 +-
 drivers/gpu/drm/i915/display/hsw_ips.c        |  26 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  21 +-
 .../gpu/drm/i915/display/intel_combo_phy.c    | 180 ++++++-----
 .../gpu/drm/i915/display/intel_combo_phy.h    |   8 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  21 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 155 ++++-----
 drivers/gpu/drm/i915/display/intel_display.h  |  10 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  37 +--
 .../gpu/drm/i915/display/intel_display_irq.h  |   5 +-
 .../drm/i915/display/intel_display_power.c    |   5 +-
 .../i915/display/intel_display_power_well.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   5 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  30 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   3 +-
 .../drm/i915/display/intel_fifo_underrun.c    | 181 ++++++-----
 .../drm/i915/display/intel_fifo_underrun.h    |  18 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   5 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_hotplug.h  |   3 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   6 +-
 .../drm/i915/display/intel_modeset_setup.c    |   6 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   4 +-
 drivers/gpu/drm/i915/display/intel_pps.c      |  11 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 293 +++++++++---------
 drivers/gpu/drm/i915/display/intel_sdvo.h     |  10 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   6 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   8 +-
 36 files changed, 671 insertions(+), 700 deletions(-)

-- 
2.39.5

