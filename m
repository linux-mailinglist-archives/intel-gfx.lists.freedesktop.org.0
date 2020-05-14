Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2EA1D2917
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 09:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D5B6EAD8;
	Thu, 14 May 2020 07:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7856EAD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 07:52:57 +0000 (UTC)
IronPort-SDR: Yy/NjyAnPdchmvkOYTjxwV+jxXWmgVFc0ngtd2dFQRDSUIAXS0E0bi6C+kpD4nJ9T/Klb47Dgm
 kselED5WRe0Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 00:52:57 -0700
IronPort-SDR: tq9yylryzuQvk1qTpvY4o92crDx96DnIqMZlHulSGPiWNzydSuvKVcGFtUQrvyOR23d0XUHeLI
 lUwQNXwp/qMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,390,1583222400"; d="scan'208";a="372160448"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga001.fm.intel.com with ESMTP; 14 May 2020 00:52:55 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 10:48:50 +0300
Message-Id: <20200514074853.9508-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v30 0/3] SAGV support for Gen12+
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
v30: 3 patches merged, resending the rest with comments fixed

Stanislav Lisovskiy (3):
  drm/i915: Add TGL+ SAGV support
  drm/i915: Restrict qgv points which don't have enough bandwidth.
  drm/i915: Enable SAGV support for Gen12

 drivers/gpu/drm/i915/display/intel_bw.c       | 137 ++++++++++----
 drivers/gpu/drm/i915/display/intel_bw.h       |   9 +
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_types.h    |   5 +
 drivers/gpu/drm/i915/intel_pm.c               | 168 +++++++++++++++---
 drivers/gpu/drm/i915/intel_pm.h               |   2 +
 6 files changed, 268 insertions(+), 61 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
