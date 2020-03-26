Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE6B194635
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 19:13:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2236E8FB;
	Thu, 26 Mar 2020 18:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E04CF6E8FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 18:13:51 +0000 (UTC)
IronPort-SDR: tTAY0kLjEmWgumFZ5lOwUxrqOYjW28EshyBU2f6dInYnBV10JsP347X10p5986ddn8ppW29G+6
 952mpUKJNVuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 11:13:51 -0700
IronPort-SDR: DXIG7YFVO8Pnj5bCDo7yPdxfdQgiYUHaFswS14CJmxpBR8VtjmmkxJULGEdgsdZ4v3SVOTCK3R
 RlydVGqiQhrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,309,1580803200"; d="scan'208";a="420808160"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 11:13:49 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 20:09:55 +0200
Message-Id: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v20 00/10] SAGV support for Gen12+
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For Gen11+ platforms BSpec suggests disabling specific
QGV points separately, depending on bandwidth limitations
and current display configuration. Thus it required adding
a new PCode request for disabling QGV points and some
refactoring of already existing SAGV code.
Also had to refactor intel_can_enable_sagv function,
as current seems to be outdated and using skl specific
workarounds, also not following BSpec for Gen11+.

v17: Had to rebase the whole series.

v19: Added some new patches in between, rebased

v20: Added new patches and rebased the series

Stanislav Lisovskiy (10):
  drm/i915: Start passing latency as parameter
  drm/i915: Eliminate magic numbers "0" and "1" from color plane
  drm/i915: Introduce skl_plane_wm_level accessor.
  drm/i915: Add intel_atomic_get_bw_*_state helpers
  drm/i915: Extract gen specific functions from intel_can_enable_sagv
  drm/i915: Add proper SAGV support for TGL+
  drm/i915: Added required new PCode commands
  drm/i915: Rename bw_state to new_bw_state
  drm/i915: Restrict qgv points which don't have enough bandwidth.
  drm/i915: Enable SAGV support for Gen12

 drivers/gpu/drm/i915/display/intel_bw.c       | 200 +++++--
 drivers/gpu/drm/i915/display/intel_bw.h       |  24 +
 drivers/gpu/drm/i915/display/intel_display.c  |  29 +-
 .../drm/i915/display/intel_display_types.h    |  12 +
 drivers/gpu/drm/i915/i915_reg.h               |   4 +
 drivers/gpu/drm/i915/intel_pm.c               | 555 +++++++++++++++---
 drivers/gpu/drm/i915/intel_pm.h               |   6 +-
 drivers/gpu/drm/i915/intel_sideband.c         |   2 +
 8 files changed, 690 insertions(+), 142 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
