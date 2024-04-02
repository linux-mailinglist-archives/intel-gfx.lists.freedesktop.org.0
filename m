Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2998955C5
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 15:51:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588EF10FD40;
	Tue,  2 Apr 2024 13:51:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aL+8Ak3f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E1E10FD40
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 13:51:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712065912; x=1743601912;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/446t1oQQPj6AOXEYvjpWqZrG2pFWnxYq1ltbTSL5Lc=;
 b=aL+8Ak3fsSXHc/o8Z71GzClqDBcBdgOAFNouCl48X6ZaQavQoTHFF3Sb
 L/KuGah0NI6O2vZbomLEDGldlfAfA3KXEz37EQRtxindNQNtz/KgJp1Bm
 vINJJYbP4bj36QiQ+SELMlpcDtLH/IrjPXiMbLjy0+8z94fBNfvF6g2Y1
 BdqP8cd/c5U/M9bhX3xTbo8tNKPyoC64gKeIDWf2vVTP8NeX1KF7w2yfY
 k4PuB9PJ1P9/qfJd9M4ZtrdRcRFUI3EvC23/uHPWAURDBjersupv+GxS7
 UrKavPzK065/V2N0coWmnp3457gtp+fZlKsnkfma4YrzSfHAQOOw6tKN4 g==;
X-CSE-ConnectionGUID: hkAFj2G5RTWdqh9Z49mIpQ==
X-CSE-MsgGUID: GSwHfMS9SVKCcJixo9S/9g==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17804629"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17804629"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 06:51:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789380"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789380"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 06:51:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 16:51:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/7] drm/i915: Bigjoiner prep work
Date: Tue,  2 Apr 2024 16:51:41 +0300
Message-ID: <20240402135148.23011-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

An extract of the large bigjoiner series, containing:
- the pure refactoring patches not directly related to bigjoiner
- Reject MST+DSC/FEC on ICL
- tweak the debugfs i915_bigjoiner_force_enable file
  (needs corresponding IGT changes).

Test-with: 20240402054231.1499492-1-kunal1.joshi@intel.com

Ville Syrjälä (7):
  drm/i915: Remove DRM_MODE_FLAG_DBLSCAN checks from .mode_valid() hooks
  drm/i915: Shuffle DP .mode_valid() checks
  drm/i915: Clean up glk_pipe_scaler_clock_gating_wa()
  drm/i915: Extract glk_need_scaler_clock_gating_wa()
  drm/i915/mst: Limit MST+DSC to TGL+
  drm/i915/mst: Reject FEC+MST on ICL
  drm/i915: Use debugfs_create_bool() for "i915_bigjoiner_force_enable"

 drivers/gpu/drm/i915/display/intel_crt.c      |  3 --
 drivers/gpu/drm/i915/display/intel_display.c  | 35 +++++++--------
 .../drm/i915/display/intel_display_debugfs.c  | 44 +------------------
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  9 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 22 ++++------
 drivers/gpu/drm/i915/display/intel_dsi.c      |  3 --
 drivers/gpu/drm/i915/display/intel_dvo.c      |  3 --
 drivers/gpu/drm/i915/display/intel_lvds.c     |  3 --
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  3 --
 drivers/gpu/drm/i915/display/intel_tv.c       |  3 --
 11 files changed, 33 insertions(+), 96 deletions(-)

-- 
2.43.2

