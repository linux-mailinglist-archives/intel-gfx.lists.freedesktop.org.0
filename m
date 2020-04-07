Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8491A0C03
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 12:35:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9F236E81F;
	Tue,  7 Apr 2020 10:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A874F6E81F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 10:35:55 +0000 (UTC)
IronPort-SDR: j8rAq3XMUQCHX2tqo8LueEMqEjay7NYMrIbsDcP/eQ6MvwNdRmGMUwbWhZ6/ftgGDQt9G2LJ/i
 vTjIafFsGMJA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 03:35:55 -0700
IronPort-SDR: SD48FZsxVqZOkWgBwVB5NLvHB55/iMDDPSwRw3Ov1UN65WFUmtHZAnOfFDmXvNAanNVk666la2
 w3TpIecU1lwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="254416529"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 07 Apr 2020 03:35:52 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 13:32:17 +0300
Message-Id: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 0/5] Consider DBuf bandwidth when calculating
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
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 37 +++++++---
 drivers/gpu/drm/i915/display/intel_display.c  | 40 +++++++---
 drivers/gpu/drm/i915/display/intel_display.h  |  7 ++
 .../drm/i915/display/intel_display_power.h    |  1 +
 drivers/gpu/drm/i915/intel_pm.c               | 31 +++++++-
 drivers/gpu/drm/i915/intel_pm.h               |  3 +
 8 files changed, 173 insertions(+), 26 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
