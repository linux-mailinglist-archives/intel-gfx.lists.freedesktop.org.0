Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 105E81D0C7F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 11:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA0256E9E9;
	Wed, 13 May 2020 09:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB1E6E9E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 09:42:21 +0000 (UTC)
IronPort-SDR: iqjYZBqkeByCi3VJJwNI8JlgZdSTRAUiGpbpaWEorpJjOUAlW6Vc/BnwGl1MDo+IS+eI/YISAK
 iAQWIDKlHFpw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 02:42:20 -0700
IronPort-SDR: BzPmd9akRx2Qg4j1FqZFPv42SwhfWAwcT2Delnzk7TeSz12L3IQKvJLtQflG90mqk83xDKBeFb
 iTGlM2BQOLSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="464070985"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga006.fm.intel.com with ESMTP; 13 May 2020 02:42:19 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 12:38:10 +0300
Message-Id: <20200513093816.11466-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v29 0/6] SAGV support for Gen12+
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
v28: PCode patch was merged, one patch was added, sent new series.

Stanislav Lisovskiy (6):
  drm/i915: Introduce skl_plane_wm_level accessor.
  drm/i915: Extract skl SAGV checking
  drm/i915: Make active_pipes check skl specific
  drm/i915: Add TGL+ SAGV support
  drm/i915: Restrict qgv points which don't have enough bandwidth.
  drm/i915: Enable SAGV support for Gen12

 drivers/gpu/drm/i915/display/intel_bw.c       | 137 +++++++++---
 drivers/gpu/drm/i915/display/intel_bw.h       |   9 +
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_types.h    |   5 +
 drivers/gpu/drm/i915/intel_pm.c               | 202 +++++++++++++++---
 drivers/gpu/drm/i915/intel_pm.h               |   5 +-
 6 files changed, 302 insertions(+), 64 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
