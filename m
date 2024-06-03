Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7EB8D8356
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 15:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D20BE10E3BD;
	Mon,  3 Jun 2024 13:03:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dBpzStfG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A7F10E3B1
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 13:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717419783; x=1748955783;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hJFvxzkL6eUQEPstRnsKkzzeSme+gK+9hYRiXvoqf+M=;
 b=dBpzStfGDRKDy5Jk5b9Zf/o82rzXqPMZbpIUpwiyTpJrsiYC60JkU2us
 6lbMHbVqLBvpxiSw4Hx4+i9273cSyRw5pbM+nXDXuEduoFUB87BYOCrEw
 stNHPgOVhc18LNen2iEvvhpqMDrVPeBjD7BqiRbg1twxt38R3pOt4Prbg
 n9BoCIbEbK/WozGNyIwZIB7ecFWUvXNmsa87TAJdqDTsFAIHtKSILczLs
 /w0ylYOiixYfPzH45OpabvDSQOgrNHMSsfSdKNcWgES7XOraC816UA4LV
 P3PoPErXYK8l5riq9RfWK8ybb+pl2WxaXPW3WKOdqaT3vLWpb+utTw0v9 A==;
X-CSE-ConnectionGUID: mhACkMOMQR20jfibltT/yw==
X-CSE-MsgGUID: FGMfRhDhTIuw5E4B4oXwuw==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="11873390"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="11873390"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:03:02 -0700
X-CSE-ConnectionGUID: S+3qWnD8R4WXJc/BmpJIFQ==
X-CSE-MsgGUID: ra4pwk4GRJmw8P/SYrzSLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="41960021"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 06:03:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 4/5] drm/i915/vrr: Avoid sending PUSH when VRR TG is used with
 Fixed refresh rate
Date: Mon,  3 Jun 2024 18:33:18 +0530
Message-Id: <20240603130319.1594872-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
References: <20240603130319.1594872-1-ankit.k.nautiyal@intel.com>
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
index 1a9e10fb396d..406838df2d7a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -234,7 +234,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return;
 
 	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
@@ -247,7 +247,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return false;
 
 	return intel_de_read(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -261,8 +261,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
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

