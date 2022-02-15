Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEFD4B6DBD
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 14:37:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAC2A10E4E1;
	Tue, 15 Feb 2022 13:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C0410E4DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 13:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644932267; x=1676468267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6LkqrtOc8hqQG9QFDCt/UOAgZ0zXLGyIw7fCN3cF88w=;
 b=h//FYzDDb/NyFIOdNk0u7ayJuMHJf0meGgxKfY5sJhz+idHqX0BJSsG2
 MZ+TLDXRbdpjM+nneqrBCOI+wBpjMYZWtq/2BNhqznLDvnhigwmrJpyBz
 7KS3lHz18ytCAdVpTN0tzfGXYhbLuv/+pgQ7CYO2oO06/w31dfvwt+tY1
 9rOSN21coNFUHxV3nU8dzMzBJSfgQ99QgjOQ/WJGMVaDoknctPUKtGq+T
 LPVyDgZRtwCw6r2RhGGClDon0dny6tpWjlPGk20XMLuQxnKqUbt6wdjx5
 bNS3nRnEfNBm7RS7DECKQIb5EHmQDrZ+D/k/wwfGwBZLKU6XPIMW80rio A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="313625912"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="313625912"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="603828846"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:45 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 19:07:25 +0530
Message-Id: <20220215133727.13450-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220215133727.13450-1-anshuman.gupta@intel.com>
References: <20220215133727.13450-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915/opregion: Cond dgfx opregion
 func registration
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

DGFX ASLS and OPROM OpRegion are only supported on the GFX Cards,
which supports Display Engine. Register opregion function accordingly
using the HAS_DISPLAY(). And early return intel_opregion_setup()
if no opregion func to avoid NULL pointer oops.

v2:
- Change the commit log.

Cc: Badal Nilawar <badal.nilawar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index eca2d3a4f72b..562161a929d6 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -894,6 +894,9 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	BUILD_BUG_ON(sizeof(struct opregion_asle) != 0x100);
 	BUILD_BUG_ON(sizeof(struct opregion_asle_ext) != 0x400);
 
+	if (!opregion->opregion_func)
+		return 0;
+
 	INIT_WORK(&opregion->asle_work, asle_work);
 
 	base = opregion->opregion_func->alloc_opregion(dev_priv);
@@ -1348,9 +1351,9 @@ int intel_opregion_init(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->opregion;
 
-	if (IS_DGFX(i915))
+	if (IS_DGFX(i915) && HAS_DISPLAY(i915))
 		opregion->opregion_func = &dgfx_opregion_func;
-	else
+	else if (!IS_DGFX(i915))
 		opregion->opregion_func = &igfx_opregion_func;
 
 	return intel_opregion_setup(i915);
-- 
2.26.2

