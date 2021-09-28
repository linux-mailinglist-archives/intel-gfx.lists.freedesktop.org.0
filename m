Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8107D41BA9C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 00:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97986E9C3;
	Tue, 28 Sep 2021 22:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D27B6E9C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 22:58:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="224891111"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="224891111"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 15:58:13 -0700
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="554375288"
Received: from pop-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.36.249])
 by fmsmga003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 15:58:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>,
	jani.nikula@intel.com
Date: Wed, 29 Sep 2021 01:57:44 +0300
Message-Id: <cover.1632869550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/24] i915/display: split and constify vtable,
 again
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

I must have read the series several times over without spotting the
issue, but finally figured it out with the help of [1].

Return value and check added to intel_compute_global_watermarks() in
patch 4, and a couple of patches rebased. Seems so obvious now...

Fingers crossed.

BR,
Jani.

[1] https://patchwork.freedesktop.org/patch/msgid/20210928223241.22149-1-jani.nikula@intel.com

Cc: Dave Airlie <airlied@gmail.com>

Dave Airlie (24):
  drm/i915/uncore: split the fw get function into separate vfunc
  drm/i915/pm: drop get_fifo_size vfunc.
  drm/i915: make update_wm take a dev_priv.
  drm/i915/wm: provide wrappers around watermark vfuncs calls (v3)
  drm/i915: add wrappers around cdclk vtable funcs.
  drm/i915/display: add intel_fdi_link_train wrapper.
  drm/i915: split clock gating init from display vtable
  drm/i915: split watermark vfuncs from display vtable.
  drm/i915: split color functions from display vtable
  drm/i915: split audio functions from display vtable
  drm/i915: split cdclk functions from display vtable.
  drm/i915: split irq hotplug function from display vtable
  drm/i915: split fdi link training from display vtable.
  drm/i915: split the dpll clock compute out from display vtable.
  drm/i915: constify fdi link training vtable
  drm/i915: constify hotplug function vtable.
  drm/i915: constify color function vtable.
  drm/i915: constify the audio function vtable
  drm/i915: constify the dpll clock vtable
  drm/i915: constify the cdclk vtable
  drm/i915: drop unused function ptr and comments.
  drm/i915: constify display function vtable
  drm/i915: constify clock gating init vtable.
  drm/i915: constify display wm vtable

 drivers/gpu/drm/i915/display/intel_audio.c    |  43 ++-
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 337 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_color.c    | 138 ++++---
 drivers/gpu/drm/i915/display/intel_display.c  | 289 +++++++++------
 .../drm/i915/display/intel_display_power.c    |   2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  48 ++-
 drivers/gpu/drm/i915/display/intel_fdi.c      |  26 +-
 drivers/gpu/drm/i915/display/intel_fdi.h      |   2 +
 drivers/gpu/drm/i915/display/intel_hotplug.c  |   4 +-
 drivers/gpu/drm/i915/i915_drv.h               | 124 ++++---
 drivers/gpu/drm/i915/i915_irq.c               |  28 +-
 drivers/gpu/drm/i915/intel_pm.c               | 231 ++++++------
 drivers/gpu/drm/i915/intel_pm.h               |   1 -
 drivers/gpu/drm/i915/intel_uncore.c           |  70 ++--
 drivers/gpu/drm/i915/intel_uncore.h           |   7 +-
 16 files changed, 888 insertions(+), 466 deletions(-)

-- 
2.30.2

