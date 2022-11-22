Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAB3633C16
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:09:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5CE510E3E7;
	Tue, 22 Nov 2022 12:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89E1A10E3DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118920; x=1700654920;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qntoFjfUfiFxKl0AbNLtLqKHbQZxp4Elgg++dZ+2eac=;
 b=ESyVvHP1ySHgmaBH59ZaBuYZs0yqAPfTQZbe3WcL4Uaea79dDYGgO6q9
 IQPd9hLbCTL3Uk3nRB1JKaK3/FWowKFzOdtZJq6gpKERVHGl123qSSVCR
 ypl+Id7B5DMqxwdEdLnRBZMvD2v34axzQ+p7xoT5bPdyHxbYlXkqSvg5f
 pXj8zDtK6BkK74cg+JVscz848N4B8ccrXlPariOYRVgdCFWljtQTytK0f
 099fiO0xtkDMGR1l8Qma6ISVmM5sxmpLqdui+SRPs/fq8prK7zYMNVr1Z
 trjLY1kJ9rdS89iVONRjB80YQREZ1DgeDXCoL4I0hEc3dNNz4tsKH5YQd g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="313829541"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="313829541"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395830"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395830"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:19 +0200
Message-Id: <20221122120825.26338-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/dvo: Parametrize DVO/DVO_SRCDIM
 registers
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

