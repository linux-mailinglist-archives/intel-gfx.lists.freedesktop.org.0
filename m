Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A0C1C59A1
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 16:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1878C89C59;
	Tue,  5 May 2020 14:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F69689C59
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 14:32:31 +0000 (UTC)
IronPort-SDR: te6wN0seMOO2Y2S1KnqrUMGzLzVeoxroemx6+8s217ukgKbi3tUaU7xdKEhi6i37bFqzm112Af
 2Udxq2ZmSeBg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 07:32:30 -0700
IronPort-SDR: 17v13Wbzv0PI2gtVajAGA2WCsCrq91gd1PJ6May0LdBY6XSShY9m6xWMPfudctPAcJBBII46IU
 mAXYpsslGn0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,355,1583222400"; d="scan'208";a="434505723"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga005.jf.intel.com with ESMTP; 05 May 2020 07:32:28 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 May 2020 17:28:11 +0300
Message-Id: <20200505142816.13021-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 0/5] Consider DBuf bandwidth when calculating
 CDCLK
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

We need to calculate cdclk after watermarks/ddb has been calculated
as with recent hw CDCLK needs to be adjusted accordingly to DBuf
requirements, which is not possible with current code organization.

Setting CDCLK according to DBuf BW requirements and not just rejecting
if it doesn't satisfy BW requirements, will allow us to save power when
it is possible and gain additional bandwidth when it's needed - i.e
boosting both our power management and perfomance capabilities.

This patch is preparation for that, first we now extract modeset
calculation from modeset checks, in order to call it after wm/ddb
has been calculated.

Stanislav Lisovskiy (5):
  drm/i915: Decouple cdclk calculation from modeset checks
  drm/i915: Force recalculate min_cdclk if planes config changed
  drm/i915: Introduce for_each_dbuf_slice_in_mask macro
  drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
  drm/i915: Remove unneeded hack now for CDCLK

 drivers/gpu/drm/i915/display/intel_bw.c       | 73 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bw.h       |  7 ++
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 56 +++++++++++---
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 40 +++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  7 ++
 .../drm/i915/display/intel_display_power.h    |  1 +
 drivers/gpu/drm/i915/intel_pm.c               | 31 +++++++-
 drivers/gpu/drm/i915/intel_pm.h               |  3 +
 9 files changed, 194 insertions(+), 27 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
