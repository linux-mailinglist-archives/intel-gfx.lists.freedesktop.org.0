Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C528814E0
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1AD510EE69;
	Wed, 20 Mar 2024 15:48:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3CGxqrF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79DB310F460
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710949725; x=1742485725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FJl/IQwJ9lJtbkXGWsWPOXC4mfnGMsQYNVNEVxtnyqI=;
 b=Y3CGxqrFVl2kQLPCx2U3gCtfCYpSBQeg5RH5CT9Txhc0rdf39AjnhMFI
 HEuD7hvSt55UPw5qvCs33jsB/tkaAy2PnYCuQIuUN8DOUuDCut8rFbTNw
 h56LEErE+UopAL4mlZg14shFXzyMwFFMbs883NWUus2sFzHxVzgWM9CVv
 AtP7g3zrbD931+ScU4rMZuEureCVk9grr9aRu2rPoqOQX2N4a3qLO/MCe
 1sJ02Wg8FxGdBUW38985yxjqsRtWWWhXNET3yxuGHLrvCmg9k7gfge30U
 h1El5UP83Sb8cMb0ehH2X8qrt9vt9AJmW6YvAkXPkj5WrUGRuPWarDPfP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="6005537"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="6005537"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="14265031"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [CI 2/7] drm/i915/ddi: pass encoder to intel_wait_ddi_buf_active()
Date: Wed, 20 Mar 2024 17:47:59 +0200
Message-Id: <6a299c4c575a260c0ba88b2e99931d48945269be.1710949619.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710949619.git.jani.nikula@intel.com>
References: <cover.1710949619.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Pass encoder to intel_wait_ddi_buf_active(). The encoder will be more
helpful than just port in the subsequent changes.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a755b1f13d51..82132fa1bb2c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -200,9 +200,10 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 			port_name(port));
 }
 
-static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
-				      enum port port)
+static void intel_wait_ddi_buf_active(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 	int timeout_us;
 	int ret;
@@ -3354,7 +3355,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
 
-	intel_wait_ddi_buf_active(dev_priv, port);
+	intel_wait_ddi_buf_active(encoder);
 }
 
 static void intel_enable_ddi(struct intel_atomic_state *state,
@@ -3574,7 +3575,7 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 
 	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
-	intel_wait_ddi_buf_active(dev_priv, port);
+	intel_wait_ddi_buf_active(encoder);
 }
 
 static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
@@ -3624,7 +3625,7 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
 	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
 
-	intel_wait_ddi_buf_active(dev_priv, port);
+	intel_wait_ddi_buf_active(encoder);
 }
 
 static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
-- 
2.39.2

