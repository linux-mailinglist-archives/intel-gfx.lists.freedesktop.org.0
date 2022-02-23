Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F874C0FDE
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 11:10:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B8610ED6C;
	Wed, 23 Feb 2022 10:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B6A10ED64
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 10:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645611030; x=1677147030;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ENmCj9OMuV1beYmEJNuciMS1nyI28Et21jsDQSFeRQY=;
 b=jH/dXi/rPob1Gw7mtX62ES9CAiWsjNW9NAbC3e2WT9c4JyAM7VMniPG/
 7GERA919S1ZW06FA4/wQgdUNG2kJ/1KDNsmVxATSJstglNtkw3CK7NKIf
 FLgySSVPCQZIB9fVAaMWAnIJhPFc93k1dHtlM31KGuzJXT69NjKJ0Fhks
 OA/0S5vWalC1Xvbsq+2FSMPGDAYIkDyf/8CfhXseHYfaeQ9rO6LAZx5s5
 l2/YkX85XOXOsjZzJymG8z7b/YNq6Tqq3lxJNMGddfAn2WmGfwFgufD8Z
 lA0gc46I79uViJc8WgwY+ntXc5vurd5GyHODpbaeilXl2MxzeykiHSL4G A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="315157116"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="315157116"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 02:10:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="548176287"
Received: from khagn-mobl.ger.corp.intel.com (HELO localhost) ([10.252.44.68])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2022 02:10:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 12:10:23 +0200
Message-Id: <20220223101023.626698-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/wm: use REG_FIELD_PREP for
 PLANE_WM_BLOCKS_MASK
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use REG_FIELD_PREP for completeness, and to avoid bitwise operations
with different sizes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 5af16ca4dabd..3411ebaa767f 100644
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
-- 
2.30.2