Get rid of the dvo_reg/dvo_srcdim_reg stuff by parametrizing
the DVO port registers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c     | 73 ++++++++------------
 drivers/gpu/drm/i915/display/intel_dvo_dev.h |  7 +-
 drivers/gpu/drm/i915/i915_reg.h              | 11 ++-
 3 files changed, 37 insertions(+), 54 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 575cb920bd43..d20334d3394c 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -56,48 +56,42 @@ static const struct intel_dvo_device intel_dvo_devices[] = {
 	{
 		.type = INTEL_DVO_CHIP_TMDS,
 		.name = "sil164",
-		.dvo_reg = DVOC,
-		.dvo_srcdim_reg = DVOC_SRCDIM,
+		.port = PORT_C,
 		.slave_addr = SIL164_ADDR,
 		.dev_ops = &sil164_ops,
 	},
 	{
 		.type = INTEL_DVO_CHIP_TMDS,
 		.name = "ch7xxx",
-		.dvo_reg = DVOC,
-		.dvo_srcdim_reg = DVOC_SRCDIM,
+		.port = PORT_C,
 		.slave_addr = CH7xxx_ADDR,
 		.dev_ops = &ch7xxx_ops,
 	},
 	{
 		.type = INTEL_DVO_CHIP_TMDS,
 		.name = "ch7xxx",
-		.dvo_reg = DVOC,
-		.dvo_srcdim_reg = DVOC_SRCDIM,
+		.port = PORT_C,
 		.slave_addr = 0x75, /* For some ch7010 */
 		.dev_ops = &ch7xxx_ops,
 	},
 	{
 		.type = INTEL_DVO_CHIP_LVDS,
 		.name = "ivch",
-		.dvo_reg = DVOA,
-		.dvo_srcdim_reg = DVOA_SRCDIM,
+		.port = PORT_A,
 		.slave_addr = 0x02, /* Might also be 0x44, 0x84, 0xc4 */
 		.dev_ops = &ivch_ops,
 	},
 	{
 		.type = INTEL_DVO_CHIP_TMDS,
 		.name = "tfp410",
-		.dvo_reg = DVOC,
-		.dvo_srcdim_reg = DVOC_SRCDIM,
+		.port = PORT_C,
 		.slave_addr = TFP410_ADDR,
 		.dev_ops = &tfp410_ops,
 	},
 	{
 		.type = INTEL_DVO_CHIP_LVDS,
 		.name = "ch7017",
-		.dvo_reg = DVOC,
-		.dvo_srcdim_reg = DVOC_SRCDIM,
+		.port = PORT_C,
 		.slave_addr = 0x75,
 		.gpio = GMBUS_PIN_DPB,
 		.dev_ops = &ch7017_ops,
@@ -105,8 +99,7 @@ static const struct intel_dvo_device intel_dvo_devices[] = {
 	{
 		.type = INTEL_DVO_CHIP_LVDS_NO_FIXED,
 		.name = "ns2501",
-		.dvo_reg = DVOB,
-		.dvo_srcdim_reg = DVOB_SRCDIM,
+		.port = PORT_B,
 		.slave_addr = NS2501_ADDR,
 		.dev_ops = &ns2501_ops,
 	},
@@ -133,10 +126,12 @@ static struct intel_dvo *intel_attached_dvo(struct intel_connector *connector)
 static bool intel_dvo_connector_get_hw_state(struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
+	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, intel_dvo->dev.dvo_reg);
+	tmp = intel_de_read(i915, DVO(port));
 
 	if (!(tmp & DVO_ENABLE))
 		return false;
@@ -148,10 +143,10 @@ static bool intel_dvo_get_hw_state(struct intel_encoder *encoder,
 				   enum pipe *pipe)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
+	enum port port = encoder->port;
 	u32 tmp;
 
-	tmp = intel_de_read(i915, intel_dvo->dev.dvo_reg);
+	tmp = intel_de_read(i915, DVO(port));
 
 	*pipe = (tmp & DVO_PIPE_SEL_MASK) >> DVO_PIPE_SEL_SHIFT;
 
@@ -162,12 +157,12 @@ static void intel_dvo_get_config(struct intel_encoder *encoder,
 				 struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
+	enum port port = encoder->port;
 	u32 tmp, flags = 0;
 
 	pipe_config->output_types |= BIT(INTEL_OUTPUT_DVO);
 
-	tmp = intel_de_read(i915, intel_dvo->dev.dvo_reg);
+	tmp = intel_de_read(i915, DVO(port));
 	if (tmp & DVO_HSYNC_ACTIVE_HIGH)
 		flags |= DRM_MODE_FLAG_PHSYNC;
 	else
@@ -189,12 +184,12 @@ static void intel_disable_dvo(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
-	i915_reg_t dvo_reg = intel_dvo->dev.dvo_reg;
-	u32 temp = intel_de_read(i915, dvo_reg);
+	enum port port = encoder->port;
+	u32 temp = intel_de_read(i915, DVO(port));
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, false);
-	intel_de_write(i915, dvo_reg, temp & ~DVO_ENABLE);
-	intel_de_read(i915, dvo_reg);
+	intel_de_write(i915, DVO(port), temp & ~DVO_ENABLE);
+	intel_de_read(i915, DVO(port));
 }
 
 static void intel_enable_dvo(struct intel_atomic_state *state,
@@ -204,15 +199,15 @@ static void intel_enable_dvo(struct intel_atomic_state *state,
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
-	i915_reg_t dvo_reg = intel_dvo->dev.dvo_reg;
-	u32 temp = intel_de_read(i915, dvo_reg);
+	enum port port = encoder->port;
+	u32 temp = intel_de_read(i915, DVO(port));
 
 	intel_dvo->dev.dev_ops->mode_set(&intel_dvo->dev,
 					 &pipe_config->hw.mode,
 					 &pipe_config->hw.adjusted_mode);
 
-	intel_de_write(i915, dvo_reg, temp | DVO_ENABLE);
-	intel_de_read(i915, dvo_reg);
+	intel_de_write(i915, DVO(port), temp | DVO_ENABLE);
+	intel_de_read(i915, DVO(port));
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, true);
 }
@@ -289,14 +284,12 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
-	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
+	enum port port = encoder->port;
 	enum pipe pipe = crtc->pipe;
 	u32 dvo_val;
-	i915_reg_t dvo_reg = intel_dvo->dev.dvo_reg;
-	i915_reg_t dvo_srcdim_reg = intel_dvo->dev.dvo_srcdim_reg;
 
 	/* Save the data order, since I don't know what it should be set to. */
-	dvo_val = intel_de_read(i915, dvo_reg) &
+	dvo_val = intel_de_read(i915, DVO(port)) &
 		  (DVO_PRESERVE_MASK | DVO_DATA_ORDER_GBRG);
 	dvo_val |= DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
 		   DVO_BLANK_ACTIVE_HIGH;
@@ -308,9 +301,9 @@ static void intel_dvo_pre_enable(struct intel_atomic_state *state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
 		dvo_val |= DVO_VSYNC_ACTIVE_HIGH;
 
-	intel_de_write(i915, dvo_srcdim_reg,
+	intel_de_write(i915, DVO_SRCDIM(port),
 		       (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) | (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));
-	intel_de_write(i915, dvo_reg, dvo_val);
+	intel_de_write(i915, DVO(port), dvo_val);
 }
 
 static enum drm_connector_status
@@ -378,16 +371,6 @@ static const struct drm_encoder_funcs intel_dvo_enc_funcs = {
 	.destroy = intel_dvo_enc_destroy,
 };
 
-static enum port intel_dvo_port(i915_reg_t dvo_reg)
-{
-	if (i915_mmio_reg_equal(dvo_reg, DVOA))
-		return PORT_A;
-	else if (i915_mmio_reg_equal(dvo_reg, DVOB))
-		return PORT_B;
-	else
-		return PORT_C;
-}
-
 static int intel_dvo_encoder_type(const struct intel_dvo_device *dvo)
 {
 	switch (dvo->type) {
@@ -528,7 +511,7 @@ void intel_dvo_init(struct drm_i915_private *i915)
 
 	encoder->type = INTEL_OUTPUT_DVO;
 	encoder->power_domain = POWER_DOMAIN_PORT_OTHER;
-	encoder->port = intel_dvo_port(intel_dvo->dev.dvo_reg);
+	encoder->port = intel_dvo->dev.port;
 	encoder->pipe_mask = ~0;
 
 	if (intel_dvo->dev.type != INTEL_DVO_CHIP_LVDS)
diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
index ecff7b190856..ea8eb7dcee38 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
+++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
@@ -25,6 +25,8 @@
 
 #include "i915_reg_defs.h"
 
+#include "intel_display.h"
+
 enum drm_connector_status;
 struct drm_display_mode;
 struct i2c_adapter;
@@ -32,9 +34,8 @@ struct i2c_adapter;
 struct intel_dvo_device {
 	const char *name;
 	int type;
-	/* DVOA/B/C output register */
-	i915_reg_t dvo_reg;
-	i915_reg_t dvo_srcdim_reg;
+	/* DVOA/B/C */
+	enum port port;
 	/* GPIO register used for i2c bus to control this device */
 	u32 gpio;
 	int slave_addr;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8e1892d14774..f5ae171eaee0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2578,11 +2578,9 @@
 
 /* DVO port control */
 #define _DVOA			0x61120
-#define DVOA			_MMIO(_DVOA)
 #define _DVOB			0x61140
-#define DVOB			_MMIO(_DVOB)
 #define _DVOC			0x61160
-#define DVOC			_MMIO(_DVOC)
+#define DVO(port)		_MMIO_PORT((port), _DVOA, _DVOB)
 #define   DVO_ENABLE			(1 << 31)
 #define   DVO_PIPE_SEL_SHIFT		30
 #define   DVO_PIPE_SEL_MASK		(1 << 30)
@@ -2609,9 +2607,10 @@
 #define   DVO_OUTPUT_CSTATE_PIXELS	(1 << 1)	/* SDG only */
 #define   DVO_OUTPUT_SOURCE_SIZE_PIXELS	(1 << 0)	/* SDG only */
 #define   DVO_PRESERVE_MASK		(0x7 << 24)
-#define DVOA_SRCDIM		_MMIO(0x61124)
-#define DVOB_SRCDIM		_MMIO(0x61144)
-#define DVOC_SRCDIM		_MMIO(0x61164)
+#define _DVOA_SRCDIM		0x61124
+#define _DVOB_SRCDIM		0x61144
+#define _DVOC_SRCDIM		0x61164
+#define DVO_SRCDIM(port)	_MMIO_PORT((port), _DVOA_SRCDIM, _DVOB_SRCDIM)
 #define   DVO_SRCDIM_HORIZONTAL_SHIFT	12
 #define   DVO_SRCDIM_VERTICAL_SHIFT	0
 
-- 
2.37.4

