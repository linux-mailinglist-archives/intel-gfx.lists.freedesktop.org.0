Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088333D20EF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 11:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0446EEB3;
	Thu, 22 Jul 2021 09:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71596EEA6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 09:30:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="233418012"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="233418012"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 02:29:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="565021374"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga004.jf.intel.com with ESMTP; 22 Jul 2021 02:29:57 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jul 2021 17:37:07 +0800
Message-Id: <20210722093711.32338-2-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210722093711.32338-1-shawn.c.lee@intel.com>
References: <20210719072222.13369-1-shawn.c.lee@intel.com>
 <20210722093711.32338-1-shawn.c.lee@intel.com>
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
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
