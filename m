Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A47558C23E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Aug 2022 05:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED9F14A9E4;
	Mon,  8 Aug 2022 03:58:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE8514AA51
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Aug 2022 03:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659931080; x=1691467080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/5d4+NK4hnthqKOPsvpA9OLzutZfJGvsneCCdqNQ7vk=;
 b=AtDrk/LQQ/U1IqbuiofNfVUfPp02HrjH+fOoGAkvz46PoqJXiRRx7W2r
 Yfin83FT6nz+Ehy2Dx/pBYRhxCAL/Cy4R8SqHQcA34nqr9m4GBM24XPBx
 Iw3HoqkEj94qDr68kzsW3XgftbcgdEi3ViteHK69OBIbP686AkPG917Qc
 OfPG+rl8X9AcKbbWJq+fNJjTknNehAVbs0Lh4SmeYQPtJpO6OdgYh7j8L
 8ze7PIILmT9QahkNBhKzH1/ck+FHkywVuZdyvms6lzEv0Gr9hnPuriyZj
 B1FaIaZUL1KHRKRRlRAWZ38jrscdpmSw0vhqg0WnXlifbBlUkhYNzOJOk Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10432"; a="277426191"
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="277426191"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2022 20:58:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,221,1654585200"; d="scan'208";a="849924609"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga006.fm.intel.com with ESMTP; 07 Aug 2022 20:57:58 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Aug 2022 09:27:50 +0530
Message-Id: <20220808035750.3111046-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220803082010.2952698-1-arun.r.murthy@intel.com>
References: <20220803082010.2952698-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv3] drm/i915/display: add support for dual panel
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

v2: reworked on top of the patch commit 20f85ef89d94
("drm/i915/backlight: use unique backlight device names")
v3: fixed the ref count leak(Jani N)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 26 +++++++++----------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 110fc98ec280..931446413372 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -971,26 +971,24 @@ int intel_backlight_device_register(struct intel_connector *connector)
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
+	bd = backlight_device_get_by_name(name);
+	if (bd) {
+		put_device(&bd->dev);
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

