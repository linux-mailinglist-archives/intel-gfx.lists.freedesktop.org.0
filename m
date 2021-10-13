Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6D342BC86
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Oct 2021 12:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134166E0BC;
	Wed, 13 Oct 2021 10:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16F76E0BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Oct 2021 10:12:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="224834874"
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="224834874"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 03:12:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,370,1624345200"; d="scan'208";a="491397125"
Received: from araghuw-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.208.234])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 03:12:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Wed, 13 Oct 2021 13:11:58 +0300
Message-Id: <cover.1634119597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/1] drm/i915: vlv sideband
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

Three main ideas here:

- vlv sideband only has the name "sideband" in common with the rest of
  intel_sideband.[ch]

- we may need better abstractions on the <asm/iosf_mbi.h> dependency,
  this should help a little bit; maybe vlv_sideband.[ch] can be turned
  into that abstraction layer

- we probably want to split out sideband registers from i915_reg.h, and
  they could go to vlv_sideband.h or vlv_sideband_reg.h or something

BR,
Jani.


Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>


Jani Nikula (1):
  drm/i915: split out vlv sideband to a separate file

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |   2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |   1 +
 .../drm/i915/display/intel_display_debugfs.c  |   1 -
 .../drm/i915/display/intel_display_power.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   1 -
 drivers/gpu/drm/i915/display/intel_dpio_phy.c |   5 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   2 +-
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |   2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |   1 +
 drivers/gpu/drm/i915/gt/intel_rps.c           |   1 +
 drivers/gpu/drm/i915/i915_debugfs.c           |   1 -
 drivers/gpu/drm/i915/i915_sysfs.c             |   1 -
 drivers/gpu/drm/i915/intel_pm.c               |   1 +
 drivers/gpu/drm/i915/intel_sideband.c         | 257 -----------------
 drivers/gpu/drm/i915/intel_sideband.h         | 110 --------
 drivers/gpu/drm/i915/vlv_sideband.c           | 266 ++++++++++++++++++
 drivers/gpu/drm/i915/vlv_sideband.h           | 123 ++++++++
 22 files changed, 405 insertions(+), 382 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/vlv_sideband.c
 create mode 100644 drivers/gpu/drm/i915/vlv_sideband.h

-- 
2.30.2

