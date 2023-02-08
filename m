Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA1468E5AC
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D06510E67E;
	Wed,  8 Feb 2023 01:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0125E10E67E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821352; x=1707357352;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4rYwp06RVuS23h4Esed2G18bNo6EPx8EO+40mLblDmc=;
 b=AaRNtVgGgmbWd+wf6+qSGltdx0tffKd1bGzOBDsLtTur7lJcGZjEvF81
 OzcHtomAQExtjxm0kG7CrXbFRyC4oW8EbTq4b3Roy7xdBzMznzuOBYRMJ
 TkDRfMa+Dq/os6n5fQoY++P//dO/hMJprBzx1aqybwESanntx7Q0+G9xf
 3c734wv4cZz/gDWvoCwcpS0SJrJ/DMCmaVKP58ICa0VRw8UgRtB75XAFG
 IqKiVgWlCg9xyIXTvIlDabuO5EYe+SBUgAkgD1izs1rENBJqwsvDOkGht
 yFUX9+yxTApXjrOlnGIvSlqGcN6CDdXXMtw2IKAYa/H5k0FGNW97Hpfgo A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974374"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974374"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672723"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672723"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:55:07 +0200
Message-Id: <20230208015508.24824-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/10] drm/i915: Iterate all child devs in
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Instead of consulting vbt.ports[] lets just go through the
whole child device list to check whether a specific port
was declared by the VBT or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index efe33af2259b..1af175b48ae6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3398,10 +3398,19 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
  */
 bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 {
+	const struct intel_bios_encoder_data *devdata;
+
 	if (WARN_ON(!has_ddi_port_info(i915)))
 		return true;
 
-	return i915->display.vbt.ports[port];
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

