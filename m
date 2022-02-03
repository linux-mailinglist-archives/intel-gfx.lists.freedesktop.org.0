Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B754A8BC7
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9218828E;
	Thu,  3 Feb 2022 18:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3732E10EA61
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913530; x=1675449530;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=j7O87iVZjQRu/4hs1gURpMLMXCRsNy415oP64FizTyc=;
 b=EFXydq29QybjEu00dRJwXcFhF8aCdlwq068nfQqeecG+dlNkflHYjFf7
 /Kk/xdbbeYTG4+DjmYhOMG1Aq8MM4pgxqdPQkpWP8F1nsXZNFaWEl3Wyw
 EVp8nXLxcgAYkidZsylrcxU8WhkzH6pRcDZu8/YFnP2w8oCFWOwogz2Zq
 L7mzT3V1CQNyMEHgjcZ6v364/Ppp+JJgXR6rkINKXubayGS2abTg9XE/o
 WWz2QBrnmVGgZx84yY8QDoshkSSnaOxlAf/agPLObrivQLhVijuf5oyjZ
 udFUpjEDF67RBGHZIB5705jb1QXxEw9iabAffyachGch6JGVr3NrzEgCG g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="245817430"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="245817430"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="535298437"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 03 Feb 2022 10:38:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:21 +0200
Message-Id: <20220203183823.22890-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/10] drm/i915: Use
 for_each_intel_crtc_in_pipe_mask() more
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

Convert a few hand roller for_each_intel_crtc_in_pipe_mask()
to the real thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9a7f40d17b79..6df498fc720a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4069,14 +4069,12 @@ static u8 enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv)
 	u8 master_pipes = 0, slave_pipes = 0;
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&dev_priv->drm, crtc) {
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
+					 bigjoiner_pipes(dev_priv)) {
 		enum intel_display_power_domain power_domain;
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
 
-		if ((bigjoiner_pipes(dev_priv) & BIT(pipe)) == 0)
-			continue;
-
 		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
 		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
 			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
@@ -8993,10 +8991,8 @@ static u32 intel_encoder_possible_crtcs(struct intel_encoder *encoder)
 	struct intel_crtc *crtc;
 	u32 possible_crtcs = 0;
 
-	for_each_intel_crtc(dev, crtc) {
-		if (encoder->pipe_mask & BIT(crtc->pipe))
-			possible_crtcs |= drm_crtc_mask(&crtc->base);
-	}
+	for_each_intel_crtc_in_pipe_mask(dev, crtc, encoder->pipe_mask)
+		possible_crtcs |= drm_crtc_mask(&crtc->base);
 
 	return possible_crtcs;
 }
-- 
2.34.1

