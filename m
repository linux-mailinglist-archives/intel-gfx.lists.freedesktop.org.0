Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDC181A8EB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 23:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44A5810E649;
	Wed, 20 Dec 2023 22:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 318E510E642
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 22:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703110514; x=1734646514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nklv+S1L/li3nI4EQKuSwAGl2psx0sK6srP3E6aVN8c=;
 b=WboPHfWwYOQfErhqA8rJQb3UFfv1ZfbJNc/01E2FrJwoznV0pQElzzxP
 QhJhn9Db+oNQCV0FMDRhumsx/5YuscKMkm0XasfQHS9KwcHtDKoVudqfI
 bxJ488sZyPdLOVfkOSImH/xirVDa827EYolmAGJuMceuXrXcgX9KVilOv
 k5I2QRpiBgxekME+2pl897zHqCV/yo5aqzE/mG++yqXwSlElkRoJHBkpV
 +UVvntq0XpJAhmzZVJc4qGPz8qnJEmhi25EhZYjd+fnSNQ7oNbrRVbKXy
 XLZ/t13UYbQzBQwedgu/s41v6fdZks1qbU2Vk2klgusDBekStWkj2yAek A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="460220633"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="460220633"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:15:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="920106967"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="920106967"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:15:13 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/4] drm/i915: Move intel_bios_driver_remove later
Date: Wed, 20 Dec 2023 14:13:38 -0800
Message-Id: <20231220221341.3248508-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
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

Vbt structures will be used during mode config cleanup. Move
the vbt structures cleanup to later time to accommodate cleaner
mode config removal.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 9df9097a0255..002bf7caa7eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -466,6 +466,8 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 	destroy_workqueue(i915->display.wq.modeset);
 
 	intel_fbc_cleanup(i915);
+
+	intel_bios_driver_remove(i915);
 }
 
 /* part #3: call after gem init */
@@ -476,8 +478,6 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
 	intel_power_domains_driver_remove(i915);
 
 	intel_vga_unregister(i915);
-
-	intel_bios_driver_remove(i915);
 }
 
 void intel_display_driver_unregister(struct drm_i915_private *i915)
-- 
2.34.1

