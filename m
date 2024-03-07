Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E13B78752F7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 16:18:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB5910F495;
	Thu,  7 Mar 2024 15:18:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCbgbMC5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3E0A10F495
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 15:18:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709824696; x=1741360696;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/vXFWGb8Eoxs2Ws6/5cuC+bA7ew6k5jyFKMjhqfy07k=;
 b=eCbgbMC5vyW3moiPujmem9JcGByx4qjdGHIVRNKy7cRu9FBSAI8lLzKh
 TmZT31FrUajbEioxFtRAYUorVS8xQ/hfPzTyhoneovJU8ca1XGzuUIGdM
 IweORLrnbtV5CGkxFcaYdw1ClCJi3sDxEPDUXpx5JyoxadFt9tTW1XyR7
 MlBIQktm24zIGQ/j3gRoFvoTxR9FQA2bcf+b0fwyGUARP2uLiKGE6KdZR
 gCZMCRXEc0gwTFG5eZfaBz6qcZHGw7CWeVoNCnaDZbQpSLP2aVbS5C9yR
 fV3zia39UHsx5W8R5fxVYIgxMz9kZC/OBS9x46w03WQdKCn2A7GXkgLdN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="26969174"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="26969174"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 07:18:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827774790"
X-IronPort-AV: E=Sophos;i="6.07,211,1708416000"; d="scan'208";a="827774790"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2024 07:18:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Mar 2024 17:18:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/dsi: Use enc_to_intel_dsi()
Date: Thu,  7 Mar 2024 17:18:07 +0200
Message-ID: <20240307151810.24208-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
References: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
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

Use enc_to_intel_dsi() instead hand rolling it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 3 +--
 drivers/gpu/drm/i915/display/vlv_dsi.c | 3 +--
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ac456a2275db..79ecfc339430 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1616,8 +1616,7 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 				    struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_dsi *intel_dsi = container_of(encoder, struct intel_dsi,
-						   base);
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_connector *intel_connector = intel_dsi->attached_connector;
 	struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 9b33b8a74d64..63f4af601d15 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -273,8 +273,7 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 				    struct drm_connector_state *conn_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dsi *intel_dsi = container_of(encoder, struct intel_dsi,
-						   base);
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_connector *intel_connector = intel_dsi->attached_connector;
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int ret;
-- 
2.43.0

