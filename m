Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEAA78FDFF
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3529A10E7C0;
	Fri,  1 Sep 2023 13:04:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCBD010E7C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573484; x=1725109484;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FmI12IqOseXm9Q37pPy2E8FOKLweSCDS6gsxs2R2LzU=;
 b=Oyh5tGHAgohAaS06S5dcgCukq+EhGwZeVzY/QKKpNr/aLAR/M/MOa3CG
 nQ48mKgQhS+heQGpIm+org9J1ObBwbs1zq9zQ6wtstBXkIxdH8f4Nu0fl
 17OcTNbFGVTCEAg9g2Q2J5AqZDowQCbPV4KVr6CcB8pybD/JDB9NL7eE3
 nlNOteJSFptuTYdAfHTcEaNvWbROu55n392Uwnv+B3PbM5zZUjAfqGn9y
 mjJsSmtcC9F42yLueV7j9aLoXRpwgvYRwRYsGk3tvJb9owXJdkBw+Zhui
 CIH9S9rj4oT4LfkBHeO7fysCv9Xoc5aPZL5uSc9Qa6Hn8W8mdYp8+ngxe A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="366440461"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="366440461"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:04:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="1070742311"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="1070742311"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga005.fm.intel.com with SMTP; 01 Sep 2023 06:04:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:04:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:28 +0300
Message-ID: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: VRR, LRR, and M/N stuff
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

Attempt to make VRR, LRR, and M/N updates coexist nicely,
allowing fastsets whenever feasible.

Lightly smoke tested on my adl.

Cc: Manasi Navare <navaremanasi@chromium.org>                                                                         

Ville Syrjälä (12):
  drm/i915: Move psr unlock out from the pipe update critical section
  drm/i915: Change intel_pipe_update_{start,end}() calling convention
  drm/i915: Extract intel_crtc_vblank_evade_scanlines()
  drm/i915: Enable VRR later during fastsets
  drm/i915: Adjust seamless_m_n flag behaviour
  drm/i915: Optimize out redundant M/N updates
  drm/i915: Relocate is_in_vrr_range()
  drm/i915: Validate that the timings are within the VRR range
  drm/i915: Disable VRR during seamless M/N changes
  drm/i915: Update VRR parameters in fastset
  drm/i915: Assert that VRR is off during vblank evasion if necessary
  drm/i915: Implement transcoder LRR for TGL+

 drivers/gpu/drm/i915/display/intel_atomic.c   |   2 +
 drivers/gpu/drm/i915/display/intel_crtc.c     | 110 ++++++++------
 drivers/gpu/drm/i915/display/intel_crtc.h     |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 135 ++++++++++++++----
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   5 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_panel.c    |  17 +--
 drivers/gpu/drm/i915/display/intel_vrr.c      |  18 ++-
 drivers/gpu/drm/i915/display/intel_vrr.h      |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |   1 +
 11 files changed, 212 insertions(+), 86 deletions(-)

-- 
2.41.0

