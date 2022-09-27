Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5945ECBE4
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 20:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2CF10E05C;
	Tue, 27 Sep 2022 18:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9DF10E04E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 18:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664301987; x=1695837987;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MoaI3Utzq0yT41ktzJFgsj2Gfa47W52pfdsv61EcJFk=;
 b=daUvotxAUn1ixvsT30XGH2smOHiTbsHnDYMti2kBV8/aChV+kL079KxX
 T57KmxA0bXx2QHXRyWBxn06YFhb+vzRIVppL0rPGCPCXlmPMBLMEvTJSA
 mvoLuHK83eufAuhHtQyoiZL9zXTq6pvNWu0IQ1/p2JoTLTQvsGWR9ynWT
 pBfvPmHy7Ooes4jXpLd+rN5vGvj7oZe6pOdhUstSxzbMfXzXGBl2A4w9j
 a4Hmnij02YDobe0dPhSF5g9p8QcOzDVwPaNJnk6/K/I4el4ZBic7XZLgB
 3OkNm/UtdTujs5hycIOtPkx8xnNN53ENhQncwm2AI1ERq3hi/TeDeRra4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="288543284"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="288543284"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 11:06:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="599270100"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="599270100"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 27 Sep 2022 11:06:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Sep 2022 21:06:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 21:06:15 +0300
Message-Id: <20220927180615.25476-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927180615.25476-1-ville.syrjala@linux.intel.com>
References: <20220927180615.25476-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Allow alternate fixed modes
 always for LVDS
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

As with eDP let's stop considering the VBTs DRRS knobs and
just always accept all otherwise suitable EDID modes. This
appears to be how Windows does it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index e6600d2f369b..e97e24f690a9 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -968,8 +968,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 			      IS_ERR(edid) ? NULL : edid);
 
 	/* Try EDID first */
-	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE);
+	intel_panel_add_edid_fixed_modes(intel_connector, true);
 
 	/* Failed to get EDID, what about VBT? */
 	if (!intel_panel_preferred_fixed_mode(intel_connector))
-- 
2.35.1

