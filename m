Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8FC6BCE00
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 12:19:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB85810ECD6;
	Thu, 16 Mar 2023 11:19:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE7210E0A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 11:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678965556; x=1710501556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7bkaApEm3gyufwE56Nar9WsoMKlr/TgeQxAXyZtFd30=;
 b=BEMCimYxSjowDsGdnzcAHKzFNMUHICsUdkxYat/MASeX35YXXAVNugVI
 HGlgZYGAEh6ebffmUE2d1T3ierG1OYuKDt9Mh7Z9eNNW453CRo9i1iRpj
 RtQjEAbk4VOGfiTgJh4main4CIh+z5+az2tmrMS5vzdrYPY4xVT/zSg+D
 XVqM23uO235wbAG6nmx/MR7+8dhrNfqqcq5oJxATpa1146wKSWu4AMd6Z
 U4DVTWFl01pc4cWT43fJjhiGkHdJJzk32PjxT4bmHl05W/el2pRlhqzjr
 +q/7Rmhx+Dt3XyJsN9Hs4EPY7fmUpmufjXf/D4xEKNpWIXfjeltzhhqqg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339485929"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339485929"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 04:19:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="744083250"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="744083250"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga008.fm.intel.com with ESMTP; 16 Mar 2023 04:19:14 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:13:27 +0200
Message-Id: <20230316111335.66915-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316111335.66915-1-mika.kahola@intel.com>
References: <20230316111335.66915-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 14/22] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
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

Use MPLLA for DP2.0 rates 20G and 20G, when ssc is enabled.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 55ec256c0379..e1a919803241 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2220,8 +2220,12 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		if (!intel_panel_use_ssc(i915))
 			ssc_enabled = false;
 
-		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
-		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		/* DP2.0 10G and 20G rates enable MPLLA*/
+		if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000) {
+			val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
+		} else {
+			val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		}
 	}
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-- 
2.34.1

