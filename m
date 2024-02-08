Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA73F84E3D4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B58F10E8AC;
	Thu,  8 Feb 2024 15:17:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gDGl0thS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D48910E8AC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405471; x=1738941471;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OhbDn6shZdnabrMshXBJtddVbiyz/fMUFGSQVqB7+bY=;
 b=gDGl0thSua/Me6Vcvg295i8JRYhloSwBgB8sUhLczZarDvTHkjH8YaLU
 g33u+MyFsF+LffCfTpj7Xn5fejyjN34A/qgqeUtKl7zPXfHBnpuy8WGp/
 wtqxnSa72dNWdBvCaUxqQakThlP3FJvfe8qpOETEawyy8Jt8TfQehKDq0
 Wt5Vz1Rg8qxZGqY+KCkyco/MiYYKboQ9LHH/XAfV031xtlCsLEfSeu7PN
 6DOHm1V+9En2t5ZIyMpCDiL6QOs/SoKhUPjxwzTNhLlx9YWHOXwQR3AEB
 z6vuKRjT+bFMnf8H2AZzUmNVpF36Sarve8CEddVo5bQ3qz+lqXwZhjN1u Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219263"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219263"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863665"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863665"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/13] drm/i915/wm: Pass the whole i916 to
 intel_get_cxsr_latency()
Date: Thu,  8 Feb 2024 17:17:16 +0200
Message-ID: <20240208151720.7866-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Just pass the whole i915 to intel_get_cxsr_latency() instead
of having each caller dig out bits and pieces.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 27 ++++++++++----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 11ca9572e8b3..e6275ab14320 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -70,22 +70,21 @@ static const struct cxsr_latency cxsr_latency_table[] = {
 	{0, 1, 400, 800, 6042, 36042, 6584, 36584},    /* DDR3-800 SC */
 };
 
-static const struct cxsr_latency *intel_get_cxsr_latency(bool is_desktop,
-							 bool is_ddr3,
-							 int fsb,
-							 int mem)
+static const struct cxsr_latency *intel_get_cxsr_latency(struct drm_i915_private *i915)
 {
-	const struct cxsr_latency *latency;
 	int i;
 
-	if (fsb == 0 || mem == 0)
+	if (i915->fsb_freq == 0 || i915->mem_freq == 0)
 		return NULL;
 
 	for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
-		latency = &cxsr_latency_table[i];
+		const struct cxsr_latency *latency = &cxsr_latency_table[i];
+		bool is_desktop = !IS_MOBILE(i915);
+
 		if (is_desktop == latency->is_desktop &&
-		    is_ddr3 == latency->is_ddr3 &&
-		    fsb == latency->fsb_freq && mem == latency->mem_freq)
+		    i915->is_ddr3 == latency->is_ddr3 &&
+		    i915->fsb_freq == latency->fsb_freq &&
+		    i915->mem_freq == latency->mem_freq)
 			return latency;
 	}
 
@@ -634,10 +633,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 	u32 reg;
 	unsigned int wm;
 
-	latency = intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
-					 dev_priv->is_ddr3,
-					 dev_priv->fsb_freq,
-					 dev_priv->mem_freq);
+	latency = intel_get_cxsr_latency(dev_priv);
 	if (!latency) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Unknown FSB/MEM found, disable CxSR\n");
@@ -4016,10 +4012,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
 		g4x_setup_wm_latency(dev_priv);
 		dev_priv->display.funcs.wm = &g4x_wm_funcs;
 	} else if (IS_PINEVIEW(dev_priv)) {
-		if (!intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
-					    dev_priv->is_ddr3,
-					    dev_priv->fsb_freq,
-					    dev_priv->mem_freq)) {
+		if (!intel_get_cxsr_latency(dev_priv)) {
 			drm_info(&dev_priv->drm,
 				 "failed to find known CxSR latency "
 				 "(found ddr%s fsb freq %d, mem freq %d), "
-- 
2.43.0

