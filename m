Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001A489907B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 23:35:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6235113570;
	Thu,  4 Apr 2024 21:35:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dQmdFtOE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28DA113583
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 21:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712266518; x=1743802518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qLdMmYl+QSgDSDJ2iyHsYSBn3RX4tDNedhMkwmCEyiU=;
 b=dQmdFtOEp9RuOnIXNr4bEj1+9y37c/wK+aj5Aigr16aDl6Go2NY7fVnd
 SUM86fYsTJ15VGbYVqipWijn2g+zLTdf2f1ouM9ySgDKfUGBFO8M+u7d4
 5zSC7JyYt4mLuLZniCmyuiQShz3yxxHc9bHU7mvgd91oehGO5ncw+4sgX
 J/YX0D7EtgFSA6Qd02fGqScas1jINhngUpBx6YjwA3N3hhVRcIYZvkMMn
 Sxetjn/hMIIPGNemQUtdOZNEgsxcwwhXOMFdU/xC9sQ6ATdsPu8bgVu4F
 EUCpvsXot5c7kzGMbOvdqd7W0h4D8tkZaQQZYrTg2qzuTCRZWiILBsL08 g==;
X-CSE-ConnectionGUID: HEwItCALQ+iWx7UkttZu0Q==
X-CSE-MsgGUID: q2sW/FsvRV2VTnUNhHQz+A==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="7710825"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; 
   d="scan'208";a="7710825"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 14:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="827790624"
X-IronPort-AV: E=Sophos;i="6.07,180,1708416000"; d="scan'208";a="827790624"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 04 Apr 2024 14:35:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Apr 2024 00:35:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vidya Srinivas <vidya.srinivas@intel.com>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 09/17] drm/i915/mst: Check intel_dp_joiner_needs_dsc()
Date: Fri,  5 Apr 2024 00:34:33 +0300
Message-ID: <20240404213441.17637-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
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

Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index da731dc503aa..aac66c2f65a1 100644
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

