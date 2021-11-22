Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C20D458FBD
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 14:51:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 537E989E35;
	Mon, 22 Nov 2021 13:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 902D789E35
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 13:51:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="221668158"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="221668158"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:14 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="496866998"
Received: from rmcdonax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.217])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:51:01 +0200
Message-Id: <cover.1637588831.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/8] drm/i915: break intel_display_types.h
 dependency on i915_drv.h
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

Basically the rule of thumb should be that no headers include
i915_drv.h. It's just too big and includes the world. One of the worst
is intel_display_types.h. Untangle the mess a bit. There are some
changes here that are less than perfect, and there's further cleanup to
be done, but with the dependency gone, it should gradually get easier.

BR,
Jani.

Jani Nikula (8):
  drm/i915/display: use drm_crtc_wait_one_vblank() directly when
    possible
  drm/i915/display: remove intel_wait_for_vblank()
  drm/i915/crtc: un-inline some crtc functions and move to
    intel_crtc.[ch]
  drm/i915/fb: move intel_fb_uses_dpt to intel_fb.c and un-inline
  drm/i915: split out intel_pm_types.h
  drm/i915: move enum hpd_pin to intel_display.h
  drm/i915/display: convert dp_to_i915() to a macro
  drm/i915/display: stop including i915_drv.h from intel_display_types.h

 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     | 37 ++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h     |  9 ++
 drivers/gpu/drm/i915/display/intel_display.c  | 37 ++++----
 drivers/gpu/drm/i915/display/intel_display.h  | 24 +++++
 .../drm/i915/display/intel_display_types.h    | 72 +++------------
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 .../drm/i915/display/intel_dp_aux_backlight.c |  1 +
 .../drm/i915/display/intel_dp_link_training.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c      |  2 +
 drivers/gpu/drm/i915/display/intel_fb.c       | 11 +++
 drivers/gpu/drm/i915/display/intel_fb.h       |  2 +
 drivers/gpu/drm/i915/display/intel_fb_pin.c   | 10 +--
 .../drm/i915/display/intel_plane_initial.c    |  5 +-
 drivers/gpu/drm/i915/display/intel_quirks.c   |  1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |  7 +-
 drivers/gpu/drm/i915/i915_drv.h               | 88 +------------------
 drivers/gpu/drm/i915/intel_pm_types.h         | 76 ++++++++++++++++
 20 files changed, 212 insertions(+), 184 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_pm_types.h

-- 
2.30.2

