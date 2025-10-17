Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86F2BE6627
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 07:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C44610EAFA;
	Fri, 17 Oct 2025 05:15:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kdY99NmI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D7210EAF5;
 Fri, 17 Oct 2025 05:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760678107; x=1792214107;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Qhv1R728RHLd5DK9nUHMHhHG1/Foxl80DnSpMXf8A/g=;
 b=kdY99NmIa3p6+PYtPcS+pSoWGHv/wBXjz06PtbmpUCm5iYvHu5YVT9Lc
 VJwdmuPbLHyphAx03utzVCfxVWvRM5x6dY3gLL0yH9i+glGa96oxNBXQa
 1pB2GrPRRzN+U07oZT9/pVm9yJKDivrT2eypEkPUEfwD2rAlxW1YafCeO
 kVKQ834JA+/rwZeqSsCM1D76P+8qkNe2x6IGZIHks7elNv+L3pF9hr7+9
 AiV6KIBxnnJ7qy1kiTgNt5uYBvDdFD3pmPVhdqodpru9sePFGZoXBAJ3G
 IRZf3DXz+ytbCB50+WVmr1llDvqU9woDpZK9GMz0Gta608f3n/Tr1dS4d Q==;
X-CSE-ConnectionGUID: OKJm4aXAQRG2Yo2TA/GT1g==
X-CSE-MsgGUID: lOlspmjNT1aaXFo8FX1sVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="88352602"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="88352602"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:07 -0700
X-CSE-ConnectionGUID: dJECcFmSRASJUViCCa3S4A==
X-CSE-MsgGUID: s3HNIAtdTrmrnCKr9IkOtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182576525"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/5] Optimize vrr.guardband
Date: Fri, 17 Oct 2025 10:31:57 +0530
Message-ID: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

Rev2:
- Drop patch to check guardband in crtc_check phase, instead check
  guardband for SDP in compute_config_late.
- Modify the helper to get the min sdp guardband if all SDPs are assumed
  to be enabled.
- Rename the helpers to get min guardband for sdp and psr.

Rev3:
- Drop the squashed patches as the dependency changes are already
  merged.
- Avoid optimized guardband for HDMI for now.
- Allow support for optmized guardband only to platforms that always have
  VRR TG active in the main patch.
- Add a separate patch for extending support for optimized guardband to
  other platforms whenever VRR TG gets enabled.

Ankit Nautiyal (5):
  drm/i915/psr: Add helper to get min psr guardband
  drm/i915/dp: Add helper to get min sdp guardband
  drm/i915/dp: Check if guardband can accommodate sdp latencies
  drm/i915/vrr: Use the min static optimized guardband
  drm/i915/vrr: Use optimized guardband whenever VRR TG is active

 drivers/gpu/drm/i915/display/intel_dp.c  | 58 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c | 12 +++++
 drivers/gpu/drm/i915/display/intel_psr.h |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c | 62 +++++++++++++++++++++++-
 5 files changed, 133 insertions(+), 2 deletions(-)

-- 
2.45.2

