Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E39A092AEB7
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 05:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E9B10E47B;
	Tue,  9 Jul 2024 03:26:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tir6pHkm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E688B10E47C
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2024 03:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720495575; x=1752031575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qsJtFPECpVonxR8FJznGhosm1QlA6y0p8/mxoC7Oq6o=;
 b=Tir6pHkmEpFIhiMvL7UnE3Lrps+BSJEnUbAZ67vWWnQx28Fo6JzWCpmn
 kteEzSCdy31IfJ6esh/eyf2EVVHKWhgqvduFaV7VmK6IgnwfaWcUEDLeI
 Q+jSzk5KRKBU3H7ky0sELJ2TKGBvq9ertSmezGlycvMac/k+z6g0HtuUO
 /8rQ5bhcsRYFr0ZfmVX14lvdY1Xt6RRleTS2oYq3U3ISUbyxdqVt1CPoh
 wu2WdGOx3rwbW1L3hIdTBcGbPdG6mrGTx2SeKmlO4C+lL6r3/0yHxeMbA
 VvBUjZ5nVxur4x+M1A5nGLyJG4yUsHTzzPSto7K24cF6EJlQ7RH4b6B/O g==;
X-CSE-ConnectionGUID: f9q3Smm3RpmlN/Y0g0wt0g==
X-CSE-MsgGUID: shdMdGumTr25HupG44SOGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11127"; a="21536477"
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="21536477"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:15 -0700
X-CSE-ConnectionGUID: O/SZnhgCTG69QvnniNEtjQ==
X-CSE-MsgGUID: jdwHw7zxQWCJNzc+ceR93w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,193,1716274800"; d="scan'208";a="48374203"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2024 20:26:13 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/10] drm/i915/vrr: Avoid sending PUSH when VRR TG is used
 with Fixed refresh rate
Date: Tue,  9 Jul 2024 08:56:49 +0530
Message-Id: <20240709032651.1824185-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
References: <20240709032651.1824185-1-ankit.k.nautiyal@intel.com>
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
index 43b772f91556..43ade1c24784 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -316,7 +316,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return;
 
 	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
@@ -329,7 +329,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.enable || crtc_state->vrr.fixed_rr)
 		return false;
 
 	return intel_de_read(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder)) & TRANS_PUSH_SEND;
@@ -343,8 +343,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
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

