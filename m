Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7308E6BD0D7
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2B3210E156;
	Thu, 16 Mar 2023 13:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7011010E156
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678973382; x=1710509382;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WrMDsevpNKtBg1Ec5NucQTwTcqiXhMMM1vNZrBtAjxk=;
 b=ek2K09/L7IXPHh+iprG5ZTn462P2vfo7FpvY3U9foYgrvyUrxeTbwzeP
 kha+CIQs3F63v1aO6vRBd+O5l6zkyrL7/3oVrbENxETEWgcQzyj4lDeGX
 TvScW68acbvEoZiS76aItouq+7Fv26ZaOfUdMP01rpEQUmcp1zaOXifvI
 ue3WC9q2CKCG9QRx6RRqF7/iZ/CYqXEZQl4FTFhMai6be7sZmVpvq8HlX
 xP9ztMrUCweoq1YRufBzwogVKfJ+ihhycg8JbmSqG83RUVZ/lc3RtlBcR
 F1Qci/XVhg8L35JJC64ymht0Oc0gPQGBPKglI1UkwSeTKeCQRZR9xIHrI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="317639083"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="317639083"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:29:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="712358701"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="712358701"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.158])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:29:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:29:29 +0200
Message-Id: <cover.1678973282.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915/regs: split display regs by
 function
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Shave off 1.2k lines from i915_reg.h.

Jani Nikula (7):
  drm/i915/pps: split out PPS regs to a separate file
  drm/i915/tv: split out TV regs to a separate file
  drm/i915/aux: split out DP AUX regs to a separate file
  drm/i915/fdi: split out FDI regs to a separate file
  drm/i915/wm: split out SKL+ watermark regs to a separate file
  drm/i915/psr: split out PSR regs to a separate file
  drm/i915/dsb: split out DSB regs to a separate file

 drivers/gpu/drm/i915/display/intel_crt.c      |    1 +
 .../drm/i915/display/intel_display_debugfs.c  |    1 +
 .../drm/i915/display/intel_display_power.c    |    2 +
 .../i915/display/intel_display_power_well.c   |    1 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |    1 +
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  |   84 ++
 drivers/gpu/drm/i915/display/intel_dsb.c      |    1 +
 drivers/gpu/drm/i915/display/intel_dsb_regs.h |   67 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |    1 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |    1 +
 drivers/gpu/drm/i915/display/intel_fdi_regs.h |  151 ++
 drivers/gpu/drm/i915/display/intel_lvds.c     |    1 +
 .../gpu/drm/i915/display/intel_pch_display.c  |    1 +
 drivers/gpu/drm/i915/display/intel_pps.c      |    1 +
 drivers/gpu/drm/i915/display/intel_pps_regs.h |   78 ++
 drivers/gpu/drm/i915/display/intel_psr.c      |    1 +
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  260 ++++
 drivers/gpu/drm/i915/display/intel_tv.c       |    3 +-
 drivers/gpu/drm/i915/display/intel_tv_regs.h  |  490 +++++++
 drivers/gpu/drm/i915/display/skl_watermark.c  |    1 +
 .../gpu/drm/i915/display/skl_watermark_regs.h |  165 +++
 drivers/gpu/drm/i915/gvt/edid.c               |    1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |    5 +
 drivers/gpu/drm/i915/i915_irq.c               |    2 +
 drivers/gpu/drm/i915/i915_reg.h               | 1219 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |    4 +
 26 files changed, 1323 insertions(+), 1220 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_fdi_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_pps_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_psr_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_tv_regs.h
 create mode 100644 drivers/gpu/drm/i915/display/skl_watermark_regs.h

-- 
2.39.2

