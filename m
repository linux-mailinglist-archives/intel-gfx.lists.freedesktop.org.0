Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD949140C7D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 15:30:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 267D06F5AB;
	Fri, 17 Jan 2020 14:29:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C9D6F5AB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 14:29:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:29:57 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="373664176"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 06:29:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 16:29:24 +0200
Message-Id: <6d61a5bc60c995d2ee812ef61d3c5c93b61453e7.1579270868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1579270868.git.jani.nikula@intel.com>
References: <cover.1579270868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/bios: intel_bios_hdmi_boost_level()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Don't access i915->vbt.ddi_port_info[] directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_bios.h | 1 +
 drivers/gpu/drm/i915/display/intel_ddi.c  | 5 ++---
 3 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 88b78eae8bb2..5882ffc1b2a6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2585,3 +2585,10 @@ int intel_bios_dp_boost_level(struct intel_encoder *encoder)
 
 	return i915->vbt.ddi_port_info[encoder->port].dp_boost_level;
 }
+
+int intel_bios_hdmi_boost_level(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	return i915->vbt.ddi_port_info[encoder->port].hdmi_boost_level;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 5e68c58b58ca..b1c11b9bea41 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -250,5 +250,6 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
 int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
 int intel_bios_dp_boost_level(struct intel_encoder *encoder);
+int intel_bios_hdmi_boost_level(struct intel_encoder *encoder);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7bd5858b1f4a..3697fa047362 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1055,8 +1055,7 @@ static void intel_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 		level = n_entries - 1;
 
 	/* If we're boosting the current, set bit 31 of trans1 */
-	if (IS_GEN9_BC(dev_priv) &&
-	    dev_priv->vbt.ddi_port_info[port].hdmi_boost_level)
+	if (IS_GEN9_BC(dev_priv) && intel_bios_hdmi_boost_level(encoder))
 		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
 
 	/* Entry 9 is for HDMI: */
@@ -2341,7 +2340,7 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 	u8 iboost;
 
 	if (type == INTEL_OUTPUT_HDMI)
-		iboost = dev_priv->vbt.ddi_port_info[port].hdmi_boost_level;
+		iboost = intel_bios_hdmi_boost_level(encoder);
 	else
 		iboost = intel_bios_dp_boost_level(encoder);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
