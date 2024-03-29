Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA56891036
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134D110E872;
	Fri, 29 Mar 2024 01:13:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sk3nwl/S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6372B10E826
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674810; x=1743210810;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xc84olQzvuVLesD7yeyXPEtS6XaRlJADyuvuQ9LjnIs=;
 b=Sk3nwl/SPMIZOfkAJprfVc7etyFPfZ4P22vpDXrapAN1Z6RpzpxUAjHc
 NWN/3kPePFmfB/S5qXsOa8DhAuESDgRBWp+hLCFPUiqDzjIycqKaLw46J
 MCwzKMjDR/39xJkfACeIHk5kg3A6Hx9xnWSkNbyGr9N6rWORzdFLBhX/P
 L2Kf7+1u4iTSZvyOHg/+8rEri1MJImcNlEJGE2VutWTxQIssjH4C9Y6gP
 pyEIsGKGX6DoG3I3jBO+n+2dF6qu93rvhypvxc38/ykQPdA+eY4zcCGD5
 aT9xIPnLJfiBwrerN1D9NTHaSWyNHtpXcAizsafgDw43LAEq1i9l9CnUY g==;
X-CSE-ConnectionGUID: dCqj7CdjSHOHYNyD0zckEA==
X-CSE-MsgGUID: ecNIaST5SXSLqs//dtMbPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756315"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756315"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786775"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786775"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/22] drm/i915/mst: Check intel_dp_joiner_needs_dsc()
Date: Fri, 29 Mar 2024 03:12:43 +0200
Message-ID: <20240329011254.24160-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

intel_dp_mst_compute_config() is missing the "does the
joiner need DSC?" check despite claiming to have a lot
of other joiner/dsc stuff in there (albeit disabled).
Replicate the logic from the SST side.

TODO: refactor all this duplicated code!

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 6da031f9724d..1cf6241a7d53 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -532,7 +532,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
-	bool dsc_needed;
+	bool dsc_needed, joiner_needs_dsc;
 	int ret = 0;
 
 	if (pipe_config->fec_enable &&
@@ -546,7 +546,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	dsc_needed = intel_dp->force_dsc_en ||
+	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->bigjoiner_pipes);
+
+	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
 		     !intel_dp_mst_compute_config_limits(intel_dp,
 							 connector,
 							 pipe_config,
@@ -566,8 +568,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
 	/* enable compression if the mode doesn't fit available BW */
 	if (dsc_needed) {
-		drm_dbg_kms(&dev_priv->drm, "Try DSC (fallback=%s, force=%s)\n",
-			    str_yes_no(ret),
+		drm_dbg_kms(&dev_priv->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
+			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
 		if (!intel_dp_mst_dsc_source_support(pipe_config))
-- 
2.43.2

