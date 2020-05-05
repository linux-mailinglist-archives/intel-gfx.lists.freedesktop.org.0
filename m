Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 657401C5321
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 12:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD55489E23;
	Tue,  5 May 2020 10:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB8589E23
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 10:27:01 +0000 (UTC)
IronPort-SDR: TtjaqsZIQbUIEoPFucl+iowczxk7P7JOrHTGaHb6PZzJgCPp9NGdyGdUsPW48kDEWEh/r1olpQ
 f0+H3ZAp9mnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 03:27:00 -0700
IronPort-SDR: aqBkRjK6s2foGwfiDKjlkFpPtz8i511UjzabwNFOk2ubD7W8qyk71Nm3NjVInysxewMkfpEh/P
 nfwJ8y/WduLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="434432018"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 05 May 2020 03:26:58 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 13:22:41 +0300
Message-Id: <20200505102247.32452-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v27 0/6] SAGV support for Gen12+
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

v25: Rebased patch series as part was merged already
v26: Had to resend the whole series as one more mid patch was added
v27: Patches 2,3,7 were pushed, have to resend the series to prevent
     build failure.

Stanislav Lisovskiy (6):
  drm/i915: Introduce skl_plane_wm_level accessor.
  drm/i915: Separate icl and skl SAGV checking
  drm/i915: Add TGL+ SAGV support
  drm/i915: Added required new PCode commands
  drm/i915: Restrict qgv points which don't have enough bandwidth.
  drm/i915: Enable SAGV support for Gen12

 drivers/gpu/drm/i915/display/intel_bw.c       | 139 ++++++--
 drivers/gpu/drm/i915/display/intel_bw.h       |   9 +
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/i915_reg.h               |   4 +
 drivers/gpu/drm/i915/intel_pm.c               | 303 ++++++++++++++++--
 drivers/gpu/drm/i915/intel_pm.h               |   2 +
 drivers/gpu/drm/i915/intel_sideband.c         |   2 +
 8 files changed, 407 insertions(+), 66 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
