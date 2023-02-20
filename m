Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4BA69D72C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 00:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6899210E2A1;
	Mon, 20 Feb 2023 23:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E60210E0E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 23:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676936455; x=1708472455;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=g6Rrb6Z/zAL8uzB8zHUvZHnhKe8+Lvle/5RLfT1LUcU=;
 b=Y+3Mq20yc+ROZF2E1GBikd0qIXUTxBCvvJ9bl0kGWdaFZBmARY7jVltd
 j9UG+Z9kAmlT/JI+/Sp8O1aC9EELtPKe0Fc8KxsHTxPtRN4mQbGPzjp+p
 vnD7cXLx3UljmPheEx/QlS3InBy8st3ZjnoZBe0rhFMbZ/CgmjfFxDeR9
 jn/orh1L2aXaWITuYRN7QXJ2KUmghHPWz1HFhIIdhGrRSS+qekuc4FBcL
 Ful2rO9UrHOTrslh3qP8s8PosN5RMOq6Qd9qmB1KWryK1aSZyfNkwOVzK
 NYDu0clJgzrmSHmyw+5E+zS/PSs+Ox2PRRBoOJh/RxDC/rFA6m2KDJM5P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="394988988"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="394988988"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 15:40:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664769619"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="664769619"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 20 Feb 2023 15:40:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Feb 2023 01:40:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 01:40:30 +0200
Message-Id: <20230220234046.29716-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/18] drm/i915: Fix SKL DDI A digital port
 .connected()
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

SKL doesn't have any north DE hotplug stuff. Currently we're
trying to read DDI A live state from the BDW north DE bit,
instead of the approproate south DE bit. Fix it.

And for good measure clear the pointer to the north hpd
pin array, so that we'll actually notice if some other
place is also using the wrong thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++----
 drivers/gpu/drm/i915/i915_irq.c          |  2 ++
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 40b5c93f9223..1a042f3658eb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4508,15 +4508,18 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		if (intel_phy_is_tc(dev_priv, phy))
 			dig_port->connected = intel_tc_port_connected;
 		else
 			dig_port->connected = lpt_digital_port_connected;
-	} else if (DISPLAY_VER(dev_priv) >= 8) {
-		if (port == PORT_A || IS_GEMINILAKE(dev_priv) ||
-		    IS_BROXTON(dev_priv))
+	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
+		dig_port->connected = bdw_digital_port_connected;
+	} else if (DISPLAY_VER(dev_priv) == 9) {
+		dig_port->connected = lpt_digital_port_connected;
+	} else if (IS_BROADWELL(dev_priv)) {
+		if (port == PORT_A)
 			dig_port->connected = bdw_digital_port_connected;
 		else
 			dig_port->connected = lpt_digital_port_connected;
-	} else {
+	} else if (IS_HASWELL(dev_priv)) {
 		if (port == PORT_A)
 			dig_port->connected = hsw_digital_port_connected;
 		else
 			dig_port->connected = lpt_digital_port_connected;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index b024a3a7ca19..13ada0916c2a 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -197,8 +197,10 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 11)
 		hpd->hpd = hpd_gen11;
 	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		hpd->hpd = hpd_bxt;
+	else if (DISPLAY_VER(dev_priv) == 9)
+		hpd->hpd = NULL; /* no north HPD on SKL */
 	else if (DISPLAY_VER(dev_priv) >= 8)
 		hpd->hpd = hpd_bdw;
 	else if (DISPLAY_VER(dev_priv) >= 7)
 		hpd->hpd = hpd_ivb;
-- 
2.39.2

