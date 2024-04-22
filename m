Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5C68AC460
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48EE91127F5;
	Mon, 22 Apr 2024 06:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zj8ZjE0Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62751127F5;
 Mon, 22 Apr 2024 06:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768032; x=1745304032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6IzeJVZuk4PMQxSgwttLadbDFVn1uyEie+Q5t1hIs+c=;
 b=Zj8ZjE0ZgXtJXNLEer6CWztsPrPPnd5n1regAPZDe96aa27B8SK+47bp
 SUN5fhn0ji1uCUMiNEGK8E051oFiPoiST1G4aBg2J4FpjM0NKrV6ZSF+F
 Aj8JDucD7Vi73kLeruHuYWnwShx98/i+cWPA0a0MqNErPDkAw61fM756M
 5ohtYB37JKg7NsQo8iLjXK93pRiracd1A8Wx/s2fgbqbyZ/tsDT4okvsq
 gsTkaFtWG2gQUYzUj8wJwIOfA32JqfxTM5UIpqpwgct5X3qVAOPt5UaL8
 EovcVRtmQX0FNd6f3YmxuUTbrMPGdIWblLXWX0zvR0IZ/i7boxJ2yCb6k g==;
X-CSE-ConnectionGUID: 6jtVI5vYQJytXtqIlkemHQ==
X-CSE-MsgGUID: j14xBCs4Sd+tWYBN91v+vw==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208651"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208651"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:32 -0700
X-CSE-ConnectionGUID: 6VpkAreqS6mMGwE5TTEX9A==
X-CSE-MsgGUID: eW4odJYLTVO1iJxil8juTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896527"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:30 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: [PATCH v4 13/19] drm/i915/bmg: BMG should re-use MTL's south display
 logic
Date: Mon, 22 Apr 2024 12:10:32 +0530
Message-Id: <20240422064038.1451579-14-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
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

