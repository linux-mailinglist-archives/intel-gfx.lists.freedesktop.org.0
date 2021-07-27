Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 501563D7044
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 09:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E2AE733DA;
	Tue, 27 Jul 2021 07:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F33E6EB74
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 07:19:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="191982344"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="191982344"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:03 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="505378907"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 00:18:33 -0700
Message-Id: <20210727071845.841554-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 16/28] drm/i915: remove explicit CNL handling from
 i915_irq.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove special handling of PORT_F in i915_irq.c and only do it for
DISPLAY_VER == 11.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 7 +++----
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index e2171bd2820e..17d336218b67 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2297,11 +2297,10 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 			GEN9_AUX_CHANNEL_C |
 			GEN9_AUX_CHANNEL_D;
 
-	if (IS_CNL_WITH_PORT_F(dev_priv) || DISPLAY_VER(dev_priv) == 11)
-		mask |= CNL_AUX_CHANNEL_F;
-
-	if (DISPLAY_VER(dev_priv) == 11)
+	if (DISPLAY_VER(dev_priv) == 11) {
+		mask |= ICL_AUX_CHANNEL_F;
 		mask |= ICL_AUX_CHANNEL_E;
+	}
 
 	return mask;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9f62ecb72c2c..1ca9fef2f86c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7968,7 +7968,7 @@ enum {
 #define  DSI1_NON_TE			(1 << 31)
 #define  DSI0_NON_TE			(1 << 30)
 #define  ICL_AUX_CHANNEL_E		(1 << 29)
-#define  CNL_AUX_CHANNEL_F		(1 << 28)
+#define  ICL_AUX_CHANNEL_F		(1 << 28)
 #define  GEN9_AUX_CHANNEL_D		(1 << 27)
 #define  GEN9_AUX_CHANNEL_C		(1 << 26)
 #define  GEN9_AUX_CHANNEL_B		(1 << 25)
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
