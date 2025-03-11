Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228C8A5C015
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 13:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A357510E57E;
	Tue, 11 Mar 2025 12:05:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LF6zJVG6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FFF10E57E;
 Tue, 11 Mar 2025 12:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741694747; x=1773230747;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MNYh3jcn4gnSwCtt/uneRBv1/j6GPu0hueNk+v7UifQ=;
 b=LF6zJVG6IaQFlKW0meH2rZDof52kSZzFoOE+sz0pHOrQIyOcPoNGITSJ
 LpU1c2b5JtmPNTyxVrgGADEs53NmbzlFTkoX2ZSSJutCJPPVRvWsspX6t
 aipui6SBd8PQLsF/JUYRJfsNcHXXRWzV9nglJR1l2IiV6aCVa/UY/AtXj
 KQIGsYaVQVznQjdS1ecGURZcDU3dqFqKm65blNvH2ScFUfz9zsB3h8gV3
 dR5krEDxBFFw2w9JJUEdOKLRxgy4uVqvl+GaXpZ1VBYSgnJ+DIr3P1drc
 w85ZszvLqfITJSuj1bQeStc0aDlNdjV8hF5tWXCaosDKumVZCZ6W3DXkv Q==;
X-CSE-ConnectionGUID: 2b3xElmyRfODjjoZhljBNg==
X-CSE-MsgGUID: OK2Csk/+QJSfY6wRRZ8e2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="46510523"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="46510523"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:05:47 -0700
X-CSE-ConnectionGUID: Q1/iFvUmQB2b0SGCVEfmOg==
X-CSE-MsgGUID: LQjS9vmYTLSf1dJIf62OWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="151108645"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 05:05:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 0/6] drm/i915/display: add display specific runtime PM
 interface
Date: Tue, 11 Mar 2025 14:05:34 +0200
Message-Id: <cover.1741694400.git.jani.nikula@intel.com>
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

Add an abstracted display runtime PM interface to hide i915 and xe
specific details, and remove the xe compat intel_runtime_pm.h. We can
reduce direct i915 accesses from display all over the place.

Text size remains roughly the same for both i915 and xe; here's the
bloat-o-meter results for i915.ko. Presumably the reduction in existing
code is due to fewer display->i915->runtime_pm pointer chases and less
inlining, at the cost of an extra call or two.

BR,
Jani.

