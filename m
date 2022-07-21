Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCA557C59F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 09:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6182818AF41;
	Thu, 21 Jul 2022 07:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E5418ADEF
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 07:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658390352; x=1689926352;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nnY6cqi5g4LnIw/Rf+d5k1z4jl1pq1V333DGLOSifsA=;
 b=aPwB8BSliVps5oIVEPPGTxSe6uHc4RViMpB5uDYnsuHHrCpBLm44fwT7
 gqAiQc7b8+BnKd1NOJRi/MkXsQ9Jcyh2K2hbDtNsAH8mCfO0SNSJaUBPm
 AkGxms9OldTeKoEQUorBUCaSImC4DaVhz76BU4VXAjXqB87VtjrVwLpSW
 Uh07FuA/BQ5cZT5Bl/98klhZW/i5wE21xPa4S1BFB4BFwF+O5YWs7EecA
 5Q5FhKGLex0olb+YZX5t1Lrf70UJ5LLE4mL0pluhYPHBvOusc8nDczq3x
 DaZZlqIAPszA8p9bgtXbNnFEVun8OPii4S5RFmlqaoKFD/Y/HkLjVtQYz A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="285742849"
X-IronPort-AV: E=Sophos;i="5.92,288,1650956400"; d="scan'208";a="285742849"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 00:59:11 -0700
X-IronPort-AV: E=Sophos;i="5.92,288,1650956400"; d="scan'208";a="656630981"
Received: from ilyaenko-mobl1.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.39.135])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 00:59:11 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Jul 2022 03:59:09 -0400
Message-Id: <20220721075909.97371-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Fix power gate sequence.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

sub-pipe PG is not present on DG1. Setting these bits can disable
other power gates and cause GPU hangs on video playbacks.

HSDES: 1507666497, 1407222020
VLK: 16314, 4304

Fixes: 85a12d7eb8fe ("drm/i915/tgl: Fix Media power gate sequence.")
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f8d0523f4c18..d1dcb018117d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -134,7 +134,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
 
-	if (GRAPHICS_VER(gt->i915) >= 12) {
+	if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
 		for (i = 0; i < I915_MAX_VCS; i++)
 			if (HAS_ENGINE(gt, _VCS(i)))
 				pg_enable |= (VDN_HCP_POWERGATE_ENABLE(i) |
-- 
2.35.3

