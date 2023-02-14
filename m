Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58FD0695AB4
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 08:38:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0EB10E806;
	Tue, 14 Feb 2023 07:38:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54BEC10E7F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 07:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676360305; x=1707896305;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ue98hXhYLOzTVmbyQnO8lDPWMpAnP2SwoyqjxSnpQtc=;
 b=Do6Af6C2URerdQK1vSXnyZz2hjUPo0Jf2MQn5gLX699A28R2K//3akpw
 MV2E3LoVxAjgKYCVyVrBlLnCq8Ybii7r51JLMsNypgwWFsFlFrTDeta1d
 laXZibU3ImpuXn9s2C6lJ9z3GffouH+u8pxv3ab3w/U2pb6erRRXJdiAt
 C2zhX3DPdR/vQiOg6VhornlT6rC869EIYVZ/qiIQGvSIOk60859vxuweg
 mL8sblNWRP/pQsx18NznlD6slTRkFdntkMEliGox4XhFT99C5Ppf99Fih
 wccUKrjy442kB33VszoRAVNKyYN+yEUEWYjT2FTNJxciIEqSvrhno+Sd6 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="314744170"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="314744170"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 23:38:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="669070989"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="669070989"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga002.jf.intel.com with SMTP; 13 Feb 2023 23:38:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 09:38:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 09:38:18 +0200
Message-Id: <20230214073818.20231-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-10-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/10] drm/i915: Iterate all child devs in
 intel_bios_is_port_present()
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

Instead of consulting vbt.ports[] lets just go through the
whole child device list to check whether a specific port
was declared by the VBT or not.

Note that this doesn't change anything wrt. detecting duplicate
child devices with the same port as vbt.ports[] would also always
contain exactly one of the duplicates.

v2: Include a is_port_valid() check to deal with some broken VBTs
    Mention something about duplicate port detection (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index efe33af2259b..77964618664a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3398,10 +3398,22 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
  */
 bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 {
+	const struct intel_bios_encoder_data *devdata;
+
 	if (WARN_ON(!has_ddi_port_info(i915)))
 		return true;
 
-	return i915->display.vbt.ports[port];
+	if (!is_port_valid(i915, port))
+		return false;
+
+	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node) {
+		const struct child_device_config *child = &devdata->child;
+
+		if (dvo_port_to_port(i915, child->dvo_port) == port)
+			return true;
+	}
+
+	return false;
 }
 
 /**
-- 
2.39.1

