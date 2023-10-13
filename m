Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6F87C874F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 16:02:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62E0B10E056;
	Fri, 13 Oct 2023 14:02:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 981B610E04E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 14:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697205743; x=1728741743;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H8kq3T7Ripd/nSupwBMvcN4HJwyBnlfUtQbUg5fX0ZE=;
 b=eUUWTwVbHMwDgmWTtQNGXg1OI+6uQkgSs7bwQVARya/fmnER23znaNld
 ygl9NuPJQnAgBkysBXHycbVS07K70mVcwSZLUCCD7hGmg4WgfkiJyXq5i
 doKGsG+AYHpEHYCeNdSM5LWOSWksRjtNcigQcDpq7AFRJ7wFfU01QIeAH
 7lgcnDKMIhpUSCHpl3y/jEDtvpa+jVnxXQZm04Se4n4PYQ+czpJMS57Vq
 759841Z21LIf7qEQs/6v4SzN3zgtIgplMP9EYy5kArYRSqHywa+ylzzAo
 QuCt4fo1MzciVzYXaqe2G3e4xpAFWNOKuebZPuzahfKPfOX7U/FPdSapL g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="365446042"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="365446042"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 07:02:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="789875351"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="789875351"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 13 Oct 2023 07:02:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Oct 2023 17:02:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 17:02:14 +0300
Message-ID: <20231013140214.1713-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/bios: Clamp VBT HDMI level shift on BDW
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

Apparently some BDW machines (eg. HP Pavilion 15-ab) shipped with
a VBT inherited from some earlier HSW model. On HSW the HDMI level
shift value could go up to 11, whereas on BDW the maximum value is
9.

The DDI code does clamp the bogus value, but it does so with
a WARN which we don't really want. To avoid that let's just sanitize
the bogus VBT HDMI level shift value ahead of time for all BDW machines.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9461
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4e8f1e91bb08..8f83f0ead27f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2473,6 +2473,27 @@ static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
 	devdata->child.device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
 }
 
+static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
+				      enum port port)
+{
+	struct drm_i915_private *i915 = devdata->i915;
+
+	if (!intel_bios_encoder_supports_dvi(devdata))
+		return;
+
+	/*
+	 * Some BDW machines (eg. HP Pavilion 15-ab) shipped
+	 * with a HSW VBT where the level shifter value goes
+	 * up to 11, whereas the BDW max is 9.
+	 */
+	if (IS_BROADWELL(i915) && devdata->child.hdmi_level_shifter_value > 9) {
+		drm_dbg_kms(&i915->drm, "Bogus port %c VBT HDMI level shift %d, adjusting to %d\n",
+			    port_name(port), devdata->child.hdmi_level_shifter_value, 9);
+
+		devdata->child.hdmi_level_shifter_value = 9;
+	}
+}
+
 static bool
 intel_bios_encoder_supports_crt(const struct intel_bios_encoder_data *devdata)
 {
@@ -2652,6 +2673,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 	}
 
 	sanitize_device_type(devdata, port);
+	sanitize_hdmi_level_shift(devdata, port);
 }
 
 static bool has_ddi_port_info(struct drm_i915_private *i915)
-- 
2.41.0

