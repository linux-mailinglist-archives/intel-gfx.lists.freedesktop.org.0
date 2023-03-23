Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64ABD6C6AB4
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FFC210E48F;
	Thu, 23 Mar 2023 14:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E50710EAAE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581246; x=1711117246;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hN+scrSRpukLLDAM64T+6o/L9YTsZm3qvSdJOISME/E=;
 b=SmxFgVP9CbOm4Bcee+CSYhjoMatZasxhFI3zM5sBDnOoUhBOLIUvXRlG
 IOjjZmHd23g/E1hMMFqz5nSJbpzgWFOv+dM0kEc7gkWt7CIMFhfqBBFon
 lnSBYhXROQLVYbp3oDVXolDbKfyGxGBmqWVnFOVKCJPblY/GPBWXy6ioA
 Y+AQCj2maiWpgIz4O1bF0ttdI35n5SZMErqg5TIuzOv4Vu3Y6jXT2Nxb2
 nxBo0Uhzp0VDexfWTy7p9RsyRaYyWRLnl0PPak6pNEObGTV0dxhWfErLt
 sIJ7YH/YgXGz4n6S4wQaKFAYoSPaxwjBKpqlGOHCHxCVYNYD0JLuyDbl4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892264"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892264"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722634"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722634"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:20:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:12 +0200
Message-Id: <20230323142035.1432621-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/29] drm/i915/tc: Check for TC PHY explicitly
 in intel_tc_port_fia_max_lane_count()
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

Check explicitly if the port passed to
intel_tc_port_fia_max_lane_count() has a TC PHY, instead of relying on
the default TC mode value set for non-TC PHY ports.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 70771044a2fe8..48a59a675cd57 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -188,10 +188,11 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
 	intel_wakeref_t wakeref;
 	u32 lane_mask;
 
-	if (tc->mode != TC_PORT_DP_ALT)
+	if (!intel_phy_is_tc(i915, phy) || tc->mode != TC_PORT_DP_ALT)
 		return 4;
 
 	assert_tc_cold_blocked(tc);
-- 
2.37.1

