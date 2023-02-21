Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 610EA69EAE9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A2D10E901;
	Tue, 21 Feb 2023 23:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B2FA10E900
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020611; x=1708556611;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wBslefqIjPRYkqEWpRQCzXU2RyeLO5fHqdOsrGNeeEo=;
 b=CkeZ3E0YIzG//tgy+zCyFN1OB+7BRkV497Pu0/4jVP/TTLhG1l+fIQTJ
 4aomvggINkum+S4vMdm3fnMOgjHL3j0TwzkVwHtH1THIU7yJu1xAlxGry
 GW2ZvKqtGlGpA1JpL2w7L1zbz8aoBI0iEfBvZRF5Y8qINxGEStUeiv66W
 DDY/0VDMDLkk00QyTwyGLWrc0/Q73Ji/EeO+nrjKDbq6bM5g/mMI6sEPV
 +ELhMDNaeWM1HwqNsqpl05WpXE0YI0ihHK1LQObEr04taE3QWq+T3rMA1
 cUPD2S+EEl8uRsdrpqPvtzHcfq72hLDNpkitXup5TlwzoFQvPb2QaPqov w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501962"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501962"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690217"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690217"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:26 +0200
Message-Id: <20230221230227.6244-22-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 21/22] drm/i915: Initialize dig_port->aux_ch
 to NONE to be sure
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

Make sure dig_port->aux_ch is trustworthy by initializing it
to NONE at the start. The encoder init will later fill in
the actual value, if appropriate.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 2 ++
 drivers/gpu/drm/i915/display/g4x_hdmi.c  | 2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 6c9b9c8ef790..c477223e40a9 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1273,8 +1273,10 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
 	if (!dig_port)
 		return false;
 
+	dig_port->aux_ch = AUX_CH_NONE;
+
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector)
 		goto err_connector_alloc;
 
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 0e61c7c2112a..7c66deb457ae 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -585,8 +585,10 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
 	if (!dig_port)
 		return;
 
+	dig_port->aux_ch = AUX_CH_NONE;
+
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector) {
 		kfree(dig_port);
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 70b161d53c17..1208bfcd4e30 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4385,8 +4385,10 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
 	if (!dig_port)
 		return;
 
+	dig_port->aux_ch = AUX_CH_NONE;
+
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
 	if (DISPLAY_VER(dev_priv) >= 13 && port >= PORT_D_XELPD) {
-- 
2.39.2

