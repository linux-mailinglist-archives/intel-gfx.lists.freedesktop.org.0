Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF6E1709C4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 21:35:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880536EBC0;
	Wed, 26 Feb 2020 20:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F15A66EBBB
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 20:35:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 12:35:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="238154924"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 26 Feb 2020 12:35:30 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Feb 2020 22:34:42 +0200
Message-Id: <20200226203455.23032-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/13] drm/i915: Clean up DPLL output/refclock
 tracking
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

This patchset moves the platforms specific functions calculating the
DPLL frequency next to the counterpart functions calculating DPLL params
from a given frequency.

It also adds a way to track the DPLL reference clock frequencies in a
unified way across platforms.

Imre Deak (13):
  drm/i915: Fix bounds check in intel_get_shared_dpll_id()
  drm/i915: Move DPLL HW readout/sanitize fns to intel_dpll_mgr.c
  drm/i915: Keep the global DPLL state in a DPLL specific struct
  drm/i915: Move the DPLL vfunc inits after the func defines
  drm/i915/hsw: Use the DPLL ID when calculating DPLL clock
  drm/i915: Move DPLL frequency calculation to intel_dpll_mgr.c
  drm/i915/skl: Parametrize the DPLL ref clock instead of open-coding it
  drm/i915/hsw: Rename the get HDMI/DP DPLL funcs to get WRPLL/LCPLL
  drm/i915/hsw: Split out the SPLL parameter calculation
  drm/i915/hsw: Split out the WRPLL,LCPLL,SPLL frequency calculation
  drm/i915/skl,cnl: Split out the WRPLL/LCPLL frequency calculation
  drm/i915/hsw: Use the read-out WRPLL/SPLL state instead of reading out
    again
  drm/i915: Unify the DPLL ref clock frequency tracking

 drivers/gpu/drm/i915/display/icl_dsi.c        |  18 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 455 +---------
 drivers/gpu/drm/i915/display/intel_ddi.h      |   2 -
 drivers/gpu/drm/i915/display/intel_display.c  |  52 +-
 .../drm/i915/display/intel_display_debugfs.c  |   9 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 808 +++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   8 +-
 drivers/gpu/drm/i915/i915_drv.h               |  27 +-
 8 files changed, 736 insertions(+), 643 deletions(-)

-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
