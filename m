Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C893C7B9945
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 02:31:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D892910E14B;
	Thu,  5 Oct 2023 00:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 095E710E14B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 00:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696465856; x=1728001856;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q9nAC2M0zi2w9ta8VfbygfSEXTZCzPnnIZvVoDhN1dY=;
 b=Rx6lNxPAAjpfV136cYhSBqXH4ToxPljnF4XSBLjWTNK7T4n3kgB2lQdK
 ZkX0zwrJqFDc504e3eU5flWrW2CgsdDSGuKbhYQuFl0f5zu0MH3h7vPPl
 8XMSZZ37p2Euq/VPazVX1UrqK8TcjNVpQv/FM5kACuYgFpASWBn4fvV62
 HksLXeKRoLDB4EOPXzPM4z2ZN/d1MaprwssrWlalqoaKcuRavUKxzTviH
 /fcFjRSXH9+/gWFD+qjgq+CY0wx2pqSz2hLNBgoyUou27lcAkhutjHzet
 fP2mAmXEBVlTZHNU1m8tgv4t5hGw0/CxKhdSFR8WaH8iPfgGezcU9FWrh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="387223916"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="387223916"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 17:13:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="755184773"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="755184773"
Received: from kialmah1-mobl1.jf.intel.com ([10.23.15.161])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 17:13:12 -0700
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 17:13:10 -0700
Message-Id: <20231005001310.154396-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/cx0: Only clear/set the Pipe Reset bit
 of the PHY Lanes Owned
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

Currently, with MFD/pin assignment D, the driver clears the pipe reset bit
of lane 1 which is not owned by display. This causes the display
to block S0iX.

By not clearing this bit for lane 1 and keeping whatever default, S0ix
started to work. This is already what the driver does at the end
of the phy lane reset sequence (Step#8)

Bspec: 65451

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index abd607b564f1..f653b83a7d4f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2596,8 +2596,7 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
 		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
 			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
 
-	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
-		     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1),
+	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset,
 		     lane_pipe_reset);
 
 	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
-- 
2.25.1

