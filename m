Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E19CB896D42
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 12:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 364CB11263E;
	Wed,  3 Apr 2024 10:52:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dM21xqRg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B5A10E121;
 Wed,  3 Apr 2024 10:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712141544; x=1743677544;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eIgqYGq4fLCpTqOPXETspxhbgXdmYP4yn2mIRzbzD4U=;
 b=dM21xqRgMVwJ70nIremnZYf7uR+Lg6X+0yEQ2d/nJ8FBPfhPHt8e+LEg
 t6U1J3xWUcaNGMFX85+pV5W0+nNzHmNsHgKrJ8o5VclskEALZUg6QDAA2
 TQOyU5MMBuSz9uYZ0vlEfOL4Av99xJE8Fav5ZngQaysjgmODdJf0D0JG5
 MPvmDn1dhrPKUoetREaP+CN/eIgBOqz5xH8LP4YW6wGISC9k415Kjj4LE
 XXU9IjF7dCZyEF99q745f8B//6jbDwGT8G3b4AWP+h67QAI0QFyXn9y0C
 dC1S2ygnOvqGUxvWrTX5Ta30NxMuvjO8+uh+y4JQKaIXWNHbH1oGs1M78 w==;
X-CSE-ConnectionGUID: ydK5Fq/CQ/qaJe+F2E5gmw==
X-CSE-MsgGUID: vLM7GSzCTiCuUQUb6YptVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7212249"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7212249"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:56 -0700
X-CSE-ConnectionGUID: Jx9mlBBDSVy17s/8gM8uvw==
X-CSE-MsgGUID: fdXL6rWjRjqOI3Oj6j/zyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18493416"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 03:51:53 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH 20/25] drm/i915/bmg: BMG should re-use MTL's south display
 logic
Date: Wed,  3 Apr 2024 16:21:18 +0530
Message-Id: <20240403105123.1327669-21-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
References: <20240403105123.1327669-1-balasubramani.vivekanandan@intel.com>
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

