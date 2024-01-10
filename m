Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0009D829AF6
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 14:13:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE8610E598;
	Wed, 10 Jan 2024 13:13:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4F5F10E598
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 13:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704892406; x=1736428406;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1R4vJ8C1oKn1Z3VXcGBQZvBFg5SlQKqcNugO3Ecfpxk=;
 b=Nakw7xZBTVVg2n4egnihur4Jjhdh9OEboOemhtBT/KQKpqBatB36GFNX
 reMo06r45QplzKOJM/rkxTI7vZDcb4/ipu5+QBE8w1/xEK/DGTLKWW3Cf
 mzMKJmUCPz19mwDNEZwB81U6c/ilKA5cJjA1FYl+AIzuhf+V6XBYoUXjP
 AKGBDjJV9iEXppy72Jj+BSt4lZ7x81EC+1H9N2vCRmDoMbdselqudNRAk
 fAZr55i7U6SzdxKnRhzHzSOpsYMEyOl1ScjzVBrlI+Hg/40EgzPj6a9WW
 Bhhs1Wdy7OMy+Axkep/VBnX4W88B0Adnko2JINrBD2Y19bbR+3irqT1HN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="464913990"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="464913990"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="816347005"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="816347005"
Received: from vsovraso-mobl.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.211.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 05:13:24 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 00/13] Panel replay selective update support
Date: Wed, 10 Jan 2024 15:12:51 +0200
Message-Id: <20240110131304.2470006-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

This patch set is implementing panel replay selective update support
for Intel hardware.

It is also fixing couple of exisiting issues in current panel replay
implementation:

ALPM status is checked even on DP (non eDP)
PSR capability change is checked even when using panel replay
Make psr pause/resume to work for panel replay as well

Panel replay is disabled by default for now. This is done to minimize
possible issues faced by customers as we haven't yet validated the
feature completely.

v2: Make psr pause/resume to work for panel replay as well

Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (13):
  drm/i915/psr: Disable panel replay for now
  drm/i915/psr: Intel_psr_pause/resume needs to support panel replay
  drm/i915/psr: Do not check alpm on DP or capability change for panel
    replay
  drm/i915/psr: Unify panel replay enable sink
  drm/i915/psr: Rename has_psr2 as has_sel_update
  drm/i915/psr: Rename psr2_enabled as sel_update_enabled
  drm/i915/psr: Add some documentation of variables used in psr code
  drm/i915/psr: Add sink_panel_replay_su_support to intel_psr
  drm/i915/psr: Detect panel replay selective update support
  drm/i915/psr: Split intel_psr2_config_valid for panel replay
  drm/panelreplay: dpcd register definition for panelreplay SU
  drm/i915/psr: Modify intel_dp_get_su_granularity to support panel
    replay
  drm/i915/psr: Add panel replay sel update support to debugfs interface

 .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   7 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 244 +++++++++++++-----
 include/drm/display/drm_dp.h                  |   6 +
 8 files changed, 196 insertions(+), 78 deletions(-)

-- 
2.34.1

