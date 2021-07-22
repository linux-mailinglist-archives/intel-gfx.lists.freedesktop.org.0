Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9403D2200
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 12:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 250846E82A;
	Thu, 22 Jul 2021 10:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D33906E14F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 10:18:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="275432485"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="275432485"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 03:18:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="632937087"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga005.jf.intel.com with ESMTP; 22 Jul 2021 03:18:49 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jul 2021 18:25:54 +0800
Message-Id: <20210722102558.362-2-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210722102558.362-1-shawn.c.lee@intel.com>
References: <20210722102558.362-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915/dsi: send correct gpio_number
 on gen11 platform
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
Cc: cooper.chiou@intel.com, william.tseng@intel.com, jani.nikula@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Transfer "gpio_nunmber" instead of "gpio_index" while doing
gpio configuration in icl_exec_gpio().

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index c2a2cd1f84dc..cc93e045a425 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -381,7 +381,7 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	value = *data++ & 1;
 
 	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_exec_gpio(dev_priv, gpio_source, gpio_index, value);
+		icl_exec_gpio(dev_priv, gpio_source, gpio_number, value);
 	else if (IS_VALLEYVIEW(dev_priv))
 		vlv_exec_gpio(dev_priv, gpio_source, gpio_number, value);
 	else if (IS_CHERRYVIEW(dev_priv))
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
