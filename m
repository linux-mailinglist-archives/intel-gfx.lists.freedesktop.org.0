Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFF9186A39
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 12:41:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94156E40F;
	Mon, 16 Mar 2020 11:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079486E40F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Mar 2020 11:41:42 +0000 (UTC)
IronPort-SDR: pBahatXxA5/YaLefYu9oqHhrBhYnVw8fjJXWtGWkdXMrQyb4ljRh3k3JiCog8h40MOpsiss62a
 UiBgfjPZ+O2w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2020 04:41:41 -0700
IronPort-SDR: zLu+/FfV8vB2rQLiNo4PkL/FM3/dxF+CWV5XPtBDNpmqf/rMupANs3bTQZM70L8gd8Jc1bbU/E
 cTCNo7TLIavQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; d="scan'208";a="279003117"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga002.fm.intel.com with ESMTP; 16 Mar 2020 04:41:39 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Mar 2020 13:37:41 +0200
Message-Id: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1 0/3] Consider DBuf bandwidth when calculating
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

Stanislav Lisovskiy (3):
  drm/i915: Decouple cdclk calculation from modeset checks
  drm/i915: Adjust CDCLK accordingly to our DBuf bw needs
  drm/i915: Remove unneeded hack now for CDCLK

 drivers/gpu/drm/i915/display/intel_bw.c       | 46 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bw.h       |  1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 28 +++++++----
 drivers/gpu/drm/i915/display/intel_display.c  | 32 +++++++++++--
 .../drm/i915/display/intel_display_power.h    |  1 +
 drivers/gpu/drm/i915/intel_pm.c               | 34 +++++++++++++-
 drivers/gpu/drm/i915/intel_pm.h               |  3 ++
 7 files changed, 129 insertions(+), 16 deletions(-)

-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
