Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E16633C14
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A9010E3E4;
	Tue, 22 Nov 2022 12:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667CB10E3DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118926; x=1700654926;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5TixD2bCARdkB4010ghE+yTZDZZdzis8i6uFGG18QRE=;
 b=HcKU1MfzZP3A8VD/NGv5BUoz1NOWeIUYnYOuOzSxyTAdmIsO70fXYSSw
 qx+zq71zBGj7MeXo4Upun56JI1XGp8Kz6BcnTUnZ7dY1/oJ9ozcae3fed
 2dQ7SULSDdQDY2mgYQ0Zlg8+5SG/MQAtabcOE4JlUpGwB98PaI0IuGZ3o
 DbmQBvJKg5jqMgizHWpYPJTzU20CaJI6uXqIql5mpLZg9SK2/gOiDCrUW
 F3/soiytaU0pN8ORYI9xLP7DIbxbXBeHyTi+WcOaeQfw3LurXlinuqz0K
 l3NQmHndLI7jxwe73Ak39+FFK4NhmaeMfhcH4pIU0qjExxusFYrm9fJz8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313829554"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="313829554"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395847"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395847"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:21 +0200
Message-Id: <20221122120825.26338-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/10] drm/i915/dvo: Rename the "active data
 order" bits
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We have two sets of bits for DVO "data order" stuff. Rename
one set to ACT_DATA_ORDER to make it clear they are separate
bitfields.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h          | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 255deb55b932..b36c3a620250 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -288,10 +288,10 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 	enum pipe pipe = crtc->pipe;
 	u32 dvo_val;
 
-	/* Save the data order, since I don't know what it should be set to. */
+	/* Save the active data order, since I don't know what it should be set to. */
 	dvo_val = intel_de_read(i915, DVO(port)) &
 		  (DVO_DEDICATED_INT_ENABLE |
-		   DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
+		   DVO_PRESERVE_MASK | DVO_ACT_DATA_ORDER_GBRG);
 	dvo_val |= DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
 		   DVO_BLANK_ACTIVE_HIGH;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 89c834d8fff8..464be86d6125 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2600,10 +2600,10 @@
 #define   DVO_VSYNC_TRISTATE		(1 << 9)
 #define   DVO_HSYNC_TRISTATE		(1 << 8)
 #define   DVO_BORDER_ENABLE		(1 << 7)
-#define   DVO_DATA_ORDER_GBRG		(1 << 6)
-#define   DVO_DATA_ORDER_RGGB		(0 << 6)
-#define   DVO_DATA_ORDER_GBRG_ERRATA	(0 << 6)
-#define   DVO_DATA_ORDER_RGGB_ERRATA	(1 << 6)
+#define   DVO_ACT_DATA_ORDER_GBRG		(1 << 6)
+#define   DVO_ACT_DATA_ORDER_RGGB		(0 << 6)
+#define   DVO_ACT_DATA_ORDER_GBRG_ERRATA	(0 << 6)
+#define   DVO_ACT_DATA_ORDER_RGGB_ERRATA	(1 << 6)
 #define   DVO_VSYNC_ACTIVE_HIGH		(1 << 4)
 #define   DVO_HSYNC_ACTIVE_HIGH		(1 << 3)
 #define   DVO_BLANK_ACTIVE_HIGH		(1 << 2)
-- 
2.37.4

