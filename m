Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 091AC743F54
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 18:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBDE310E4A4;
	Fri, 30 Jun 2023 16:01:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF69210E4A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 16:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688140864; x=1719676864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PPyg7punQUtFzkjH9YRHMJq8dbePieLK1oBmRWYvl8o=;
 b=I2uMv+Ld65d0s06f43c8RD+e3I7ZYqW66dJSdn03xfMjry2uWB1zXlTt
 jwFNPUmpe2GCUoiZhqwcENeDo7MQUmLnvJMGNSd+kBs0Fse+4m+qm6Jl2
 3vSObFcKWLMsBati6FFDvq3rvxiKodUEnX1ab6KAjhIm/UFMbnY3l60FV
 ep6Ddhhh42KpqO4jxmrcLY2lpxD9hU/4Adgn9mINaJ9FewKjjhVaHus5J
 BzaMS9hdjFCLVkJZecZtXMISGnCHdPLTUsR4IGXdrCASulID5KISy6YNM
 Yd/qlKt+huzIv3AY92O2n1waWOD10yn4FctubQseE8TtnDa8WhibsnKwz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="365912563"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="365912563"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 08:58:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="695059401"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="695059401"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 30 Jun 2023 08:58:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Jun 2023 18:58:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 18:58:41 +0300
Message-Id: <20230630155846.29931-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/6] drm/i915: Initialize dig_port->aux_ch to
 NONE to be sure
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

Make sure dig_port->aux_ch is trustworthy by initializing it
to NONE (-1) at the start. The encoder init will later fill in
the actual value, if appropriate.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 2 ++
 drivers/gpu/drm/i915/display/g4x_hdmi.c  | 2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index c58a3f249a01..0cab5992e3da 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1273,6 +1273,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	if (!dig_port)
 		return false;
 
+	dig_port->aux_ch = AUX_CH_NONE;
+
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector)
 		goto err_connector_alloc;
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 8c71e3ede680..c1fd13bdc9d2 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -698,6 +698,8 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	if (!dig_port)
 		return;
 
+	dig_port->aux_ch = AUX_CH_NONE;
+
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector) {
 		kfree(dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 61722556bb47..6cb24a472a9b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4747,6 +4747,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	if (!dig_port)
 		return;
 
+	dig_port->aux_ch = AUX_CH_NONE;
+
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
-- 
2.39.3

