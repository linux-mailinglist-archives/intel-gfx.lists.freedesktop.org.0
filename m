Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74249B1071
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 22:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBFE810EB83;
	Fri, 25 Oct 2024 20:47:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCBYQbUh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE8610EB82;
 Fri, 25 Oct 2024 20:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729889268; x=1761425268;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tkRcnlW16FpVCIV9JGUveHRhOwgZ7yaUCd2g45I7Rhs=;
 b=eCBYQbUh7vgbQtHeBkwpFQLhR9jfLBiwUK9k8ypmnkjmSKmZaGn6axd2
 kYpPdYNBFBrGq2bzsLf/36HIdQpCxfJYv9MTkp2asla6D6X/F8SmtyYpI
 670u5axd0vz02Kyg7G9k71A46LQJn9bT5zqIMF9FAbVzrG5J53VtZj7GI
 Fs+HHFecftTaXJBRAv5zQqKMUbkRbjc+khmkfIepqIKL/3Mstc1mqbB2W
 X0qxjVZ9ZIVDF0+hSdpasmzF5YZU6w1Q2d7CPwvfXjLFM8fzudEo4fj+e
 TY7KytXP5V7cTOX7AKUCcoh6hQKcFJT3aTNkHCGZiShb4fkUvc5xg22as Q==;
X-CSE-ConnectionGUID: olVIs5BnRsCCwySUPYaUvA==
X-CSE-MsgGUID: l1esnDHkSumQhuarw905fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="33484199"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="33484199"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:47 -0700
X-CSE-ConnectionGUID: muQQQFsVTKOgwBa4zZXX3w==
X-CSE-MsgGUID: BzwsFAZITLO7QxgTlsi2Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81057181"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 13:47:48 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v5 00/11] drm/i915/xe3lpd: ptl display patches
Date: Fri, 25 Oct 2024 13:47:32 -0700
Message-Id: <20241025204743.211510-1-clinton.a.taylor@intel.com>
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

This series builds on the previous v4, Review Comments have addressed
for the first 2 patches in a series. 1 more VRR related patch dropped.
PTL display enabling patch added. 

Clint Taylor (1):
  drm/i915/cx0: Remove bus reset after every c10 transaction

Dnyaneshwar Bhadane (3):
  drm/i915/ptl: Define IS_PANTHERLAKE macro
  drm/i915/cx0: Extend C10 check to PTL
  drm/i915/xe3lpd: Move async flip bit to PLANE_SURF register

Haridhar Kalvala (1):
  drm/xe/ptl: Enable PTL display

Heikkila, Juha-pekka (1):
  drm/i915/display/xe3: disable x-tiled framebuffers

Matt Roper (1):
  drm/i915/xe3lpd: Update pmdemand programming

Mika Kahola (1):
  drm/i915/xe3lpd: Power request asserting/deasserting

Ravi Kumar Vodapalli (1):
  drm/i915/xe3: Underrun recovery does not exist post Xe2

Suraj Kandpal (2):
  drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
  drm/i915/xe3lpd: Add check to see if edp over type c is allowed

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 12 ++-
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  3 +
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_device.c   |  5 ++
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 11 ++-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 73 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 40 ++++++++++
 .../drm/i915/display/skl_universal_plane.c    | 13 +++-
 .../i915/display/skl_universal_plane_regs.h   |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 drivers/gpu/drm/i915/i915_reg.h               |  9 +++
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 +
 drivers/gpu/drm/xe/xe_pci.c                   |  2 +-
 17 files changed, 146 insertions(+), 41 deletions(-)

-- 
2.25.1

