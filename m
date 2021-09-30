Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE42E41D636
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 11:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1816E3AE;
	Thu, 30 Sep 2021 09:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9613B6E3AE
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 09:23:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="221939859"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="221939859"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:10 -0700
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="555648717"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 02:23:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Date: Thu, 30 Sep 2021 12:22:57 +0300
Message-Id: <cover.1632992608.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/display: move modeset asserts out
 of intel_display.c
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

This is a bit of an RFC. I think there are two basic approaches:

1) Move asserts out of intel_display.c next to the functionality they
   assert. This patch series starts on this path.

2) Move basic status/state queries out of intel_display.c and have
   separate assert functions that use the query functions and then do
   the asserts. For example, add intel_fdi_tx_enabled() in intel_fdi.c,
   and have a separate assert_fdi_tx_enabled() in intel_display.c or,
   say, intel_assert.c.

There are currently examples of both approaches in code, see for example
assert_pch_dp_disabled() and assert_shared_dpll(). With approach 1, I'd
imagine moving assert_pch_dp_disabled() to g4x_dp.c too. With approach
2, I'd imagine moving assert_shared_dpll out of intel_dpll_mgr.c.

Arguably 2) is a cleaner approach, with the state queries and asserts
separated instead of bundled into one. However, there does not always
seem to be an actual need for this separation, and often the only users
for the query functions are or would be the asserts, leading to extra
code and calls. So I opted for 1) instead. If there's a need for a
separate query function, great, but if not, just bundle them together.

In any case, I think *all* the assert functions need to be moved out of
intel_display.c.


BR,
Jani.


Jani Nikula (4):
  drm/i915/fdi: move fdi modeset asserts to intel_fdi.c
  drm/i915/pps: move pps (panel) modeset asserts to intel_pps.c
  drm/i915/dpll: move dpll modeset asserts to intel_dpll.c
  drm/i915/dsi: move dsi pll modeset asserts to vlv_dsi_pll.c

 drivers/gpu/drm/i915/display/intel_color.c    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 162 +-----------------
 drivers/gpu/drm/i915/display/intel_display.h  |  13 --
 .../drm/i915/display/intel_display_power.c    |   3 +-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  35 +++-
 drivers/gpu/drm/i915/display/intel_dpll.h     |   3 +
 drivers/gpu/drm/i915/display/intel_dsi.h      |   3 +
 drivers/gpu/drm/i915/display/intel_fdi.c      |  91 ++++++++++
 drivers/gpu/drm/i915/display/intel_fdi.h      |  10 ++
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +
 drivers/gpu/drm/i915/display/intel_pps.c      |  59 +++++++
 drivers/gpu/drm/i915/display/intel_pps.h      |   3 +
 drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  23 +++
 13 files changed, 229 insertions(+), 180 deletions(-)

-- 
2.30.2

