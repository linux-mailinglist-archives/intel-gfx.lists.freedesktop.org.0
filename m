Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1220762D092
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 02:23:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FF7010E513;
	Thu, 17 Nov 2022 01:22:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D44D710E513
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 01:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668648169; x=1700184169;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uV2OT0dKhiBni6pVl/pZvd6Xj2SziBhSi9u7/witaQQ=;
 b=HqaVUCObK5oHpihzBU37B8fG97GyGlY42GNhM/fRdo05U2hzLr25jLwv
 gyoCABdvSyFAzAnY9J4zaCrPCIjcmE/w/v7Q4IRr40ua1YuGIhte83E4P
 8d85xtw0zAPdXGI2+VdhNGGdZrHeiZR97Skve4BzG8OEBK41ZRWoQVdp1
 Kt/w2vYFxyDdOSK0NhX1ehYfds3Vd39FSU+rXmSFl/g5wJHlhY7RNfhOg
 j+J4AVez37ud7L8N2JULUVISMOmA06xWAwAojIwcFrEDNymcjPnOEPqSa
 x0IcjESjHg5We0GAxOtb/EAaPBMh61mdVgePKRamjj73yvsIIvMdmj/32 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="310350600"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="310350600"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 17:22:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="670718476"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="670718476"
Received: from jx-hspe-dev.fm.intel.com ([10.105.128.122])
 by orsmga008.jf.intel.com with ESMTP; 16 Nov 2022 17:22:48 -0800
From: James Xiong <james.xiong@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Nov 2022 17:21:36 -0800
Message-Id: <20221117012136.2126916-1-james.xiong@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: use the original Wa_14010685332
 for PCH_ADP
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
Cc: James Xiong <james.xiong@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bspec: 33450 lists 2 sequences for Wa_14010685332.
The original sequence was implemented for PCH_ICP+
commit b896898c7369 implemented the tweaked verson for ICP, JSP and MCC
commit b8441b288d60 removed the orignal and applied the tweaked one to
all PCHs(CNP+), and caused regressions on ADP.

Fixes: b8441b288d60 ("drm/i915: Tweaked Wa_14010685332 for all PCHs")
Signed-off-by: James Xiong <james.xiong@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 4c1de91e56ff..235b22205393 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2199,9 +2199,14 @@ void intel_display_power_suspend_late(struct drm_i915_private *i915)
 		hsw_enable_pc8(i915);
 	}
 
-	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
-	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
+	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp */
+	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1) {
 		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
+
+		/* Original Wa_14010685332: adp */
+		if (INTEL_PCH_TYPE(i915) == PCH_ADP)
+			intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
+	}
 }
 
 void intel_display_power_resume_early(struct drm_i915_private *i915)
@@ -2214,8 +2219,9 @@ void intel_display_power_resume_early(struct drm_i915_private *i915)
 		hsw_disable_pc8(i915);
 	}
 
-	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp,adp */
-	if (INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1)
+	/* Tweaked Wa_14010685332:cnp,icp,jsp,mcc,tgp */
+	if ((INTEL_PCH_TYPE(i915) >= PCH_CNP && INTEL_PCH_TYPE(i915) < PCH_DG1) &&
+	    INTEL_PCH_TYPE(i915) != PCH_ADP)
 		intel_de_rmw(i915, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
 }
 
-- 
2.25.1

