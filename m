Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FE058887C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 10:08:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A9D113F2C;
	Wed,  3 Aug 2022 08:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCD72113FD5
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 08:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659514115; x=1691050115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZGn/J4dcOjMZFiEQdZOY3kVi822wrVLBL/fTCIfKxfg=;
 b=AeUtya3/Zvn6RhLXLTLY7I6GL/hGIhzEmHQBOtREjeAYasS6nrhqM2z0
 FVh1FnYOtz6VuwmuumNaybga9mBnaK+a51DO24FvlOZSqyF40eWQ6h8/C
 w8VddkeNms+VpzFGTM1AltZQ/j5OoGbdI65jVpsm6qqbWVkUg00S4BuKk
 WaJ6tRlFu0LfwaOe2QV4NQaC6wy/0zzbHelsHCq07soqFcsDMB5V4E+6d
 d4xGyS4n01mlkc8m52EdbidLZsXmj95APdIJZKZlh/iNrKnwlbCn+T78i
 DyKdqZyIoez+O4JXnyvwN9m8wSgGyZ0ChqhVK53cwdPNpGNcxDKT/Qxvw Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="290831772"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="290831772"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 01:08:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="606305132"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga007.fm.intel.com with ESMTP; 03 Aug 2022 01:08:33 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Aug 2022 13:38:23 +0530
Message-Id: <20220803080823.2952635-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220713081747.1729689-1-arun.r.murthy@intel.com>
References: <20220713081747.1729689-1-arun.r.murthy@intel.com>
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

v2: reworked on top of the patch 20f85ef89d94 ("drm/i915/backlight: use
unique backlight device names")
v3: fixed the ref count leak(Jani N)

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

