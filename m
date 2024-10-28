Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5679B3A6D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 20:30:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2113C10E538;
	Mon, 28 Oct 2024 19:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gkLMsg42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F390D10E536;
 Mon, 28 Oct 2024 19:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730143820; x=1761679820;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WmFk99CGUuJPglZ1rIOMPt2jjcsWmX9yzdw8iQnj980=;
 b=gkLMsg42R6etAAVd3EuIKGOemEdSxYV9IVN9nnd/YgoOoOoFxw64iCPq
 KrCedBxOyokxw1BUbcP4/hH768OYOoXkLz8y3Nd4gt7S+NnaM99fK6prw
 etb4WwI2QaR449qWzEkFp2IsnFxAXdd8ktfwQ3XbCbBy4MIloeDDSkG0E
 tqjUoBx0HTz3hxfKVBKM7z8s0cN+zS/LqfAZMuluMWMaLAcy3i1b5s1n9
 o+7uJY7ik34sCVrYn/FKm9YQ36RYf1s7IfhnvHpiM4Q+poH73P5hqqzsS
 xYxae4zdMGfsqZpzOjW2DwJNT7KjkzOcYfZ3dI5xLlHY/UOiUhtU4hval Q==;
X-CSE-ConnectionGUID: nr7mBc9LSLCkLBAAJh+jeg==
X-CSE-MsgGUID: B5CB7FMeQv2BS3bF+1QzLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40855928"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40855928"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:20 -0700
X-CSE-ConnectionGUID: wih92Pm+TBCNhYJU7qIhFw==
X-CSE-MsgGUID: k4LGE+S5TDqRGiupOqT5Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81777538"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 12:30:19 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v6 0/9] drm/i915/xe3lpd: ptl display patches
Date: Mon, 28 Oct 2024 12:30:06 -0700
Message-Id: <20241028193015.3241858-1-clinton.a.taylor@intel.com>
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

This series has all review comments addressed and review-by's. Basic
enabling is now complete to start testing.

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

Ravi Kumar Vodapalli (1):
  drm/i915/xe3: Underrun recovery does not exist post Xe2

Suraj Kandpal (1):
  drm/i915/xe3lpd: Add check to see if edp over type c is allowed

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 12 +++-
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  3 +
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_device.c   |  5 ++
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 69 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
 .../drm/i915/display/skl_universal_plane.c    | 13 ++--
 .../i915/display/skl_universal_plane_regs.h   |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 +
 drivers/gpu/drm/xe/xe_pci.c                   |  2 +-
 15 files changed, 89 insertions(+), 35 deletions(-)

-- 
2.25.1

