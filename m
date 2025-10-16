Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BC0BE2771
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 11:43:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C635010E99B;
	Thu, 16 Oct 2025 09:43:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lkav30t+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1F410E2EF;
 Thu, 16 Oct 2025 09:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760607795; x=1792143795;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ajBIfGW4h1StUWT4MMDwAtpbLkPsF4Tpp9jEfwCIbg0=;
 b=lkav30t+VFyYOt8odh939sP2PbHacwYO/fBQLHk3Q+OgvT6hTPhnbnfJ
 eUNTcLpWWvPjC38ol7Ptt9eX6bFasSjTCwqLIWTZFFvVD/Sffe7uE6Boa
 OOjjYKiFeqycMzbTqSRamfSSdXX1k8WimnZjWDOxO2qhbF6DcaEHRUcOF
 ps5/EsaxOVIKF8uzLh3NBM6thFAU772Xp5owAbMnx4PaOefKWjxfBq0hN
 vom5M7vYtIT6BFX8JCZPTDPs8CgRXozQmgi0mhH9gP4Cts9TYTb378Ha/
 IPKlwzxJyMDP8Xus2zInWsLrd+Izb2ajHcaYAYKD28uZ6C2+vQBGIjdtz g==;
X-CSE-ConnectionGUID: zQvEufkCQSqA1Vj1+FZ8PQ==
X-CSE-MsgGUID: A0S4k4EURyq5GdMCrNSRzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62725250"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62725250"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 02:43:14 -0700
X-CSE-ConnectionGUID: iJBtxy3jSfuBq7Jv+lZ/uQ==
X-CSE-MsgGUID: 9j+XE8SMQ2mi+hIRk73d0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,233,1754982000"; d="scan'208";a="219570789"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 02:43:12 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/6] Optimize vrr.guardband
Date: Thu, 16 Oct 2025 15:00:03 +0530
Message-ID: <20251016093009.2139105-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

Instead of setting vrr.guardband to vblank, use optimal guardband that
works for most of the cases. This will help in avoiding need of change
in guardband and fix the LRR feature that needs seamless switching to
a lower refresh rate.

-Patch [1-2] are squashed from series [1] and [2] and are not meant for
 review.
-Patch [3-6] are patches to check the guardband for prefill+PSR+SDP
 latencies and to use a static optimized guardband.

[1] "Preparatory patches for guardband optimization"
https://patchwork.freedesktop.org/series/155661/#rev8

[2] "Introduce helpers for prefill latency calculations"
https://patchwork.freedesktop.org/series/155629/#rev3

Rev2:
- Drop patch to check guardband in crtc_check phase, instead check
  guardband for SDP in compute_config_late.
- Modify the helper to get the min sdp guardband if all SDPs are assumed
  to be enabled.
- Rename the helpers to get min guardband for sdp and psr.

Ankit Nautiyal (5):
  [NOT FOR REVIEW] drm/i915/vrr: prep patches for guardband optimization
    squashed
  drm/i915/psr: Add helper to get min psr guardband
  drm/i915/dp: Add helper to get min sdp guardband
  drm/i915/dp: Check if guardband can accommodate sdp latencies
  drm/i915/vrr: Use the min static optimized guardband

Ville Syrjälä (1):
  [NOT FOR REVIEW] drm/i915/prefill: Prefill latency calculations series
    squashed

 drivers/gpu/drm/i915/Makefile                |   1 +
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  80 +++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h   |   6 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |   7 +
 drivers/gpu/drm/i915/display/intel_display.c |  26 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |  69 +++++
 drivers/gpu/drm/i915/display/intel_dp.h      |   5 +
 drivers/gpu/drm/i915/display/intel_psr.c     | 256 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h     |   3 +
 drivers/gpu/drm/i915/display/intel_vblank.c  |  10 +
 drivers/gpu/drm/i915/display/intel_vblank.h  |   2 +
 drivers/gpu/drm/i915/display/intel_vdsc.c    |   8 +
 drivers/gpu/drm/i915/display/intel_vdsc.h    |   1 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |  83 +++++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   2 +-
 drivers/gpu/drm/i915/display/skl_prefill.c   | 157 ++++++++++++
 drivers/gpu/drm/i915/display/skl_prefill.h   |  46 ++++
 drivers/gpu/drm/i915/display/skl_scaler.c    | 141 ++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  15 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 156 +++++------
 drivers/gpu/drm/i915/display/skl_watermark.h |   3 +
 drivers/gpu/drm/xe/Makefile                  |   1 +
 22 files changed, 894 insertions(+), 184 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/skl_prefill.c
 create mode 100644 drivers/gpu/drm/i915/display/skl_prefill.h

-- 
2.45.2

