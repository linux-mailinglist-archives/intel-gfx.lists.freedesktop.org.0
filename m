Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 114548A4A10
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 10:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 616591122DA;
	Mon, 15 Apr 2024 08:14:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f6syRCvh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD7791122CF;
 Mon, 15 Apr 2024 08:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713168870; x=1744704870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6IzeJVZuk4PMQxSgwttLadbDFVn1uyEie+Q5t1hIs+c=;
 b=f6syRCvhTL2Tl1Og8DYxEHIJwUBDTNVqo/mQK3f6be9r6G4tuTYsIkTg
 4O5+cH9RvYeo5EfgRz2/QC2OkmzjvC7T0KhEdf9g6yEFB9rjwj6lEyau3
 f/ILByXN7fws8SxxgjUnh6w2zzHIpUkSWX3ok0bQDVBxOoLnpyNaKiDs7
 xHCMycc+bi91XEQnSnUVEydLZXZwjIBzWDllCOOcubfmcMLodGgJCxF5G
 eS55RPebG4J+xouhXB2w+JVJiHIzXInG/Bt8w8je48q811bDAdX0jO5Sv
 4GdftD+au8vfqy0gxr1yK3oBpkbvN7JIliD8vwHgK1ponocnhqN5rQr+9 Q==;
X-CSE-ConnectionGUID: jccfto42StGRyeNbr/KJEA==
X-CSE-MsgGUID: bbQXrNu7TgSIAgom62ZYgw==
X-IronPort-AV: E=McAfee;i="6600,9927,11044"; a="9096431"
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; 
   d="scan'208";a="9096431"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:30 -0700
X-CSE-ConnectionGUID: 47FfWM/kQd+3b1FtvBcOHg==
X-CSE-MsgGUID: 6PlRWd8DShitXfuNtdHrdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,202,1708416000"; d="scan'208";a="26400439"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 01:14:29 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v3 15/21] drm/i915/bmg: BMG should re-use MTL's south display
 logic
Date: Mon, 15 Apr 2024 13:44:17 +0530
Message-Id: <20240415081423.495834-16-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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
2.25.1

