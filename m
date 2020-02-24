Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E16FB16AA32
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 16:35:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672726E532;
	Mon, 24 Feb 2020 15:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC156E3F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 15:35:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 07:35:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="316779317"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga001.jf.intel.com with ESMTP; 24 Feb 2020 07:35:41 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 17:32:32 +0200
Message-Id: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v18 0/8] Refactor Gen11+ SAGV support
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

For Gen11+ platforms BSpec suggests disabling specific
QGV points separately, depending on bandwidth limitations
and current display configuration. Thus it required adding
a new PCode request for disabling QGV points and some
refactoring of already existing SAGV code.
Also had to refactor intel_can_enable_sagv function,
as current seems to be outdated and using skl specific
workarounds, also not following BSpec for Gen11+.

v17: Had to rebase the whole series.
v18: Resent whole series as new patch was introduced.

Stanislav Lisovskiy (8):
  drm/i915: Start passing latency as parameter
  drm/i915: Introduce skl_plane_wm_level accessor.
  drm/i915: Add intel_bw_get_*_state helpers
  drm/i915: Introduce more *_state_changed indicators
  drm/i915: Refactor intel_can_enable_sagv
  drm/i915: Added required new PCode commands
  drm/i915: Restrict qgv points which don't have enough bandwidth.
  drm/i915: Enable SAGV support for Gen12

 drivers/gpu/drm/i915/display/intel_atomic.c   |   2 +
 drivers/gpu/drm/i915/display/intel_bw.c       | 211 +++++--
 drivers/gpu/drm/i915/display/intel_bw.h       |  36 ++
 drivers/gpu/drm/i915/display/intel_display.c  | 141 ++++-
 .../drm/i915/display/intel_display_types.h    |  34 +-
 drivers/gpu/drm/i915/i915_drv.h               |   3 +
 drivers/gpu/drm/i915/i915_reg.h               |   4 +
 drivers/gpu/drm/i915/intel_pm.c               | 581 +++++++++++++++---
 drivers/gpu/drm/i915/intel_pm.h               |   4 +-
 drivers/gpu/drm/i915/intel_sideband.c         |   2 +
 10 files changed, 864 insertions(+), 154 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