add/remove: 22/0 grow/shrink: 5/34 up/down: 722/-1035 (-313)
Function                                     old     new   delta
assert_display_rpm_held                        -     162    +162
intel_fbdev_driver_fbdev_probe               890     982     +92
i915_lpsp_status                             287     336     +49
intel_display_rpm_suspended                    -      46     +46
intel_display_rpm_assert_unblock               -      24     +24
intel_display_rpm_assert_block                 -      24     +24
intel_display_rpm_put_unchecked                -      20     +20
intel_display_rpm_put_raw                      -      20     +20
intel_display_rpm_put                          -      20     +20
intel_display_rpm_get_raw                      -      20     +20
intel_display_rpm_get_noresume                 -      20     +20
intel_display_rpm_get_if_in_use                -      20     +20
intel_display_rpm_get                          -      20     +20
__pfx_intel_display_rpm_suspended              -      16     +16
__pfx_intel_display_rpm_put_unchecked          -      16     +16
__pfx_intel_display_rpm_put_raw                -      16     +16
__pfx_intel_display_rpm_put                    -      16     +16
__pfx_intel_display_rpm_get_raw                -      16     +16
__pfx_intel_display_rpm_get_noresume           -      16     +16
__pfx_intel_display_rpm_get_if_in_use          -      16     +16
__pfx_intel_display_rpm_get                    -      16     +16
__pfx_intel_display_rpm_assert_unblock         -      16     +16
__pfx_intel_display_rpm_assert_block           -      16     +16
__pfx_assert_display_rpm_held                  -      16     +16
skl_watermark_ipc_status_write               208     212      +4
intel_fb_pin_to_ggtt                        1208    1211      +3
intel_dpt_pin_to_ggtt                        823     825      +2
i915_edp_psr_debug_set                       300     299      -1
intel_dsb_prepare                            447     445      -2
__already_done                               179     176      -3
intel_power_domains_resume                   215     208      -7
intel_power_domains_disable                  175     168      -7
intel_display_power_put_async_work           368     361      -7
intel_display_power_get_in_set               189     182      -7
intel_hdcp1_enable                          1066    1056     -10
intel_display_power_get                       97      87     -10
intel_power_domains_enable                   102      91     -11
intel_display_power_put                       84      73     -11
intel_bios_get_vbt                           521     510     -11
gen11_display_irq_handler                    260     249     -11
intel_atomic_commit                          699     686     -13
intel_power_domains_driver_remove            269     255     -14
intel_display_power_grab_async_put_ref       299     285     -14
intel_dmc_debugfs_status_show               1386    1371     -15
intel_display_power_flush_work               281     264     -17
intel_display_power_get_if_enabled           174     155     -19
hsw_ips_debugfs_status_show                  278     259     -19
__intel_display_power_is_enabled             145     125     -20
intel_power_domains_suspend                  490     467     -23
release_async_put_domains                    135     111     -24
intel_fbc_debugfs_status_show                386     362     -24
intel_psr_status                            2010    1985     -25
intel_display_power_put_mask_in_set          241     215     -26
intel_dp_hpd_pulse                          1664    1634     -30
intel_backlight_device_get_brightness        328     297     -31
__intel_display_power_put_async              351     320     -31
intel_power_domains_init_hw                 1756    1724     -32
i915_display_info                           2490    2458     -32
intel_atomic_commit_tail                    5991    5829    -162
intel_dmc_load_program                       978     806    -172
gen9_enable_dc5                              679     485    -194
Total: Before=2876432, After=2876119, chg -0.01%


Jani Nikula (6):
  drm/i915/display: add display specific runtime PM wrappers
  drm/i915/display: conversions to with_intel_display_rpm()
  drm/i915/display: use display runtime PM interfaces for for atomic
    state
  drm/i915/display: convert to display runtime PM interfaces
  drm/i915/power: convert to display runtime PM interfaces
  drm/xe/compat: remove intel_runtime_pm.h

 drivers/gpu/drm/i915/Makefile                 |  1 +
 drivers/gpu/drm/i915/display/hsw_ips.c        |  8 +-
 .../gpu/drm/i915/display/intel_backlight.c    |  5 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  6 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 12 +--
 .../drm/i915/display/intel_display_debugfs.c  | 17 ++---
 .../gpu/drm/i915/display/intel_display_irq.c  |  5 +-
 .../drm/i915/display/intel_display_power.c    | 63 +++++++--------
 .../i915/display/intel_display_power_well.c   |  4 +-
 .../gpu/drm/i915/display/intel_display_rpm.c  | 68 +++++++++++++++++
 .../gpu/drm/i915/display/intel_display_rpm.h  | 37 +++++++++
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  9 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  5 +-
 drivers/gpu/drm/i915/display/intel_dpt.c      |  7 +-
 drivers/gpu/drm/i915/display/intel_dsb.c      | 17 +++--
 drivers/gpu/drm/i915/display/intel_fb_pin.c   |  7 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  8 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 11 ++-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  5 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  8 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 17 ++---
 drivers/gpu/drm/i915/display/skl_watermark.c  |  9 ++-
 drivers/gpu/drm/xe/Makefile                   |  1 +
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 -
 .../xe/compat-i915-headers/intel_runtime_pm.h | 76 -------------------
 drivers/gpu/drm/xe/display/xe_display_rpm.c   | 71 +++++++++++++++++
 27 files changed, 287 insertions(+), 193 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_rpm.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_rpm.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.c

-- 
2.39.5

