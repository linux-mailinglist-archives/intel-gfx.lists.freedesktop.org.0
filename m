Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6246D405FD1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 01:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF36F6E943;
	Thu,  9 Sep 2021 23:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9C36E93F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 23:02:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="243251438"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="243251438"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:07 -0700
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="466798508"
Received: from rsalmerx-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.209.166.193])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:07 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu,  9 Sep 2021 16:07:21 -0700
Message-Id: <20210909230725.33735-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/display/adlp: Fix
 PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation
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

As the SU_REGION_START begins at 0, the SU_REGION_END should be number
of lines - 1.

BSpec: 50424
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3f6fb7d67f84d..36816abb3bcc0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1501,7 +1501,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 
 	if (IS_ALDERLAKE_P(dev_priv)) {
 		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1);
-		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2);
+		val |= ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 - 1);
 	} else {
 		drm_WARN_ON(crtc_state->uapi.crtc->dev, clip->y1 % 4 || clip->y2 % 4);
 
-- 
2.33.0

