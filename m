Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A76BD27437F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 15:51:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F076E874;
	Tue, 22 Sep 2020 13:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 479146E14A
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 13:51:26 +0000 (UTC)
IronPort-SDR: 338LXD/tEXSG7MOvDT1p3hMJ1n2+Gdi1hd0CZ4ktXfaGt5ZShMoJZ34zrp+42z7l5kK7L2x8BX
 S9KDqIZG1aGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="222197879"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="222197879"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 06:51:22 -0700
IronPort-SDR: o1jWSyT2VKPCsuM1OQcE458dmdMejRNAMS0PB8jVTxZtXNA5xkYXITAZdhPES6Y4Y7Yvo4Y+jT
 q7s86FJPJjbQ==
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="485966856"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Sep 2020 06:51:21 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Sep 2020 19:14:21 +0530
Message-Id: <20200922134426.9840-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [V13 0/5] Add support for mipi dsi cmd mode
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

This series contain interrupt handling part of cmd mode.
Configuration patches were merged already.

v10: Address the review comments on patch 3 and 4
v11: fix compilation issue introduced in v10
v12: fix check patch errors on patch 3
v13: Use sw vblank counter (Ville)

Vandita Kulkarni (5):
  drm/i915/dsi: Add details about TE in get_config
  i915/dsi: Configure TE interrupt for cmd mode
  drm/i915/dsi: Add TE handler for dsi cmd mode.
  drm/i915/dsi: Initiate fame request in cmd mode
  drm/i915/dsi: Enable software vblank counter

 drivers/gpu/drm/i915/display/icl_dsi.c       |  56 +++++++--
 drivers/gpu/drm/i915/display/intel_display.c |  21 ++++
 drivers/gpu/drm/i915/display/intel_dsi.h     |   1 +
 drivers/gpu/drm/i915/i915_irq.c              | 119 ++++++++++++++++++-
 4 files changed, 183 insertions(+), 14 deletions(-)

-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
