Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D83361AE3E5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 19:38:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4592A6E2AF;
	Fri, 17 Apr 2020 17:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6476E2AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 17:38:38 +0000 (UTC)
IronPort-SDR: F47QsfcjP7/E/7C9ytlVCv37fGkBpuXSyIRTjkYMcxkam0oko5eP/c230FR8IgkC1/w1iKco1Y
 tXYoSVb5CMBQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 10:38:37 -0700
IronPort-SDR: TIaD888zyM5jQkYK7dBFrSqD78nWGwaas+5E+o3pZzx4aOSAi0UTIKNR43mmqdAAPl1gYzMj7M
 rWAgkzMN9VQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="299671485"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Apr 2020 10:38:36 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 22:58:35 +0530
Message-Id: <20200417172835.15461-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add ICL PG3 PW ID for EHL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gen11 onwards PG3 contains functions for pipe B,
external displays, and VGA. Add missing ICL_DISP_PW_3
for ehl_power_wells.

Cc: Animesh Manna <animesh.manna@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1737
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 1d01c79fb9db..e9ced41fe7e3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -3804,7 +3804,7 @@ static const struct i915_power_well_desc ehl_power_wells[] = {
 		.name = "power well 3",
 		.domains = ICL_PW_3_POWER_DOMAINS,
 		.ops = &hsw_power_well_ops,
-		.id = DISP_PW_ID_NONE,
+		.id = ICL_DISP_PW_3,
 		{
 			.hsw.regs = &hsw_power_well_regs,
 			.hsw.idx = ICL_PW_CTL_IDX_PW_3,
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
