Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F7235D6E3
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 07:10:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D9C6E21D;
	Tue, 13 Apr 2021 05:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E9366E1BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 05:10:49 +0000 (UTC)
IronPort-SDR: u9EaPBNPqAESNGovabjqMDRehPhlRNC/Ga4kKm1tmQa2jZ55BrF1wJY54lDRyfI2rFghL1JM/w
 9G2jIRjLsdtg==
X-IronPort-AV: E=McAfee;i="6200,9189,9952"; a="194371980"
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="194371980"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 22:10:46 -0700
IronPort-SDR: 39BKGXJAGCBkyjqyCutVFSg26Vsin8sTTWjuoFFsA5bNgS5qlQiaBO1h79U8VPFkq9C33VUTN5
 wQFYv3/x5fdQ==
X-IronPort-AV: E=Sophos;i="5.82,218,1613462400"; d="scan'208";a="460450738"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2021 22:10:43 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Apr 2021 22:09:50 -0700
Message-Id: <20210413051002.92589-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/12] drm/i915: Extend GEN renames to the
 rest of the driver
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Like was done for the display part that parted ways with INTEL_GEN(),
replacing with DISPLAY_VER(), do a similar conversion for the rest of
the driver.

v1.1: Remove .ko that was incorrectly added as part of patch 11, making it
very big and not going through the mailing list. Sorry for those in CC
who received it.

v2:
  - Add "drm/i915/display: rename display version macros" to rename
    macro and repurpose it: s/IS_DISPLAY_RANGE/IS_DISPLAY_VER/ and convert
    the current users of IS_DISPLAY_VER to use direct comparison
  - Group display patches to easily apply independently

Lucas De Marchi (12):
  drm/i915/display: use DISPLAY_VER() on remaining users
  drm/i915: rename display.version to display.ver
  drm/i915/display: rename display version macros
  drm/i915: add macros for graphics and media versions
  drm/i915/gt: replace gen use in intel_engine_cs
  drm/i915/selftests: replace unused mask with simple version
  drm/i915/selftests: eliminate use of gen_mask
  drm/i915: finish removal of gen_mask
  drm/i915: eliminate remaining uses of intel_device_info->gen
  drm/i915: finish removal of gen from intel_device_info
  drm/i915: add media and display versions to device_info print
  drm/i915: split dgfx features from gen 12

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
 drivers/gpu/drm/i915/display/intel_atomic.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  8 +--
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 18 +++---
 drivers/gpu/drm/i915/display/intel_color.c    |  6 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_csr.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 26 ++++-----
 .../drm/i915/display/intel_ddi_buf_trans.c    |  8 +--
 drivers/gpu/drm/i915/display/intel_display.c  | 56 +++++++++----------
 .../drm/i915/display/intel_display_power.c    | 26 ++++-----
 drivers/gpu/drm/i915/display/intel_dp.c       |  8 +--
 drivers/gpu/drm/i915/display/intel_dpll.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 20 +++----
 .../drm/i915/display/intel_fifo_underrun.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  | 10 ++--
 drivers/gpu/drm/i915/display/intel_panel.c    |  8 +--
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |  6 +-
 .../drm/i915/display/skl_universal_plane.c    |  8 +--
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 22 ++++----
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 40 ++++++-------
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  | 18 +++---
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 10 ++--
 drivers/gpu/drm/i915/i915_drv.c               |  4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 41 ++++++++------
 drivers/gpu/drm/i915/i915_irq.c               | 10 ++--
 drivers/gpu/drm/i915/i915_pci.c               | 13 +++--
 drivers/gpu/drm/i915/intel_device_info.c      |  4 +-
 drivers/gpu/drm/i915/intel_device_info.h      |  6 +-
 drivers/gpu/drm/i915/intel_pm.c               | 48 ++++++++--------
 drivers/gpu/drm/i915/intel_uncore.c           |  8 ++-
 drivers/gpu/drm/i915/selftests/intel_uncore.c |  8 ++-
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  2 +-
 46 files changed, 260 insertions(+), 246 deletions(-)

-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
