Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED516A0B02
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 14:46:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E115910EB8F;
	Thu, 23 Feb 2023 13:45:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A5E910E4F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 13:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677159956; x=1708695956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JD871rdPuF5nyt2uoq2do20aDW6KXCIWDPM9vSk3IAY=;
 b=NW6FDIhc916z5jw4rnei5OcKWIkoSBoGJ49+J4DifPmqP90mRnFkiGzZ
 utABS50A5vUCsxghJhy840khe2rugDeqGrpaj/qKqpqvMkJNKnx/e/v2e
 Zy+0Hjf6VDCv3Ioj8DWwyhR/Dm5eWfxo8xo/sZ2TkSl1oyWoCCSnH5ZDG
 Kq/ZhjIf7sPs+enO+tNOmk1XL+AqvKbiUNTSXty7TU+b5YPL1nFxLNFyw
 BtaMdm6E0pU6FmpR2eJ58Goi8aKG2xv9/Knib/js249oPnRvaQ+G+Z1NM
 6N26EnxMQj+GlF6OkEERFkNgX+Ru8vbvdmKTa8ovgHnmHvyLG/Iw3RF30 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334581681"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="334581681"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 05:45:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="846562535"
X-IronPort-AV: E=Sophos;i="5.97,320,1669104000"; d="scan'208";a="846562535"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 23 Feb 2023 05:45:55 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 15:40:13 +0200
Message-Id: <20230223134021.2236889-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230223134021.2236889-1-mika.kahola@intel.com>
References: <20230223134021.2236889-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 14/22] drm/i915/mtl: For DP2.0 10G and 20G
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
index 30a72768a16d..fb16ad7396f6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2214,8 +2214,12 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
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

