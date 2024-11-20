Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D51D79D3AD9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9B610E741;
	Wed, 20 Nov 2024 12:43:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WlEFYxFc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EC9510E740;
 Wed, 20 Nov 2024 12:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106619; x=1763642619;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3gAIjvDLWpZoNRLENQuC2BYTnLVbUd07hY9zLFV2Hak=;
 b=WlEFYxFctpswQrUfeezrpFz7QrpX8wtvg+18gUnfJngMhhXjZGop3M8O
 47X8XIDnKV/4VIBN+nV0sh36sOCh+jYntyK27ZF7elpPAcidh/mjndD1u
 zTbyt1b6TUfurgpm+8HPnOZLQKYzLSojh7U/rkZokZFOdqgWbAUcu14WS
 OO0C9HxkUHABup0RAk+bzJjUCMWmm//M/VG1RaaUIAO88eTG0wCaZyI8n
 kFM996NDE38OqRd7Mtcnlp0h39ANgNCh6sBc+zk16JARfAL9Q4ksiQEA7
 wHdVb7HHSDBEnF8ksxFuT17kgn0Fv/snQYigUIHDdMm0UZHCSAWuRU0u/ A==;
X-CSE-ConnectionGUID: UBIS4NxQSdO9pA+jBmfS/w==
X-CSE-MsgGUID: w3jDxp8OSR6eWgPzkbWYkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42783340"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="42783340"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:38 -0800
X-CSE-ConnectionGUID: v3EqYY99Sjyo0IaE5mB76w==
X-CSE-MsgGUID: 9sFr2iwoReemsIdAupq7Nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94363477"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 03/11] drm/i915/mst: simplify mst_connector_get_hw_state()
Date: Wed, 20 Nov 2024 14:43:11 +0200
Message-Id: <eb8595ae36c6330cce1615059bd2c89a7db79668.1732106557.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732106557.git.jani.nikula@intel.com>
References: <cover.1732106557.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Use a variable for the encoder to simplify.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 56b2db02893d..b5e8db579e20 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1605,13 +1605,14 @@ static const struct drm_encoder_funcs mst_stream_encoder_funcs = {
 
 static bool mst_connector_get_hw_state(struct intel_connector *connector)
 {
-	if (intel_attached_encoder(connector) && connector->base.state->crtc) {
-		enum pipe pipe;
-		if (!intel_attached_encoder(connector)->get_hw_state(intel_attached_encoder(connector), &pipe))
-			return false;
-		return true;
-	}
-	return false;
+	/* This is the MST stream encoder set in ->pre_enable, if any */
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	enum pipe pipe;
+
+	if (!encoder || !connector->base.state->crtc)
+		return false;
+
+	return encoder->get_hw_state(encoder, &pipe);
 }
 
 static int intel_dp_mst_add_properties(struct intel_dp *intel_dp,
-- 
2.39.5

