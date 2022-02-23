Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F304C105D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 11:36:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6B710E53F;
	Wed, 23 Feb 2022 10:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B48FD10E53F
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 10:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645612563; x=1677148563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PdxWKotE3PAAJ+cok45A197HvS5plSS3vgb7+2/5Yno=;
 b=k7EjRhhkk3/PKmIh2cPtkOZwkHnDeWHZj3yEZKaaN1m4ID4cCUVs+six
 ChL7fgQQvZ2sv3lgDwbckJJbBi3U0jnwu1/ADH2Kk7n5uiMWoJq5Wj7qF
 Uptc7JfNb/H6ZlmixI/Y9nstwNwIhAJBx0TRqaAO/te3rry3bAl3jA67j
 H/uWWmoVgcJ3wsC1ftSb4rpOMMGwZ/w2zRjGwQfQWODfbSUQjT6oI4b93
 L3atGbr8ezBK1E6O4tq2zflxApwKSleCjXCaoXfWQ8s1Ff0kiH9Gm46kN
 4LERWwG2XnkE64+NF1qny19AheDOlS6zXqr6AbSH8eK/72TrolD0OmwK4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="312650533"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="312650533"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 02:35:22 -0800
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="548183390"
Received: from khagn-mobl.ger.corp.intel.com (HELO localhost) ([10.252.44.68])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2022 02:35:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 12:35:17 +0200
Message-Id: <20220223103517.634229-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220223101023.626698-1-jani.nikula@intel.com>
References: <20220223101023.626698-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/wm: use REG_FIELD_{PREP,
 GET} for PLANE_WM_BLOCKS_MASK
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

Use REG_FIELD_{PREP,GET} for completeness, and to avoid bitwise
operations with different sizes.

v2: Also use REG_FIELD_GET in skl_wm_level_from_reg_val() (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 5af16ca4dabd..f7fabcabf805 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5930,7 +5930,7 @@ static void skl_write_wm_level(struct drm_i915_private *dev_priv,
 		val |= PLANE_WM_EN;
 	if (level->ignore_lines)
 		val |= PLANE_WM_IGNORE_LINES;
-	val |= level->blocks;
+	val |= REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
 	val |= REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
 
 	intel_de_write_fw(dev_priv, reg, val);
@@ -6578,7 +6578,7 @@ static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *level)
 {
 	level->enable = val & PLANE_WM_EN;
 	level->ignore_lines = val & PLANE_WM_IGNORE_LINES;
-	level->blocks = val & PLANE_WM_BLOCKS_MASK;
+	level->blocks = REG_FIELD_GET(PLANE_WM_BLOCKS_MASK, val);
 	level->lines = REG_FIELD_GET(PLANE_WM_LINES_MASK, val);
 }
 
-- 
2.30.2

