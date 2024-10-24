Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC4A9AF50F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:08:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A0A10E9A2;
	Thu, 24 Oct 2024 22:07:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LDkKJ39t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47F110E3C4;
 Thu, 24 Oct 2024 22:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729807679; x=1761343679;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ohFe+L7LULaS+BR/dLeP4YYGJ+d9nxfbO1Y34Vs4NZY=;
 b=LDkKJ39tWpLOj9aBzd4ZnEiI9v+cSQiGiCbbb91t7jU2tlYyxgvWsm/o
 CJhApPSXynKTdQV9DdNG1E8/4r4r86XVB92OZ+xVX5HkuURCScHbOh75w
 /mh4HVtzpeyWpVSQrfRLaRxgd5WmlhqBpFTiZOfmk91A0fOf3HMze7uCj
 6ACbD9HRsMucv+WiYnuuDpC2DSjnIXrbYWIqVTdDWjtO3MWS8j3OCohOn
 4n7hk1B6iJsivJoqVgOQt0ZZOAD9cQQdmWuJ9iey4epn9IYzhPdlUkJzH
 0+eTO7bYLQxo/sGrYH47PILPKCJsAMHJ58Bri6YAJuJ8Eoe51ArvAjzGB w==;
X-CSE-ConnectionGUID: kOv1iV2XSQGcBdTE9ZmONA==
X-CSE-MsgGUID: S6oODhjPTrqGIzQGY3u+eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29367640"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="29367640"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:58 -0700
X-CSE-ConnectionGUID: r5EYNq9QS1mbHROCq6L53A==
X-CSE-MsgGUID: k1p2WelARvCPUTvIbNS4WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="84687967"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:07:58 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v3 08/11] drm/i915/xe3: Underrun recovery does not exist post
 Xe2
Date: Thu, 24 Oct 2024 15:07:49 -0700
Message-Id: <20241024220752.714457-9-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024220752.714457-1-clinton.a.taylor@intel.com>
References: <20241024220752.714457-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

From platforms xe3 Underrun recovery does not exist

v2: improve DISPLAY_VER checking

BSpec: 68849
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..c904f529d0c5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -861,7 +861,7 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 	 */
 	if (IS_DG2(dev_priv))
 		tmp &= ~UNDERRUN_RECOVERY_ENABLE_DG2;
-	else if (DISPLAY_VER(dev_priv) >= 13)
+	else if ((DISPLAY_VER(dev_priv) >= 13) && (DISPLAY_VER(dev_priv) < 30))
 		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
 
 	/* Wa_14010547955:dg2 */
-- 
2.25.1

