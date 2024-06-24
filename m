Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1CF914217
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 07:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9181410E351;
	Mon, 24 Jun 2024 05:35:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OMswy5BA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9748110E350
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 05:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719207347; x=1750743347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=luMB6rTqSA/eqaEUsMB7/ti0qD2/uEpK3nAbw102V0k=;
 b=OMswy5BAswgewm8QbzRalxc4ufz855bt27NxsgR5G3d1n9MbOmO6jOaK
 SuFBMBMODbabSK1/FR8eSLeW7ruAPrOYt8JHwUjZvjbyKD5H5XrCoxGVv
 YDQy+PirA2K3wqjfR46BxqKfQRK6VPL5JAAFGu0z0LU/5nx7qZ78C9MKI
 usNS1Lbg2w4OTGIdQ+cB2PRCsJo6pcBLJN2FH9Zz0BeMiXxN57VljMgXt
 IF9N0n9Y1Jz5E1kj+LcEvHZIdSGcrhYNxL/BEjnITemBkSSVkA8oRIcFU
 yjKir+HGs8FZCMhiy5LWJVGP072YhVmTO7t2YkLcOQSVQ3NWPxnne3Twh w==;
X-CSE-ConnectionGUID: c8mOBpBTSkG3yKlB0oixXw==
X-CSE-MsgGUID: 37nO16I1QmaMgNfvaOtdgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="27567244"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="27567244"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:47 -0700
X-CSE-ConnectionGUID: DJEtpJAOTWiTMS4nzVOBCw==
X-CSE-MsgGUID: xrDFVH8xSbClHc4lOGusrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="42994206"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:35:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 5/9] drm/i915/vrr: Avoid sending PUSH when VRR TG is used with
 Fixed refresh rate
Date: Mon, 24 Jun 2024 11:05:56 +0530
Message-Id: <20240624053600.3803116-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
References: <20240624053600.3803116-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

As per Bspec:68925: Push enable must be set if not configuring for a
fixed refresh rate (i.e Vmin == Flipline == Vmax is not true).

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6736e8a44faa..a771706d80df 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -317,7 +317,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return;
 
 	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
@@ -330,7 +330,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return false;
 
 	return intel_de_read(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -344,8 +344,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->vrr.enable)
 		return;
 
-	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
-		       TRANS_PUSH_EN);
+	if (!crtc_state->vrr.fixed_rr)
+		intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
+			       TRANS_PUSH_EN);
 
 	if (HAS_AS_SDP(dev_priv))
 		intel_de_write(dev_priv,
-- 
2.40.1

