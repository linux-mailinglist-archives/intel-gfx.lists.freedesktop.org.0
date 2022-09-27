Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A635ECBE3
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 20:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D51110E04F;
	Tue, 27 Sep 2022 18:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8BE10E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 18:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664301984; x=1695837984;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6Cd5AUjBCf5O6vPsantMK990hfuWBk6j5gPcPyECkHo=;
 b=bcwf7L3rx1WYiCD9vmO5t6t3njhbXu4FqXFZVPHSKngOzuo9N6ZUHuV5
 /+tYbCccUEQMkbhtRI0M8GLjtjoiTmnYNt1L5dskYVW383/BJo3PyUaJz
 0ml/V4UDqHeWcAsqtK/4ChskSR3u0lR21JkDvTrOdDnvwjRHnblYqQcGr
 HFOdAeEr8yN42gxRRix1+U3jsCoUI13kjcIAhxF2GuYcvxRrDfFMVsaAP
 2RL9xpLQXq84km+0J+r7krTUolmhiNW9vgXxlmKj8FRBSxOYWVtG/faI+
 Dq6M1ApP8VvzU3MaOr3d3vrWhk6CLRWE/jBa0T3Ec/sa91Bda67J/Lznh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="288543268"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="288543268"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 11:06:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="599270072"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="599270072"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 27 Sep 2022 11:06:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Sep 2022 21:06:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 21:06:14 +0300
Message-Id: <20220927180615.25476-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927180615.25476-1-ville.syrjala@linux.intel.com>
References: <20220927180615.25476-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Allow alternate fixed modes
 always for eDP
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

Stop considering VBT's static DRRS support when deciding whether
to use alternate fixed modes or not. It looks like Windows more
or less just uses that to decide whether to automagically switch
refresh rates on AC<->batter changes, or perhaps whether to
even expose a control for that in some UI thing. Either way it
seems happy to always use all EDID modes, and I guess the
DRRS/VRR stuff more or less adjust how said modes get
actually used.

Let's do the same and just accept all the suitable looking
modes from EDID, whether we have DRRS or VRR.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6323
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6484
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c368caa23291..70b06806ec0d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5292,9 +5292,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_bios_init_panel(dev_priv, &intel_connector->panel,
 			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
 
-	intel_panel_add_edid_fixed_modes(intel_connector,
-					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE ||
-					 intel_vrr_is_capable(intel_connector));
+	intel_panel_add_edid_fixed_modes(intel_connector, true);
 
 	/* MSO requires information from the EDID */
 	intel_edp_mso_init(intel_dp);
-- 
2.35.1

