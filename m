Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1E446D18D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 12:05:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F3A72D4E;
	Wed,  8 Dec 2021 11:05:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2035B72D4E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 11:05:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="236547557"
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="236547557"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 03:05:23 -0800
X-IronPort-AV: E=Sophos;i="5.87,297,1631602800"; d="scan'208";a="462725758"
Received: from cahanley-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.1])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 03:05:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Dec 2021 13:05:15 +0200
Message-Id: <cover.1638961423.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/2] drm/i915: trace display split
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

v3 of https://patchwork.freedesktop.org/series/97106/

Jani Nikula (2):
  drm/i915/trace: clean up boilerplate organization
  drm/i915/trace: split out display trace to a separate file

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |   1 +
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   1 +
 .../gpu/drm/i915/display/intel_atomic_plane.c |   5 +-
 drivers/gpu/drm/i915/display/intel_audio.c    |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   4 +-
 .../drm/i915/display/intel_display_trace.c    |   9 +
 .../drm/i915/display/intel_display_trace.h    | 587 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |   1 +
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   1 +
 .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   7 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   4 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |   1 -
 drivers/gpu/drm/i915/i915_driver.c            |   1 -
 drivers/gpu/drm/i915/i915_irq.c               |   2 +-
 drivers/gpu/drm/i915/i915_trace.h             | 583 +----------------
 drivers/gpu/drm/i915/intel_pm.c               |   2 +-
 22 files changed, 627 insertions(+), 594 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_trace.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_trace.h

-- 
2.30.2

