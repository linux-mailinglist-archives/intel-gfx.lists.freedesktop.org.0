Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F4697C047
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 21:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9674210E1CD;
	Wed, 18 Sep 2024 19:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LsnOD2lJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0385D10E1CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 19:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726686285; x=1758222285;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wKeqX1x/T3HQA74D3TVyBxXWbU+8CHUbDiErUDeTf4c=;
 b=LsnOD2lJQm8G0uXfFLhTS9oSANNf0EU0hP1cKmZMBMle1lpD2PKbpm7j
 wCcvNiyoDLk3no8AGAamulbw8MdVBU+JkIRD/MvE/GpClCt18fDQAWsFe
 ++XqC3tc4KCzGvJ/MN0Rg1XnZ285Gzm8Nt7NDK3R0u5m81Kw90SERFkVx
 JnYq0SmxmzR258mV58LyM1mQGn8CswnLWkEq5DLjNvUYP7kRnuO3Y4SOr
 38M8nt5tk/Ch01SUTemjU45QI5lSwBg+u2lNMvrDlwGJhuL6uio1IxY8Q
 vz6A6Zf7mYpRuRKdp+wxDtM2hB1uwUny1fnqEm/7EgeMibyqw/DgWOGfF Q==;
X-CSE-ConnectionGUID: UOE2C7tMSz27YKvjgWW5RA==
X-CSE-MsgGUID: RgcQEhJGTiqTMywfMSdRvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="48147712"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="48147712"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 12:04:45 -0700
X-CSE-ConnectionGUID: pdEG5L7ITrWLJzD6xqEqXQ==
X-CSE-MsgGUID: /yCHs+wpT4iwVRCNII1ZTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69786646"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 12:04:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 22:04:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/3] drm/i915/dp: Fix colorimetry detection
Date: Wed, 18 Sep 2024 22:04:39 +0300
Message-ID: <20240918190441.29071-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
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

intel_dp_init_connector() is no place for detecting stuff via
DPCD (except perhaps for eDP). Move the colorimetry stuff into
a more appropriate place.

Cc: Jouni Högander <jouni.hogander@intel.com>
Fixes: 00076671a648 ("drm/i915/display: Move colorimetry_support from intel_psr to intel_dp")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 19f78432cc8f..f44951d8a0f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4082,6 +4082,9 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 			 drm_dp_is_branch(intel_dp->dpcd));
 	intel_init_dpcd_quirks(intel_dp, &intel_dp->desc.ident);
 
+	intel_dp->colorimetry_support =
+		intel_dp_get_colorimetry_status(intel_dp);
+
 	/*
 	 * Read the eDP display control registers.
 	 *
@@ -4195,6 +4198,9 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
 
 		intel_init_dpcd_quirks(intel_dp, &intel_dp->desc.ident);
 
+		intel_dp->colorimetry_support =
+			intel_dp_get_colorimetry_status(intel_dp);
+
 		intel_dp_update_sink_caps(intel_dp);
 	}
 
@@ -6946,9 +6952,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 				    "HDCP init failed, skipping.\n");
 	}
 
-	intel_dp->colorimetry_support =
-		intel_dp_get_colorimetry_status(intel_dp);
-
 	intel_dp->frl.is_trained = false;
 	intel_dp->frl.trained_rate_gbps = 0;
 
-- 
2.44.2

