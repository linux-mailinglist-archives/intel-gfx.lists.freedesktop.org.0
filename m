Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAilFG9ccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B5A5F43E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A71110E0FB;
	Wed, 21 Jan 2026 23:08:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jQG0v24u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3384810E0FB;
 Wed, 21 Jan 2026 23:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036908; x=1800572908;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fAkFu+lgU2VkfSpyN4JLcGQTiOwOQ0W/WaYxpPMowic=;
 b=jQG0v24uO62Z/Y9/462XbDM8hIifZ9VEdi11EZhZc6aSrYQ5zswA/Vmv
 pwggrJLccfhIlaj+650txoN5hDIjH4I2ncomFM4Lx3wQenkgy3eyxVXek
 85mmIEs62OdymSkqN9+pN8aRooeu6Mkkuz2Z5nDSCrmJ4NeueQ8MtdPHe
 tDAmuf5Fd3XZZdB5MMi1+hmwCHEJDPSfX0G4AccmVltLGv+GK0kLy9Y3z
 1x8Pu7fZyVnBfixzgPiLRPGkmd/sXNwE7TDizE0q4uyrKlVT+bV3M2krK
 8jtcJvFJdXjgPLvXvMpYHl4k/riy3zd8X679W0t/gvzUz49iYQR5lkKEA A==;
X-CSE-ConnectionGUID: AaZm+GZ1RKyhA4yibCh3qA==
X-CSE-MsgGUID: 1rdHlZV1QVOb8CV50OVXUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70244959"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70244959"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:08:28 -0800
X-CSE-ConnectionGUID: tGFNgi36SD+gN4jRih8RCg==
X-CSE-MsgGUID: v1Q7tjiqROC+xJWssujQQQ==
X-Ironport-Invalid-End-Of-Message: True
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889505"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:08:25 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 00/19] Make Display free from i915_reg.h
Date: Thu, 22 Jan 2026 04:53:55 +0530
Message-ID: <20260121232414.707192-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A0B5A5F43E
X-Rspamd-Action: no action

Move the common register definition to a header to free up
display files from including i915_reg.h. This will help
avoid dupicate definitions and includes and can serve as
a common file for xe, i915 and display module.

v2:
- Moved display definitions needed for gvt and clock gating
  to display header (Jani)
- Fixed redundant includes

Uma Shankar (19):
  drm/{i915, xe}: Extract display registers from i915_reg.h to display
  drm/{i915, xe}: Extract South chicken registers from i915_reg.h to
    display
  drm/{i915, xe}: Extract display interrupt definitions
  drm/{i915, xe}: Extract DSPCLK_GATE_D from i915_reg to display
  drm/{i915, xe}: Extract pcode definitions to common header
  drm/{i915, xe}: Remove i915_reg.h from intel_display_device.c
  drm/{i915, xe}: Remove i915_reg.h from intel_dram.c
  drm/{i915, xe}: Removed i915_reg.h from intel_display.c
  drm/{i915, xe}: Remove i915_reg.h from intel_overlay.c
  drm/{i915, xe}: Remove i915_reg.h from g4x_dp.c
  drm/{i915, xe}: Remove i915_reg.h from i9xx_wm.c
  drm/{i915, xe}: Remove i915_reg.h from g4x_hdmi.c
  drm/{i915, xe}: Remove i915_reg.h from intel_rom.c
  drm/{i915, xe}: Remove i915_reg.h from intel_psr.c
  drm/{i915, xe}: Remove i915_reg.h from intel_fifo_underrun.c
  drm/{i915, xe}: Remove i915_reg.h from intel_display_irq.c
  drm/{i915, xe}: Remove i915_reg.h from intel_display_power_well.c
  drm/{i915, xe}: Remove i915_reg.h from intel_modeset_setup.c
  drm/{i915, xe}: Remove i915_reg.h from display

 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   1 -
 drivers/gpu/drm/i915/display/hsw_ips.c        |   2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |   1 -
 drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   1 -
 .../gpu/drm/i915/display/intel_backlight.c    |   1 -
 drivers/gpu/drm/i915/display/intel_bw.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_casf.c     |   1 -
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   1 -
 .../drm/i915/display/intel_display_debugfs.c  |   2 +-
 .../drm/i915/display/intel_display_device.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |   2 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../i915/display/intel_display_power_well.c   |   2 +-
 .../gpu/drm/i915/display/intel_display_regs.h | 257 +++++++++-
 .../gpu/drm/i915/display/intel_display_rps.c  |   2 +-
 .../gpu/drm/i915/display/intel_display_wa.c   |   1 -
 drivers/gpu/drm/i915/display/intel_dmc.c      |   1 -
 drivers/gpu/drm/i915/display/intel_dram.c     |   3 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   1 -
 .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    |   1 -
 drivers/gpu/drm/i915/display/intel_hdcp.c     |   2 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |   1 -
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |   1 -
 .../drm/i915/display/intel_modeset_setup.c    |   1 -
 drivers/gpu/drm/i915/display/intel_overlay.c  |   2 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   1 -
 .../gpu/drm/i915/display/intel_pch_refclk.c   |   1 -
 drivers/gpu/drm/i915/display/intel_pps.c      |   1 -
 drivers/gpu/drm/i915/display/intel_psr.c      |   1 -
 drivers/gpu/drm/i915/display/intel_rom.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 -
 drivers/gpu/drm/i915/i915_reg.h               | 465 +-----------------
 drivers/gpu/drm/i915/intel_clock_gating.c     |   2 +-
 include/drm/intel/intel_gmd_common_regs.h     | 249 ++++++++++
 41 files changed, 514 insertions(+), 517 deletions(-)
 create mode 100644 include/drm/intel/intel_gmd_common_regs.h

-- 
2.50.1

