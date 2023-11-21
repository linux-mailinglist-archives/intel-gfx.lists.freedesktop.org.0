Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B11377F256D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 06:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87D710E0B6;
	Tue, 21 Nov 2023 05:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC96F10E0B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 05:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700545408; x=1732081408;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qWtEtwJ0YsCKoPev7RaU9l7ZNPjxux476PGRJCMEm4E=;
 b=CVysMrlSaGIcA6fRXexGCd9gtfWnVU/t3BxM0exRUC2x5hcBoVxMfaHM
 ClrDUvpLjo+OMb6GEOOXh6fuM/s0H0T+QPoH3YoGc6LpNDmurm4clD7Q5
 d0e20ns7YaRtN9PyWTdS6Mk3sRirzdO6lSWmFhIg/ca+ZkARyqkDeGF6P
 hROH1Y4nqAIL8xiPaGmLlzau0EqAeYlevS1ACbx4gvXKJOpQjmJfGQhcP
 qsXtJz52HIF/yVuXVcBCYKGtM/kcx6OoLhvke5gAW55B0BlEfzTZ/xLNX
 ku21To0KO8UwqXWXp4eD1fQ1joIEk796OcTrAYWm5AqY5vBJCeB48UAdM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="394611792"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="394611792"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 21:43:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760002099"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760002099"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 20 Nov 2023 21:43:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 07:43:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 07:43:13 +0200
Message-ID: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/11] drm/i915: Audio fastset, and some fixes
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

v2: Rebase

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

