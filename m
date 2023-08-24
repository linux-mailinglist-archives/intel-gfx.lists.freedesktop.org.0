Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D3F7866A2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 06:20:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E9E10E481;
	Thu, 24 Aug 2023 04:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8286310E0E8
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 04:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692850838; x=1724386838;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Iqgc0ky8FmomQuRW5lh9PVxXLvVHuonQq5nufzqJnbU=;
 b=MZG3hAoo6kisNH5DmYYhZG74ol8OVBrZDT4EC7sDn3qK056jEci3XPEV
 F8z3PS5S+LC648ZtgLfJq9oEPbklEjLG9n2HFXTcVqoy7ReiCd4OmGFJM
 3MjZZLVHx4nrQrmb19XusCNLyukHZdluIvRnNb6AaawEKiIdbQBLV5lCr
 ExMWUqUA4/r68rdbex+4SGBu29qv+nRSYuRxECYhyPVF7cxzPwvmw+Mym
 YsPDn7q0W4n4pMyIEIvD8FfCocMOZyCPqCzbfd2Wce9gFe36dJBjnkwwe
 QZ7Y32LEktqXKXhVWIUAVqVqbhK3WjJmDW8ooRvKXvSlHMPL5Q3uOujx+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="371750938"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371750938"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 21:20:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730441449"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730441449"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2023 21:20:35 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 09:39:46 +0530
Message-Id: <20230824040952.186407-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/6] Panel replay phase1 implementation
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
  drm/i915/panelreplay: Added HAS_PANEL_REPLAY() macro
  drm/i915/panelreplay: Initializaton and compute config for panel
    replay
  drm/i915/panelreplay: Enable panel replay dpcd initialization for DP
  drm/i915/panelreplay: enable/disable panel replay

Jouni Högander (1):
  drm/i915/psr: Move psr specific dpcd init into own function

 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |  13 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  44 +++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   3 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 197 ++++++++++++------
 include/drm/display/drm_dp.h                  |  11 +
 6 files changed, 199 insertions(+), 70 deletions(-)

-- 
2.29.0

