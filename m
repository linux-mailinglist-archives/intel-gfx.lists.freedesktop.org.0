Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0E5638F1F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Nov 2022 18:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5896A10E77D;
	Fri, 25 Nov 2022 17:32:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C548F10E77C
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Nov 2022 17:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669397547; x=1700933547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FDzYP24LurzyfOWyxEgTMj+4h69gPl/nPJHCpkxlse4=;
 b=hNPAJhG0Z3Zv809QRutU9k0U7l2ojRCtpvkGlmL3rpRBEVcib2am6lDm
 cpF7PuCp/NEmjQmnL6zPL4RyE5w6b1ZLd+GxkycQ9JaUXn2ZytNL1vHA4
 BCNfhKSLbIGUGp8AroO9JJTuMAtykH/dYdI0XX2GDQUJPl9/+cXesMH6W
 NuH03QGJ6KBdtN7K55TFNxPlc51JDXTdZvOI3sIMP8XM4fSYemwxViRbt
 8lqXlJ76CYslji3Pvo/dxxilEQi6QBA6xFqUYapFRip0dw4tq8m0cbyyZ
 pfBTj33iOVFmbrZ1urSaHnPuE2h4MXWTRjGaECsvOpqBELUU6Z1sY+syR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="376660677"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="376660677"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2022 09:32:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10542"; a="706124345"
X-IronPort-AV: E=Sophos;i="5.96,194,1665471600"; d="scan'208";a="706124345"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 25 Nov 2022 09:32:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Nov 2022 19:32:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Nov 2022 19:31:54 +0200
Message-Id: <20221125173156.31689-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
References: <20221125173156.31689-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915: Print the PPS registers using
 consistent format
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

Use the consistent format when dumping out the PPS control/status
registers. Helps with pattern matching.

Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index d18c1c58dfcf..f6bc896338de 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -527,7 +527,8 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 	if (!edp_have_panel_power(intel_dp) && !edp_have_panel_vdd(intel_dp)) {
 		drm_WARN(&dev_priv->drm, 1,
 			 "eDP powered off while attempting aux channel communication.\n");
-		drm_dbg_kms(&dev_priv->drm, "Status 0x%08x Control 0x%08x\n",
+		drm_dbg_kms(&dev_priv->drm,
+			    "PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 			    intel_de_read(dev_priv, _pp_stat_reg(intel_dp)),
 			    intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)));
 	}
@@ -559,7 +560,7 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "mask %08x value %08x status %08x control %08x\n",
+		    "mask: 0x%08x value: 0x%08x PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 		    mask, value,
 		    intel_de_read(dev_priv, pp_stat_reg),
 		    intel_de_read(dev_priv, pp_ctrl_reg));
@@ -567,7 +568,7 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 	if (intel_de_wait_for_register(dev_priv, pp_stat_reg,
 				       mask, value, 5000))
 		drm_err(&dev_priv->drm,
-			"Panel status timeout: status %08x control %08x\n",
+			"Panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
 			intel_de_read(dev_priv, pp_stat_reg),
 			intel_de_read(dev_priv, pp_ctrl_reg));
 
-- 
2.37.4

