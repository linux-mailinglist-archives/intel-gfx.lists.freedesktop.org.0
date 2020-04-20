Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E48D1B072D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 13:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E13A6E508;
	Mon, 20 Apr 2020 11:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 302466E508
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 11:17:36 +0000 (UTC)
IronPort-SDR: GmhO0WF8KjJpk27HGw9+XyAANTYnh1wIo/Rp2AkHSTbgUH1a9j1ZA6DnnM/aGrDdXYEeuK15Sz
 sagvdS+ibBuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 04:17:35 -0700
IronPort-SDR: 6cgubKPFAbl5thkWvz2T9xX4w0Bipkqm2vlaXBuHsHoSTIVnGSw6Okl/lsqnLymh2FY0hOBA14
 GtwCbbF7TvdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,406,1580803200"; d="scan'208";a="290053326"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2020 04:17:33 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2020 14:14:08 +0300
Message-Id: <20200420111416.23550-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v25 0/8] SAGV support for Gen12+
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

v25: Rebased patch series as part was merged already

Stanislav Lisovskiy (8):
  drm/i915: Introduce skl_plane_wm_level accessor.
  drm/i915: Use bw state for per crtc SAGV evaluation
  drm/i915: Separate icl and skl SAGV checking
  drm/i915: Add TGL+ SAGV support
  drm/i915: Added required new PCode commands
  drm/i915: Rename bw_state to new_bw_state
  drm/i915: Restrict qgv points which don't have enough bandwidth.
  drm/i915: Enable SAGV support for Gen12

 drivers/gpu/drm/i915/display/intel_bw.c       | 163 +++++---
 drivers/gpu/drm/i915/display/intel_bw.h       |  15 +
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/i915_reg.h               |   5 +
 drivers/gpu/drm/i915/intel_pm.c               | 394 +++++++++++++++---
 drivers/gpu/drm/i915/intel_pm.h               |   5 +-
 drivers/gpu/drm/i915/intel_sideband.c         |   2 +
 8 files changed, 498 insertions(+), 100 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
