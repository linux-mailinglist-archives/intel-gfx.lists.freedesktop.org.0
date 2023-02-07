Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F7E68CF07
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 06:32:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27CB810E44C;
	Tue,  7 Feb 2023 05:32:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E433710E2EB;
 Tue,  7 Feb 2023 05:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675747946; x=1707283946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AASS0FwnVNe/OPJgQFOtVGbVsH7cgW31yZ998Bbq/EI=;
 b=Gn57F/61gaoAooqMf8FlLXSE0zl+bodHiq5FMsEaTO8kMV4F9avYib93
 gV6AqbcHuemlyDKVSCi94LKil92CPm5tvref56LezocgOJMh0HF9YRxsT
 FYw64XciFBX0+dNzM9akxw5lsF/7dGnAjvcnHHXtosWvCxjJXORqkfFZP
 xj8Jj5lhCkOy5CT0tpQ3rmdzvexSEdtExf150kqct5ivhR8HsqalfUeq7
 Ym03hcQNIOqcuOHOeo+1zvJuIcKe+7lmPpJPUNU7C2FhR8xgoK5oEy7Zz
 BikjfiT+JzPFbUu6LSv3c70K2CG9tw0xBRnaR9eqBooT6QYrlM3LbNDhI A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="356778178"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="356778178"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 21:32:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="790666566"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="790666566"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga004.jf.intel.com with ESMTP; 06 Feb 2023 21:32:24 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@intel.com
Date: Tue,  7 Feb 2023 10:56:56 +0530
Message-Id: <20230207052657.2917314-2-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230207052657.2917314-1-arun.r.murthy@intel.com>
References: <20230120061600.1451088-1-arun.r.murthy@intel.com>
 <20230207052657.2917314-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv2 1/2] drm: Add SDP Error Detection
 Configuration Register
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
Cc: Harry Wentland <harry.wentland@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DP2.0 E11 defines a new register to facilitate SDP error detection by a
128B/132B capable DPRX device.

v2: Update the macro name to reflect the DP spec(Harry)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Harry Wentland <harry.wentland@amd.com>
---
 include/drm/display/drm_dp.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 632376c291db..358db4a9f167 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -692,6 +692,9 @@
 # define DP_FEC_LANE_2_SELECT		    (2 << 4)
 # define DP_FEC_LANE_3_SELECT		    (3 << 4)
 
+#define DP_SDP_ERROR_DETECTION_CONFIGURATION	0x121	/* DP 2.0 E11 */
+#define DP_SDP_CRC16_128B132B_EN		BIT(0)
+
 #define DP_AUX_FRAME_SYNC_VALUE		    0x15c   /* eDP 1.4 */
 # define DP_AUX_FRAME_SYNC_VALID	    (1 << 0)
 
-- 
2.25.1

