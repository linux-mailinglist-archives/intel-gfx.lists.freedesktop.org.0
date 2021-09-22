Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF989414BE8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD786EBF6;
	Wed, 22 Sep 2021 14:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ECC76E831
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:29:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="220409637"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="220409637"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:29:54 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="557485548"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:29:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:24 +0300
Message-Id: <cover.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/24] i915/display: split and constify vtable
 (v6)
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

Another round of Dave's series [1], just a rebase and resend now that CI
looks healthier.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/94459/

Dave Airlie (24):
  drm/i915/uncore: split the fw get function into separate vfunc
  drm/i915/pm: drop get_fifo_size vfunc.
  drm/i915: make update_wm take a dev_priv.
  drm/i915/wm: provide wrappers around watermark vfuncs calls (v2)
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
 drivers/gpu/drm/i915/display/intel_display.c  | 290 +++++++++------
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
 16 files changed, 887 insertions(+), 468 deletions(-)

-- 
2.30.2

