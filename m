Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A197A6A85E5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13C5E10E13B;
	Thu,  2 Mar 2023 16:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C465B10E131
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677773495; x=1709309495;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hY+fAaiT98nfEPkNZZtpzpzXwfp2d3sCFNLocwTY7oY=;
 b=ChMlWCoPSSIaHUWr85MMtvcS6LWyD9Dwuc6578NVLjtEv4g5E7SMqYqL
 l/ctQ1xZEaq5XQaUeU8ucmMaa+cyx/sW887yRPkAY99ia7v5sEUv+Aigl
 0jxd1MhJSUJfyXG+z515vrIedHhtewwQkkzM6bwUcf7nYVzDc2rX4Tiqk
 HpwqQaAnF9EDAaBAfgUkuzTbZ9mUqeFX505wcR6JGgOAXRm+LYCKM5CdM
 /NU3FSVrbjzjjXsg4alDx3Fxs89VLZhqwh4c+3r2KMgcVYEGhXq/zc9st
 BjpwpalTAuCJLc/dSHd7fvFZJFWDyrH8j5/47ccI1AmBno4VpM5zG/O07 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="323057869"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="323057869"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:10:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="784888995"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="784888995"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 02 Mar 2023 08:10:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Mar 2023 18:10:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 18:10:08 +0200
Message-Id: <20230302161013.29213-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Fix SKL DDI A digital port
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

SKL doesn't have any north DE hotplug stuff. Currently we're
trying to read DDI A live state from the BDW north DE bit,
instead of the approproate south DE bit. Fix it.

And for good measure clear the pointer to the north hpd
pin array, so that we'll actually notice if some other
place is also using the wrong thing.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 +++++++----
 drivers/gpu/drm/i915/i915_irq.c          |  2 ++
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 40b5c93f9223..1a042f3658eb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4509,13 +4509,16 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 417c981e4968..cc3d016f76d1 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -198,6 +198,8 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
 		hpd->hpd = hpd_gen11;
 	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 		hpd->hpd = hpd_bxt;
+	else if (DISPLAY_VER(dev_priv) == 9)
+		hpd->hpd = NULL; /* no north HPD on SKL */
 	else if (DISPLAY_VER(dev_priv) >= 8)
 		hpd->hpd = hpd_bdw;
 	else if (DISPLAY_VER(dev_priv) >= 7)
-- 
2.39.2

