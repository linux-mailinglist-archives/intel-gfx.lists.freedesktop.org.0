Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 308289AD6E2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:47:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6390E10E86A;
	Wed, 23 Oct 2024 21:47:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cIbDitjR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FF310E1A6;
 Wed, 23 Oct 2024 21:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729720026; x=1761256026;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=77jh5OY4ATFeZsOtYfDiRVE6FJWngZDFqXnMECvlwjQ=;
 b=cIbDitjRsd42ccq8gUyXN8hw7dO0lA3b4xiNgLydfMBzrnhbUYXc88g1
 YdicSllhZqaDddE9XTKsZcZ9jG+jw8bLSa4TMTvCMZ/l8bQx3RTuDyOma
 qagH0eqxf+h8nPiBCH4dMXtvZ9YPaeeA3j+esuAUxgBHKvn4z4K5OI+qH
 o1UueO+DnLab6MXJsr5J+7FPZ2HvbuhC+t/Qs9pF4+pQwWgdOxFx2/Mhd
 JP2JAOFweS0NQffKGoyPNsF5GbZTMpqyUMALz8nRtUxmpYtqYRSoAanUS
 99hRzg4bPhBw7CuiiZX8dKR6Q/4WClpKmzFefS6KCMoCqMyNB0dzToYat A==;
X-CSE-ConnectionGUID: V6rS9z5UR9CKrHWuwj6ctg==
X-CSE-MsgGUID: GognNOGgRcS9MV0fLigjag==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="54731992"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="54731992"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
X-CSE-ConnectionGUID: NC/6KoMYQXiwxUsPi5UUtg==
X-CSE-MsgGUID: HtajnPRpS4GV37alc0MSog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80809797"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/12] drm/i915/xe3lpd: ptl display patches
Date: Wed, 23 Oct 2024 14:46:49 -0700
Message-Id: <20241023214701.963830-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
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
for the platform. 3 patches from the previous series have been brought
forward to this series. 

Clint Taylor (1):
  drm/i915/cx0: Remove bus reset after every c10 transaction

Dnyaneshwar Bhadane (3):
  drm/i915/ptl: Define IS_PANTHERLAKE macro
  drm/i915/cx0: Extend C10 check to PTL
  drm/i915/xe3lpd: Move async flip bit to PLANE_SURF register

Heikkila, Juha-pekka (1):
  drm/i915/display/xe3: disable x-tiled framebuffers

Matt Roper (1):
  drm/i915/xe3lpd: Update pmdemand programming

Mika Kahola (1):
  drm/i915/xe3lpd: Power request asserting/deasserting

Mitul Golani (1):
  drm/i915/display/ptl: Fill VRR crtc_state timings before other
    transcoder timings

Ravi Kumar Vodapalli (2):
  drm/i915/xe3: Underrun recovery does not exist post Xe2
  drm/i915/xe3lpd: Skip disabling VRR during modeset disable

Suraj Kandpal (2):
  drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
  drm/i915/xe3lpd: Add check to see if edp over type c is allowed

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 13 +++-
 drivers/gpu/drm/i915/display/intel_display.c  | 16 +++--
 .../drm/i915/display/intel_display_device.c   |  4 ++
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 17 ++++-
 drivers/gpu/drm/i915/display/intel_dp.h       |  5 ++
 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 ++-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 68 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 40 +++++++++++
 .../drm/i915/display/skl_universal_plane.c    | 13 ++--
 .../i915/display/skl_universal_plane_regs.h   |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 12 ++++
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 +
 16 files changed, 165 insertions(+), 43 deletions(-)

-- 
2.25.1

