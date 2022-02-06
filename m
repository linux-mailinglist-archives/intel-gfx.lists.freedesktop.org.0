Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF3D4AB005
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Feb 2022 15:43:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9614A10E5E0;
	Sun,  6 Feb 2022 14:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7493710E5E0
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Feb 2022 14:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644158611; x=1675694611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cp+gNVCP5QuazRVByLVGxGVbXUjJhMn9qB8J6GRkomo=;
 b=i61IsdDdV1tF+V0+I2BG0N1Nrc4DvNCJxca8B7lCVlX3XO8CLZEvGpF3
 a+rOgIUzuMgECjAzt4h6EuUhtwglbQGJtoqkUhLJHRnBB83YMPqCrRyIk
 ML+oT2mnARnULwZVSFEF4ETU5nkiaX7w27SfF0DLn7WF5yeqKYU8yDG7w
 F/YXyNtzjFJUIfcNT3NXIG1oSn1NGaklepLIeKuUQrlZK6t4CTPFPmXR/
 XmpzO3PY4mKpu0Wq4t+Hjqi1lQqnNlnlq9zlkWx6EZPRKbB5ZOEYIvlyp
 8fQYytTnG9FWrKlDFPvXnnYIjfwFY2yCqPygL/ZGUcITkM7gMlN4GWjkU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10249"; a="334987567"
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="334987567"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 06:43:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="700183728"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 06:43:29 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  6 Feb 2022 20:13:09 +0530
Message-Id: <20220206144311.5053-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220206144311.5053-1-anshuman.gupta@intel.com>
References: <20220206144311.5053-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/opregion: Register opreg func only
 for disp parts
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It need to register opregion_func only for graphics sku
which has display. Use HAS_DISPLAY() to register
opregion_func.

Cc: Badal Nilawar <badal.nilawar@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 19f0558c0fbf..c1b558cdb99e 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -860,6 +860,9 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	BUILD_BUG_ON(sizeof(struct opregion_asle) != 0x100);
 	BUILD_BUG_ON(sizeof(struct opregion_asle_ext) != 0x400);
 
+	if (!opregion->opregion_func)
+		return 0;
+
 	INIT_WORK(&opregion->asle_work, asle_work);
 
 	base = opregion->opregion_func->alloc_opregion(dev_priv);
@@ -1296,9 +1299,9 @@ int intel_opregion_init(struct drm_i915_private *i915)
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

