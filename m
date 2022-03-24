Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 912D04E6220
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Mar 2022 12:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30ACE10E88E;
	Thu, 24 Mar 2022 11:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81BD610E88E
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Mar 2022 11:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648120111; x=1679656111;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CTjdzm6P26+jI1aTP0w7PMYlGjKVcF313Jv07fu2oZE=;
 b=Q+Oa+zhNfQr3wtegui+4fOmb3cVEYdC6ZIOKthf0/aBAll/GPnKAu9Y1
 HMgcAbi7qdUJxOe7iciSbRn1OTJU5aQz6r201FxrzyiXcoR2gAalVAiAs
 fQNxbe3gUpw5KVfTgpAYnTGsvp/y26Mfc1cFHN+GNIq4TExyNuOZohZo7
 ha9mdKT7+1hboMsgWWlm+Db5eZEApdZ9JYyEYHQE0KGPqLA06A31FADMq
 NDmWfhsesW0BZEjfQioefe6q4t6WabB5aRvmJFFyxinncav2Z7Hd+bCYT
 JrHJ/6cVnIeWHCvZdcrnR6NtoOIyYZKWHKI7QL/Teq+w4UvS52/LCWezE Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258536459"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="258536459"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 04:08:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="516130268"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orsmga002.jf.intel.com with ESMTP; 24 Mar 2022 04:08:29 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Mar 2022 16:39:59 +0530
Message-Id: <20220324110959.1857869-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v3] drm/i915/display: Extend DP HDR support to hsw+
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

HSW+ platforms are able to send out HDR Metadata SDP DIP
packet as GMP. Hence, extending the support for HDR on DP
encoders for the same.

v2: Limited to non eDP ports on hsw/bdw and removed it for
lspcon as it is done separately (suggested by Ville)

v3: Added helper and limited eDP restriction to port A (Ville)

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5389
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9e19165fd175..c993d82c7ec9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4913,6 +4913,26 @@ bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum port port)
 	return intel_bios_is_port_edp(dev_priv, port);
 }
 
+static bool
+has_gamut_metadata_dip(struct drm_i915_private *dev_priv,
+		       struct intel_dp *intel_dp, enum port port)
+{
+	if (intel_bios_is_lspcon_present(dev_priv, port))
+		return false;
+
+	if (DISPLAY_VER(dev_priv) >= 10 && !IS_GEMINILAKE(dev_priv))
+		return true;
+
+	if (port == PORT_A && intel_dp_is_edp(intel_dp))
+		return false;
+
+	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv) ||
+	    IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 9)
+		return true;
+
+	return false;
+}
+
 static void
 intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connector)
 {
@@ -4939,7 +4959,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		intel_attach_dp_colorspace_property(connector);
 	}
 
-	if (IS_GEMINILAKE(dev_priv) || DISPLAY_VER(dev_priv) >= 11)
+	if (has_gamut_metadata_dip(dev_priv, intel_dp, port))
 		drm_object_attach_property(&connector->base,
 					   connector->dev->mode_config.hdr_output_metadata_property,
 					   0);
-- 
2.25.1

