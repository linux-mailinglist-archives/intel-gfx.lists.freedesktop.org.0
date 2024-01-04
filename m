Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70652823FCB
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B516610E42D;
	Thu,  4 Jan 2024 10:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D538D10E42D
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 10:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704365366; x=1735901366;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3fRm92jcyYnePzh5tLYBwmiPAH0xyv4ZUv2o2f4+KKs=;
 b=BYq01KNH02x684WGAJMvwpX4/CqznwSq40Fj5NSx5/LKm8nnS0ueDnPW
 B+D2BncQKJw9qw38XshxC3X7L/VlNYeCaZ8vK+W+tMz0Q14DczwUp9cPp
 6bANZqi4z3DSNh2zgP5qH/hJl7qLBwu8hCWflybupTPOtP9xDHqucIaGE
 bz9mmga5XMKME389SB0+4eQs/Q7qqXURR0R9QQ/jnE11rskJ/vVMZO+/l
 wc9waYjmxFqw8XbZT2wCTuFxscjPjuBF0a/PEu83unh7JeGROGXvnepFd
 KuoX2Ig6JDyJXHZpT8f0JM+fTrKpSvU6iN/+bjhsPYLPiRDuwATMSZCfb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396928073"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396928073"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923863588"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923863588"
Received: from jstopfor-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.226])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:24 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/12] Panel replay selective update support
Date: Thu,  4 Jan 2024 12:48:09 +0200
Message-Id: <20240104104821.1822988-1-jouni.hogander@intel.com>
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

Panel replay is disabled by default for now. This is done to minimize
possible issues faced by customers as we haven't yet validated the
feature completely.

Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Jouni Högander (12):
  drm/i915/psr: Disable panel replay for now
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
 .../drm/i915/display/intel_display_types.h    |  20 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 252 +++++++++++++-----
 include/drm/display/drm_dp.h                  |   6 +
 8 files changed, 206 insertions(+), 90 deletions(-)

-- 
2.34.1

