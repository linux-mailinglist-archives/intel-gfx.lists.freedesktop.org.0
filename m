Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F92704F72
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 15:37:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF99810E206;
	Tue, 16 May 2023 13:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E429810E0A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 May 2023 13:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684244228; x=1715780228;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WjeMGp/VYvZ4InqPS1HD5FDW9L6tPk6lt4mdd972bM8=;
 b=LuK7RQDG5W0w00gPLSDg/T9nsWlYuEyvgDRZVXkg8yYs399GIka/9rmT
 2QGuEBDFQGuzrWlmI7bqHbtUhgGxqGRdTgByXR1NXeFSAU8YQPQiJwyQv
 myUsUKm1sHNXYgFUx87bXaF++Tmx887yx7/QhZEAMMeAMP5kxJekgJO18
 topafPHj0ABdzFU4qsHg0pQQzDKmbELMXIq95UB0T4Fd2ZYWd/z1Fhb5l
 bTfl/b9c2ADL/K+BamwVeIoWWWNDUxQr+3JPJnNh9kxDLuLKrmsHKAnL+
 Atdl2bsUsy1J8Y/MPWhK3gpzWLCnMLoZDeXiakbzja8j9c+OlFVN3/XPI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="350317300"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="350317300"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 06:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="678848093"
X-IronPort-AV: E=Sophos;i="5.99,278,1677571200"; d="scan'208";a="678848093"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 06:37:06 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 May 2023 15:36:44 +0200
Message-Id: <20230516133646.3708898-1-andrzej.hajda@intel.com>
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

Multiple CI tests fails if render power gatins is enabled,
with forcewake ack timeouts.
BSpec 52698 clearly states it should be 0.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---

Let's see if disabling render pg is enough.
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 908a3d0f2343f4..0819576ffeb5df 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -117,9 +117,12 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_RC_CTL_RC6_ENABLE |
 			GEN6_RC_CTL_EI_MODE(1);
 
+	/* BSpec: 52698, GEN9_RENDER_PG_ENABLE must be 0 for MTL */
+	if (IS_METEORLAKE(gt->i915))
+		pg_enable = GEN9_MEDIA_PG_ENABLE;
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

