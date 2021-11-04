Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A74E445599
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 15:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4661E6E424;
	Thu,  4 Nov 2021 14:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C186E424
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 14:45:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231663905"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="231663905"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 07:45:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="585964812"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 04 Nov 2021 07:45:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Nov 2021 16:45:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 16:45:03 +0200
Message-Id: <20211104144520.22605-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/17] drm/i915/fbc: Prep work for multiple FBC
 instances
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Bunch of refactoring and cleanups, mainly as prep work
for introducing multiple FBC instances in the future.

Ville Syrjälä (17):
  drm/i915/fbc: Exract snb_fbc_program_fence()
  drm/i915/fbc: Extract {skl,glk}_fbc_program_cfb_stride()
  drm/i915/fbc: Just use params->fence_y_offset always
  drm/i915/fbc: Introduce intel_fbc_is_compressing()
  drm/i915/fbc: Extract helpers to compute FBC control register values
  drm/i915/fbc: Introduce intel_fbc_funcs
  drm/i915/fbc: Introduce .nuke() vfunc
  drm/i915/fbc: s/gen7/ivb/
  drm/i915/fbc: Introduce .program_cfb() vfunc
  drm/i915/fbc: Introduce intel_fbc_set_false_color()
  drm/i915/fbc: Nuke BDW_FBC_COMP_SEG_MASK
  drm/i915/fbc: Clean up all register defines
  drm/i915/fbc: Finish polishing FBC1 registers
  drm/i915: Relocate FBC_LLC_READ_CTRL
  drm/i915/fbc: s/dev_priv/i915/
  drm/i915/fbc: Start passing around intel_fbc
  drm/1915/fbc: Replace plane->has_fbc with a pointer to the fbc
    instance

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_debugfs.c  |  43 +-
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      | 996 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_fbc.h      |  11 +-
 .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |  10 +-
 drivers/gpu/drm/i915/i915_drv.h               |   4 +
 drivers/gpu/drm/i915/i915_reg.h               | 154 +--
 drivers/gpu/drm/i915/intel_pm.c               |  16 +-
 11 files changed, 695 insertions(+), 559 deletions(-)

-- 
2.32.0

