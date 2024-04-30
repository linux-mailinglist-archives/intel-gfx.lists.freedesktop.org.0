Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E21958B7E92
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 19:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17516112D94;
	Tue, 30 Apr 2024 17:31:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U9+lvb9G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36285112D79;
 Tue, 30 Apr 2024 17:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714498221; x=1746034221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FewVEvq68BJuspVFQjRmefNzDxO+/zqhnTctQSSajmQ=;
 b=U9+lvb9GNceUZ9JlFjdbDQx0OqX/pCgKUMugik2Npvy/a77+VP9FISQ2
 fST3U9z+HZ41jFCGGsQUvwZUBesEJVXG5hroq67ypJB4Jg/vP0FpPMDLN
 dHe9bYYY/+WVpJsrWEOaX2Q/Kl6TPYxCAk4En5KidN9keHEdMZ113FoJ1
 dTGDQhjZ286i4uG/p3JJBcHo2Z6WU9B7KTGWLq3lwUPS7vIeGA4OD5Av+
 62yOg1moiy2u/rkxM5oeqm6ojY9vcMyy9t/dp4yyIdzS1uJ1vUFOsqYkY
 XLosIzbdrZ0Bog0hsRFXyjyav/kD+C24NfkISe6UOwzycraF4CbwfFWLY w==;
X-CSE-ConnectionGUID: ZKmCPoSFSnOs3KXIQQezkg==
X-CSE-MsgGUID: RNqisU/rTCKM15DSzoYwmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="27741998"
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="27741998"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
X-CSE-ConnectionGUID: hVVRvC3ER/aJGFeibqVVHQ==
X-CSE-MsgGUID: 5ApwjS0WQzKGgb94WUPg0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,242,1708416000"; d="scan'208";a="26617849"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 10:30:21 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: [PATCH v3 13/19] drm/i915/bmg: BMG should re-use MTL's south display
 logic
Date: Tue, 30 Apr 2024 10:28:44 -0700
Message-Id: <20240430172850.1881525-14-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
References: <20240430172850.1881525-1-radhakrishna.sripada@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

Battlemage's south display is the same as Meteor Lake's, including the
need to invert the HPD pins, which Lunar Lake does not need.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 3cad6dac06b0..542eea50093c 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -218,10 +218,10 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		dev_priv->pch_type = PCH_LNL;
 		return;
-	} else if (IS_METEORLAKE(dev_priv)) {
+	} else if (IS_BATTLEMAGE(dev_priv) || IS_METEORLAKE(dev_priv)) {
 		/*
 		 * Both north display and south display are on the SoC die.
-		 * The real PCH is uninvolved in display.
+		 * The real PCH (if it even exists) is uninvolved in display.
 		 */
 		dev_priv->pch_type = PCH_MTL;
 		return;
-- 
2.34.1

