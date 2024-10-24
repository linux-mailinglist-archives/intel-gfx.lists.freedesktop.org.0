Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF0B9AF568
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD70910E9AC;
	Thu, 24 Oct 2024 22:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IeJNytlk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC36810E3C7;
 Thu, 24 Oct 2024 22:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729809094; x=1761345094;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KleABjwlSHjQbmvr5Y7FysYvX9oTo3xYbATuR3VCf0k=;
 b=IeJNytlkoXtGC8d9sATIPIKwAu4sAB5ptPcsOUK0lcHfLz3c89qDshR1
 4qejJyKPEyyuC+XQuDLJuSqlWxcsDzW6z4hJWFEipnZk4z3CNDlo3ariZ
 CgKoGXTwhWkBtLRs2p5MN0XHECUC8dkLRsYXnApPLvGbk38w4js8U3VMf
 eFd3SaqUurCsukxS0BINOzxA0IKN5aL+ZGbsZ1naOGcRkWfzfl8Bw4VqE
 DYfVxPHCoTskeCFtMNEUJ2hoU0KZ+MmXcUOGkg5oM5YovACo+sb382HF9
 rykqolJnvepoHbu4pe3WdEotu1Cc09NWGzrnNUTp1Dom9CW3DRth80uS6 Q==;
X-CSE-ConnectionGUID: QbtXIz2nQQeP/ZNvViL7oA==
X-CSE-MsgGUID: 4BYr7gU5TvKS2NHZ1TpK3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46950799"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46950799"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:19 -0700
X-CSE-ConnectionGUID: mHaqnZE8T/ymG634VhfQZg==
X-CSE-MsgGUID: /X0SyMJVSJa9Bw/5+I5zIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80838659"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:18 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 00/11] drm/i915/xe3lpd: ptl display patches
Date: Thu, 24 Oct 2024 15:31:03 -0700
Message-Id: <20241024223114.785209-1-clinton.a.taylor@intel.com>
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

Misc fixes from v3

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

