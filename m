Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B52F975347
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 15:12:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1341B10EA0F;
	Wed, 11 Sep 2024 13:12:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGcfdGcu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E5710EA0F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 13:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726060329; x=1757596329;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0XZf9G4Tcv/f5i1yE/74C38wutMtrV7xg98gtq3UgWs=;
 b=XGcfdGculSdZoFo0tpMbOsZefFFCJokNkOZwXHr0qYjM1OlWK8Z+qPpS
 tLdrmT8s8v3pJvN1ovlsKTboxaFTFcJ2aAv/o6cSCsn+eJmHCGMarcHuM
 oaJzeOKEkWEIV+BshUM786imcZmyPU3/5yAk2r0XEMKX/koo4JLYx5G9U
 EXq+6zS7nIC5vhuYw1ZOMTcfHLStJ6MUD5vnXHUF6/hFPz0fKUdaaY5+H
 1OL8Rkhs8JNiZaUauqypwL9ZGfwXSKzoHItt6VuYKLguXlQImjscbuvlA
 ExdEsiORMzphe5wUHpwd89zjQTOjJwn870IeyezRJFR9gEgDLICb2NqOt Q==;
X-CSE-ConnectionGUID: u9nUsH+FRi2n8FXyFE614A==
X-CSE-MsgGUID: ww57ntDCTP+kqa8WjItPUg==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="36244318"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="36244318"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:08 -0700
X-CSE-ConnectionGUID: 49HVbf/QTLSIZGE6AjwBPQ==
X-CSE-MsgGUID: fvNUDFDHRs+56oc5lxmbbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67380791"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 06:12:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 01/19] drm/i915/display: Check whether platform supports joiner
Date: Wed, 11 Sep 2024 18:43:31 +0530
Message-ID: <20240911131349.933814-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
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

Add a helper to check if platform supports joiner. Use it before readout
for joiner stuff and to calculate the maxdotclock supported.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b4ec9bf12aa7..486bade9e927 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3536,14 +3536,23 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
+static bool intel_display_can_use_joiner(struct intel_display *display)
+{
+	return (DISPLAY_VER(display) >= 11);
+}
+
 static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 				 u8 *primary_pipes, u8 *secondary_pipes)
 {
+	struct intel_display *display = to_intel_display(&dev_priv->drm);
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
+	if (!intel_display_can_use_joiner(display))
+		return;
+
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
 					 joiner_pipes(dev_priv)) {
 		enum intel_display_power_domain power_domain;
@@ -7961,10 +7970,11 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 static int max_dotclock(struct drm_i915_private *i915)
 {
+	struct intel_display *display = to_intel_display(&i915->drm);
 	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
 
 	/* icl+ might use joiner */
-	if (DISPLAY_VER(i915) >= 11)
+	if (intel_display_can_use_joiner(display))
 		max_dotclock *= 2;
 
 	return max_dotclock;
-- 
2.45.2

