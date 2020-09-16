Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E84526C507
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 18:22:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BC56EA6A;
	Wed, 16 Sep 2020 16:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 969A26EA69
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 16:21:59 +0000 (UTC)
IronPort-SDR: TSJNo3JdK1HYr/K+2cENsUQkbM/bgU2wTb6rd8BcOaf4iDxJ3GZrBceS7sxyzxESWSZQGlGneb
 d99Owwb2R2cQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="147195499"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="147195499"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 09:21:58 -0700
IronPort-SDR: 3F8dA61YXjmHBabGTpUuUCDtfUl9HbMgysEoviH8SnpUlAAMC/zB8GapVx4LJLspovoRtKiFCl
 Mkyw9vHjUDGg==
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="483371232"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 16 Sep 2020 09:21:56 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Sep 2020 21:45:24 +0530
Message-Id: <20200916161528.2659-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [V12 0/4] Add support for mipi dsi cmd mode
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

Vandita Kulkarni (4):
  drm/i915/dsi: Add details about TE in get_config
  i915/dsi: Configure TE interrupt for cmd mode
  drm/i915/dsi: Add TE handler for dsi cmd mode.
  drm/i915/dsi: Initiate fame request in cmd mode

 drivers/gpu/drm/i915/display/icl_dsi.c       |  56 +++++++--
 drivers/gpu/drm/i915/display/intel_display.c |  10 ++
 drivers/gpu/drm/i915/display/intel_dsi.h     |   1 +
 drivers/gpu/drm/i915/i915_irq.c              | 115 ++++++++++++++++++-
 4 files changed, 168 insertions(+), 14 deletions(-)

-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
