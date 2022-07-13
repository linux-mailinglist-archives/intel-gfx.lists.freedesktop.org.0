Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 503D45730C3
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 10:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 708F718ACF6;
	Wed, 13 Jul 2022 08:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98A418ACF6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jul 2022 08:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657700284; x=1689236284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TdyaW1+4EldlcfymbmUOJnkLF8fpmxFMNBOqerihYKQ=;
 b=DFVIuJKoweYPNmRXdEOe2TzF8Mjt/4t2f/KojVEURm+wjv1puSb7m1r0
 dPnryFMrjFBiZbwF89DQ6FVK+iRBZCqCvaPDTEgXBBPfsAmXXR4wI+S0d
 cryNlrRdyR0bbFx2wjCtr3dD9zZPwLWgpHkqLYER/nMH5/4lGXIPPZ2Sz
 unty1UWZoi7g+Bi8iojbIlpQAhEHLci1Vo7AL1/q7ESPeKnyor52vEwRn
 tUcWS1jU2rD+Y9BIMr6P1Sd3N96k6JTsljex+Q6c9QrDz0FYRTJhD5suj
 AZWrKIe2gLJNleMHQyGwelyx/WJKYEFOonyVsKWyn3t1eskGFUZrBBp6A w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10406"; a="264935552"
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="264935552"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 01:18:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,267,1650956400"; d="scan'208";a="628217095"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga001.jf.intel.com with ESMTP; 13 Jul 2022 01:18:02 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Jul 2022 13:47:47 +0530
Message-Id: <20220713081747.1729689-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220602141850.21301-5-animesh.manna@intel.com>
References: <20220602141850.21301-5-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv2] drm/i915/display: add support for dual panel
 backlight
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

The patch with commit 20f85ef89d94 ("drm/i915/backlight: use unique
backlight device names") already adds support for dual panel backlight
but with error prints. Since the patch tried to create the backlight
device with the same name and upon failure will try with a different
name it leads to failure logs in dmesg inturn getting caught by CI.

This patch alternately will check if the backlight class of same name
exists, will use a different name.

v2: reworked on top of the patch 20f85ef89d94 ("drm/i915/backlight: use
unique backlight device names")

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 24 ++++++++-----------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 110fc98ec280..1e550d048e86 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -971,26 +971,22 @@ int intel_backlight_device_register(struct intel_connector *connector)
 	if (!name)
 		return -ENOMEM;
 
-	bd = backlight_device_register(name, connector->base.kdev, connector,
-				       &intel_backlight_device_ops, &props);
-
-	/*
-	 * Using the same name independent of the drm device or connector
-	 * prevents registration of multiple backlight devices in the
-	 * driver. However, we need to use the default name for backward
-	 * compatibility. Use unique names for subsequent backlight devices as a
-	 * fallback when the default name already exists.
-	 */
-	if (IS_ERR(bd) && PTR_ERR(bd) == -EEXIST) {
+	if (backlight_device_get_by_name(name)) {
+		/*
+		 * Using the same name independent of the drm device or connector
+		 * prevents registration of multiple backlight devices in the
+		 * driver. However, we need to use the default name for backward
+		 * compatibility. Use unique names for subsequent backlight devices as a
+		 * fallback when the default name already exists.
+		 */
 		kfree(name);
 		name = kasprintf(GFP_KERNEL, "card%d-%s-backlight",
 				 i915->drm.primary->index, connector->base.name);
 		if (!name)
 			return -ENOMEM;
-
-		bd = backlight_device_register(name, connector->base.kdev, connector,
-					       &intel_backlight_device_ops, &props);
 	}
+	bd = backlight_device_register(name, connector->base.kdev, connector,
+				       &intel_backlight_device_ops, &props);
 
 	if (IS_ERR(bd)) {
 		drm_err(&i915->drm,
-- 
2.25.1

