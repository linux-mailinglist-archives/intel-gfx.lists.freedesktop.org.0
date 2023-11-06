Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BAC7E2ED5
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 22:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D82010E42B;
	Mon,  6 Nov 2023 21:19:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA2C610E42B
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 21:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699305560; x=1730841560;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vxZ8+cdE7bNEdituvCJ7k3QUeyDNbxFf4v293MTUyes=;
 b=kVDEknlHPoVP2+CTL93icIvdKD8i+xoYtl91GfjSI8d5J9VwF8ljRx+G
 hDkw2GJly6SBZ9exeNF/+TXD62CIBWGBg09miw9pBhD0mZT1MDG3oePtG
 11RdztLgos13I3xO155e0Rfl2aTUU90x/ToT+TKer9K4c3agM+wRwsoYy
 DcX9VHA5muEyotkrfjE+ow4ACRNQfJj7teP0+m/YnU+s0QF1dg2A9nWwF
 3bCbCLxkbsoDf+CmnM6OEt9qqD+gzWg9Qh0uZfICAoQoSpoM7X1l8TaxA
 mvY0A+chnXlangu+A4qWX3OxNc+cWHb3+LtaaG1FjTN4OHFrsu3Nfi/Ee A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="10911451"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="10911451"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 13:19:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="755964162"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="755964162"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 06 Nov 2023 13:19:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Nov 2023 23:19:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Nov 2023 23:19:04 +0200
Message-ID: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/11] drm/i915: Audio fastset, and some fixes
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Implement audio fastset. Probably mosy useful in avoiding
some fastboot blinks, runtime audio fastset is less likely
to be a typical use case.

Also try to fix up a mess with pre_plane_update() vs.
already disabled pipe.

Ville Syrjälä (11):
  drm/i915: Check pipe active state in
    {planes,vrr}_{enabling,disabling}()
  drm/i915: Call intel_pre_plane_updates() also for pipes getting
    enabled
  drm/i915: Polish some RMWs
  drm/i915: Push audio enable/disable further out
  drm/i915: Wrap g4x+ DP/HDMI audio enable/disable
  drm/i915: Split g4x+ DP audio presence detect from port enable
  drm/i915: Split g4x+ HDMI audio presence detect from port enable
  drm/i915: Convert audio enable/disable into encoder vfuncs
  drm/i915: Hoist the encoder->audio_{enable,disable}() calls higher up
  drm/i915: Push audio_{enable,disable}() to the pre/post pane update
    stage
  drm/i915: Implement audio fastset

 drivers/gpu/drm/i915/display/g4x_dp.c         |  46 ++++++-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  66 +++++----
 drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 128 +++++++++++++-----
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   6 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  23 +++-
 7 files changed, 200 insertions(+), 86 deletions(-)

-- 
2.41.0

