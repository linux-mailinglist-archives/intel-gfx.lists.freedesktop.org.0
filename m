Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53212766DAA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 14:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE3110E203;
	Fri, 28 Jul 2023 12:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93F4210E203
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 12:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690548979; x=1722084979;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kYVln8hALIDAQQJtIfb1HsilS6Ejpui+A/n9x25GZrk=;
 b=YQCjjF7IMkdE3bQYD/dSeyCIXVZykAgBet7miO/+/FIHEOVK5srVwWfi
 XVoh4mv8ul63jST+7GfomQJQdDqgE82Qd2n/ypuQPZuxfarlwE3AQaGwi
 PN2KJyQzmga+wIu/p1henzppoN1nYSwkKAVyxThL2o/USWXuR/RBWJQFK
 N2IQ1W9yJ4JAAS4SZbjR0OLFlahOBoFdFhFAGdg9Rk1GdF5dvH/6KBW5I
 DAgG9urqx0qk0DeR0eRJ2xdDNNkapbfYSn0V/uVQFLlqyZzgZnFjIAm3L
 g1GM9AF84ExjSUxUb/SeaZgTNhc1tKV3i/UoVjtcuOzwjzGMa7xykTDCF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="358612273"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="358612273"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 05:56:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="727473050"
X-IronPort-AV: E=Sophos;i="6.01,237,1684825200"; d="scan'208";a="727473050"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga002.jf.intel.com with ESMTP; 28 Jul 2023 05:56:17 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jul 2023 18:16:03 +0530
Message-Id: <20230728124609.2911830-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/6] Panel replay phase1 implementation
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Panel Replay is a power saving feature for DP 2.0 monitor and similar
to PSR on EDP.

These patches are basic enablement patches added on top of
existing psr framework to enable full-screen live active frame
update mode of panel replay. Panel replay also can be enabled
in selective update mode which will be enabled in a incremental
approach.

As per current design panel replay priority is higher than psr.
intel_dp->psr.pr_enabled flag indicate panel replay is enabled.
intel_dp->psr.pr_enabled + intel_dp->psr.psr2_enabled indicates
panel replay is enabled in selective update mode.
intel_dp->psr.pr_enabled + intel_dp->psr.psr2_enabled +
intel_psr.selective_fetch enabled indicates panel replay is
enabled in selective update mode with selective fetch.
PSR replated flags remain same like before.

Note: The patches are not tested due to unavailability of monitor.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (5):
  drm/panelreplay: dpcd register definition for panelreplay
  drm/i915/panelreplay: Added HAS_PANEL_REPLAY() macro
  drm/i915/panelreplay: Initializaton and compute config for panel
    replay
  drm/i915/panelreplay: Enable panel replay dpcd initialization for DP
  drm/i915/panelreplay: enable/disable panel replay

Jouni Högander (1):
  drm/i915/psr: Move psr specific dpcd init into own function

 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  44 ++++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 158 +++++++++++++-----
 include/drm/display/drm_dp.h                  |  11 ++
 5 files changed, 168 insertions(+), 55 deletions(-)

-- 
2.29.0

