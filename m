Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7859C7920CB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 09:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0E110E17A;
	Tue,  5 Sep 2023 07:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819AB10E447;
 Tue,  5 Sep 2023 07:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693900017; x=1725436017;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Sbq2fdxSpQ9AaI1e0wPfF9f1yyaPghb6kB/jwR6AvYM=;
 b=Io8j/pBORAb8K9VTghOva0192NoLzjjosdSiUnd/32oj8z2ZA5fX3SVD
 SYujoxSdXOHtPAhHsic1WK5T7BAEN5aB2ourBotua2iNCIAVFoOZGq72j
 hw992HIc/2QilUUvkKpD75TfXb7jnK0IzUzbqfoTL3U3iA1NKlkN/y4ta
 g8he1QJVHMM35UHdiNfF8nt+YkxGi8bSxIoVwRwqz90tDkuKcbSo0ktUf
 gA9EY2YMteVMD+prY+OJGOckgjHO5dkpsfrS3eTq8g1fKkH3WZdfQwbCt
 pxSXJ83FZRPwelwsaAVRWMISRKOaZGJh2KADMw13C3ajfJGm3BVHgGHJM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="443133608"
X-IronPort-AV: E=Sophos;i="6.02,228,1688454000"; d="scan'208";a="443133608"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 00:46:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="855878435"
X-IronPort-AV: E=Sophos;i="6.02,228,1688454000"; d="scan'208";a="855878435"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2023 00:46:54 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  5 Sep 2023 13:05:45 +0530
Message-Id: <20230905073551.958368-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 0/6] Panel replay phase1 implementation
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
intel_dp->psr.panel_replay_enabled flag indicate panel replay is enabled.
intel_dp->psr.panel_replay_enabled + intel_dp->psr.psr2_enabled indicates
panel replay is enabled in selective update mode.
intel_dp->psr.panel_replay_enabled + intel_dp->psr.psr2_enabled +
intel_psr.selective_fetch enabled indicates panel replay is
enabled in selective update mode with selective fetch.
PSR replated flags remain same like before.

Note: The patches are under testing by using panel replay emulator and
panel is not avalible.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>

Animesh Manna (5):
  drm/panelreplay: dpcd register definition for panelreplay
  drm/i915/panelreplay: Initializaton and compute config for panel
    replay
  drm/i915/panelreplay: Enable panel replay dpcd initialization for DP
  drm/i915/panelreplay: enable/disable panel replay
  drm/i915/panelreplay: Debugfs support for panel replay

Jouni Högander (1):
  drm/i915/psr: Move psr specific dpcd init into own function

 .../drm/i915/display/intel_display_types.h    |  15 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  45 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 269 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h      |   7 +
 include/drm/display/drm_dp.h                  |  18 ++
 6 files changed, 257 insertions(+), 100 deletions(-)

-- 
2.29.0

