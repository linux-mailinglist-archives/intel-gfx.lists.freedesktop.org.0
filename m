Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F29C153BF83
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 22:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 405911130A9;
	Thu,  2 Jun 2022 20:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE5CB1130A3
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 20:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654201057; x=1685737057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2E4Sl42ZaJ5mnbh2+v9Psz9OG7AAeOECDNhlROxCOo4=;
 b=DP4cGzBFHNNgrpBlfDnmXNiNL8fp6mpQXmfKrV2QR2DdUxFp5qL0UKjH
 nFptUeF6ZLf2lBldkNIsMc/m6CF8lVLYKFNtR6s7bduet7NPLlfjjWxCa
 qzYeNniHMfS43K3AfKPTLYOO62VH/BMMKr6OySsaSR0LIeeoYPI4XO9dh
 /2kwra3aekeB0sI4PjKvgd7xSnvlt0ITJPNmn/nQVgvpII+eFWcmz6wsO
 5Pt2PabSv95bQbsOVwzhMv61JHU81fOMxopx4WAbN87Iw0fu08uUjJGpB
 ohFTq3GLoY76RpeCRx4Sdvinqkyoe+yVZvmrquPWyGcT7qvXPn1d6o8NH g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="301439004"
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="301439004"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 13:17:37 -0700
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="530729470"
Received: from josouza-mobl2.fso.intel.com ([10.230.19.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 13:17:35 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 13:17:30 -0700
Message-Id: <20220602201730.199418-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/fbc: Do not apply WA
 22014263786 to DG2
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

This workaround brings some regressions to DG2 and if really necessary
for DG2 an alternative workaround will be implemented.

BSpec: 54077
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index bbdc34a23d548..8b807284cde1f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -813,8 +813,8 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
 
 static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 {
-	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,dg2,adlp */
-	if (DISPLAY_VER(fbc->i915) >= 11)
+	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp */
+	if (DISPLAY_VER(fbc->i915) >= 11 && !IS_DG2(fbc->i915))
 		intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
 			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
 }
-- 
2.36.1

