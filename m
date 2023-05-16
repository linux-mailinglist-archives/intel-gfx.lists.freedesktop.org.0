Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 340A4705A64
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 00:04:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F2F10E175;
	Tue, 16 May 2023 22:03:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0D2610E06D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 22:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684274635; x=1715810635;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qmYbHJqlz8LcanmkC3r8Ux+IcX1g7P/+nXUcMsBzjh4=;
 b=GieT1xmdWQyNQqdoqzztOPFxGW0ipasjeDEWyodbcpMKFe7RbDYgLZbe
 hQJ10RDMuzyGxYAo7a3GPMLIgJFnPST+gtIfmnoTNrldWTixMz5mktOJr
 o+SeRPtQ75KKv8ojut8++52vtDsp3PaXLPv0ITDX8wz99yJmRs1zsLT4m
 eZ5px33m2Nx8QODYgQ/8Bw4kxf0C1yZ+YRZuLfJ1azyWtcf9xNK0pSUUR
 gNn6IGRdFbELVPpwEMW2CB91g0jtSpCNs978miL1L5ee3Zz51nkOpBQOD
 g9bhiqhF/U82k6rndblDX/HmI8Jpi8eeoDvp5N9sfR4FtmS8ZQ8X+OYXP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="354772871"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="354772871"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 15:03:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="791238728"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="791238728"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 15:03:53 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 00:03:33 +0200
Message-Id: <20230516220334.3737951-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI DO_NOT_MERGE 1/2] drm/i915/mtl: do not enable
 render power-gating on MTL
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Multiple CI tests fails if render power gatins is enabled,
with forcewake ack timeouts.
BSpec 52698 clearly states it should be 0.
Media gate seems also problematic.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---

Let's try disabling render and media pg.
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 908a3d0f2343f4..cd63eaf0d0c8de 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -117,9 +117,12 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_RC_CTL_RC6_ENABLE |
 			GEN6_RC_CTL_EI_MODE(1);
 
+	/* BSpec: 52698, GEN9_RENDER_PG_ENABLE must be 0 for MTL */
+	if (IS_METEORLAKE(gt->i915))
+		pg_enable = 0;
 	/* Wa_16011777198 - Render powergating must remain disabled */
-	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
-	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
+	else if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	         IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
-- 
2.34.1

