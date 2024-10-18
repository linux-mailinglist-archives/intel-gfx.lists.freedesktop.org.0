Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D979A4875
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0214010E99D;
	Fri, 18 Oct 2024 20:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EA3fQgGd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E5A10E992;
 Fri, 18 Oct 2024 20:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284586; x=1760820586;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KA5twk0kamdMmpGlRIoh3gL7v3sCJDrA5H2ZsilQ6O0=;
 b=EA3fQgGdNkuelAT1xlmBO2L1Zl7YyqBHZhFWIyxi7jC8hr9xiCBkgNSQ
 yUxwZYQ4uyxRw3Lw4rPGLk3EXIQqM/WLf3RPbkB3k2/6oe0jAzj9SO6+l
 QhM0F0Y8asjTgCqnufk+WmOj9cA23DS3uA4bj5PYeNoqbpXCNTe6Z7rnk
 B0AeOr0lxjYGgFoVVSrfF3YQsuSPhM1BZ9+pi1gDfem8EOOmJ8akaJIRR
 VkxZ2L3hgkwYcoAJoTPGCgfY/8IK3+hgZIsZn75gt0H6yBuNybQ0LB07G
 F0aGMTx33oxXKaPHRm+ZPj27zThmZirlYiVSIIVnyQI09z03QIEtQq1eh g==;
X-CSE-ConnectionGUID: 8JWawWRGTlaXqXAt5KrfIw==
X-CSE-MsgGUID: D3XYb8T7Q36i0wmzAJi4jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240166"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240166"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:45 -0700
X-CSE-ConnectionGUID: rCZiTKNyRoqBzkwD6Ku+1g==
X-CSE-MsgGUID: 4ndcPS9KRXO5gmoQtIhT8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798913"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:45 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 00/12] drm/i915/xe3lpd: ptl display patches
Date: Fri, 18 Oct 2024 13:49:29 -0700
Message-ID: <20241018204941.73473-1-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
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

This series builds on the previous one, further enabling new features
for the platform. 

Dnyaneshwar Bhadane (3):
  drm/i915/ptl: Define IS_PANTHERLAKE macro
  drm/i915/cx0: Extend C10 check to PTL
  drm/i915/ptl: Move async flip bit to PLANE_SURF register

Heikkila, Juha-pekka (1):
  drm/i915/display/xe3: disable x-tiled framebuffers

Mika Kahola (1):
  drm/i915/xe3lpd: Power request asserting/deasserting

Mitul Golani (1):
  drm/i915/display/ptl: Fill VRR crtc_state timings before other
    transcoder timings

Ravi Kumar Vodapalli (2):
  drm/i915/xe3: Underrun recovery does not exist post Xe2
  drm/i915/xe3lpd: Skip disabling VRR during modeset disable

Suraj Kandpal (4):
  drm/i915/xe3lpd: Increase resolution for plane to support 6k
  drm/i915/xe3lpd: Increase max_h max_v for PSR
  drm/i915/xe3lpd: Increase bigjoiner limitations
  drm/i915/xe3lpd: Prune modes for YUV420

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  9 ++++-
 drivers/gpu/drm/i915/display/intel_display.c  | 21 ++++++----
 drivers/gpu/drm/i915/display/intel_dp.c       | 15 +++++--
 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  6 ++-
 drivers/gpu/drm/i915/display/intel_tc.c       | 40 +++++++++++++++++++
 .../drm/i915/display/skl_universal_plane.c    | 29 +++++++++++---
 .../i915/display/skl_universal_plane_regs.h   |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 drivers/gpu/drm/i915/i915_reg.h               |  7 ++++
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 +
 11 files changed, 112 insertions(+), 20 deletions(-)

-- 
2.45.0

