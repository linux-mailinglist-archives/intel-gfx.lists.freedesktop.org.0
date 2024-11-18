Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD239D1394
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:49:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7850B10E4F0;
	Mon, 18 Nov 2024 14:49:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IZCJkiNK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B0B10E4F8;
 Mon, 18 Nov 2024 14:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941367; x=1763477367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qFtxLREP4PHlLcVxdffxJZjY9yabk7pIEIuAMDIhess=;
 b=IZCJkiNKPz+dfwcUh20M4vZmN4hlk206zWmbwL/LlDBvOwLvDkNYGN0X
 72+LpL7D+37HMz5OqXMvRg6LFTdtuSapIwKQ7et8cGhfY3n8JFvm4gZwO
 3R2tarsglr0RjkEqjfAL/a4zyStG0t83APs0WkKKbG+SCPINXAs878CE2
 EMTAX19zV4J/pkBvtHSijm38Ja5f0Vcgxnixq4eeReV8+TquZp3XTAMkG
 KXSg/ZL6dlZD+qfxyb/2zXRcecpvvN8seQVB5kooHQvkOjM+6hM8zQpPy
 acxjdVxbwvaWg7So8FwYXICWczAXKwYeffX6ATL09AJxfHuaZpvWHph3P Q==;
X-CSE-ConnectionGUID: KJ3wtaoAScu4I94TvTFEAw==
X-CSE-MsgGUID: JeYxmCCARymv2rgyEa66mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42414883"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="42414883"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:27 -0800
X-CSE-ConnectionGUID: U2sHNBwKT8Ob5Y326beTxQ==
X-CSE-MsgGUID: e5uQKTi4T4mo47KPtSB4Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="120184696"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/11] drm/i915/mst: simplify mst_connector_get_hw_state()
Date: Mon, 18 Nov 2024 16:48:58 +0200
Message-Id: <0a4fba22fa5464cf6c6f95a03ff62877bccf13a5.1731941270.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b2d2bfbce0a5..5750c0f024dd 100644
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

