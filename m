Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A153707264
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 21:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D014110E473;
	Wed, 17 May 2023 19:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1C710E471
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 19:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684352475; x=1715888475;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DqR5N6oSjg7p/cemkJYQX7E9r9JrfuSv9/H/w0fznGI=;
 b=eyhi3Je/HU3I7XGNfFxGVqgkuckRdonth4b+pIJvKLbAKm+Spmv8umoM
 cyovkeTcFEy1+EQrRMM6oJUegOqYWfq1ITbc5zj7BYoS+NQ/VkoVg0OLm
 O8JmByLmZy4sh5mFSQmtOa7tYlOs7PXrbdNj83yOQW4cAXVPHvNPn6D+r
 /XW4s4TfTmwxyseNa24q2YuGWtn+BABF5gb1ghfUfTHOv0Xf1q66yM+An
 wDNOBB3iZyXKVY1tWoZ+BTi6/ZDFbQc+u2WiNjnrNQ22Om1uaRSUGmuLv
 Uy/arUDAwy+w4yzUdN6YN/kLI3gLshWVG3cr0rOE0hSfN7cX4V/xQk6Id A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="331474395"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="331474395"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 12:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="679402269"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="679402269"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 12:41:03 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 21:40:38 +0200
Message-Id: <20230517194040.3857137-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI DO_NOT_MERGE 1/3] drm/i915/mtl: do not enable
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

Multiple CI tests fails with forcewake ack timeouts
if render power gating is enabled.
BSpec 52698 clearly states it should be 0 for MTL.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 908a3d0f2343f4..ebb2373dd73640 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -117,8 +117,9 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_RC_CTL_RC6_ENABLE |
 			GEN6_RC_CTL_EI_MODE(1);
 
-	/* Wa_16011777198 - Render powergating must remain disabled */
-	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	/* Wa_16011777198 and BSpec 52698 - Render powergating must be off */
+	if (IS_METEORLAKE(gt->i915) ||
+	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
 	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |
-- 
2.34.1

