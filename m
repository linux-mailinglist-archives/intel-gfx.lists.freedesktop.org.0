Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E97CA9AF50A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 235D310E3C4;
	Thu, 24 Oct 2024 22:07:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H4ITqbY6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D2F10E3C4;
 Thu, 24 Oct 2024 22:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729807678; x=1761343678;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qnXAi4sEKbTEU4Vh8CLKL29ZSYmtAhllneiJh7eJAZA=;
 b=H4ITqbY6B0madqjnMqYfjafXWewWIRyqlFOyVpP0csGkzTbDxtRf8qIf
 a7RNaf4ki7as/yBprsRdbBpQ1c2LsYLYp2rcj8g0ZBg+hw3MrpVENV2+g
 GAkDjWLLDwNu5Ns0QnYmxm2ARYDKJrAKaBlFOowLXJFrOCBCOF/T7PRJK
 WusAWSfqvabRklwf7I5MO4e7UrR27bgB7kyYjqp08Q2xkM5gMrdHVeCku
 BT9TMBV3WXx/qTHstibllWm7PnM2ysfR5VbslrsWbSawDIoikD/QiNrdF
 IHPn5XtwytwXux2E5F087lPLRBE7Y2i5TM0u17703RNl4EFfBFK00bnZ0 A==;
X-CSE-ConnectionGUID: exBh3pigRWeOGJghNcWEPw==
X-CSE-MsgGUID: W4IAbzlbSGartrGh3SmQFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29367630"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="29367630"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:57 -0700
X-CSE-ConnectionGUID: +/LHOA1ySlePcRXrKNPrpQ==
X-CSE-MsgGUID: llnKgXYQRsO6/A4cmh0KyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="84687957"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:57 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 00/11] drm/i915/xe3lpd: ptl display patches
Date: Thu, 24 Oct 2024 15:07:41 -0700
Message-Id: <20241024220752.714457-1-clinton.a.taylor@intel.com>
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

This series builds on the previous v2, further enabling new features
for the platform. 1 patch drop at the request of the author. 

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

Ravi Kumar Vodapalli (2):
  drm/i915/xe3: Underrun recovery does not exist post Xe2
  drm/i915/xe3lpd: Skip disabling VRR during modeset disable

Suraj Kandpal (2):
  drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
  drm/i915/xe3lpd: Add check to see if edp over type c is allowed

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 12 +++-
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  3 +
 drivers/gpu/drm/i915/display/intel_display.c  | 10 +--
 .../drm/i915/display/intel_display_device.c   |  5 ++
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +-
 drivers/gpu/drm/i915/display/intel_fb.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 10 ++-
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 68 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  4 +-
 drivers/gpu/drm/i915/display/intel_tc.c       | 40 +++++++++++
 .../drm/i915/display/skl_universal_plane.c    | 13 ++--
 .../i915/display/skl_universal_plane_regs.h   |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 drivers/gpu/drm/i915/i915_reg.h               |  9 +++
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 +
 16 files changed, 147 insertions(+), 40 deletions(-)

-- 
2.25.1

