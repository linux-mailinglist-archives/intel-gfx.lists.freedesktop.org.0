Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A8F633C13
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:09:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5E310E3DD;
	Tue, 22 Nov 2022 12:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D0D10E3DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118932; x=1700654932;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TSssrm+H7hZe4zRxV9JpaONO2NrPES3wyjfL656rTmw=;
 b=J4SqeWrTVrXOQDEqR9IrnSfn1KDLYU+k9kwVY8AxErks8KEaz8kvEGiW
 KHXwBC85rG/4ayZL5RJCYRHKJRiOqiy/JD4SKCIT7wSbkrGRvAMkaPRXy
 G5Dw8QVAZ32aVl63PqDkG7N3nRzPWIaCXrcP+TUi65IYhwCxiMrfg07cg
 HYiAV9+A9SumkTDiHd0nhF3jymLUScP8jl+zqauCGl7x+yOO3RawvWJ0G
 XDbXDQ/tWaJmXUFrL3V+gOAVSiIuyn6B9ww+0dl/Ckq/tpa7f5LHeCPg7
 olVfAhka/y0+WIXSEN+1PPTdpnfbS2DUIQipa5waGR0QOVBnHnsSwsXge Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="378057237"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="378057237"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:08:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="641395884"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="641395884"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 22 Nov 2022 04:08:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Nov 2022 14:08:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:08:23 +0200
Message-Id: <20221122120825.26338-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/dvo: Use intel_de_rmw() for DVO
 enable/disable
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

Replace the hand rolled RMW with intel_de_rmw() in the DVO
port enable/disable functions. Also switch to intel_de_posting_read()
for the posting read (though maybe it should be just be nuked...).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index a5c464c82e5c..c590a92205f0 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -185,11 +185,11 @@ static void intel_disable_dvo(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	enum port port = encoder->port;
-	u32 temp = intel_de_read(i915, DVO(port));
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, false);
-	intel_de_write(i915, DVO(port), temp & ~DVO_ENABLE);
-	intel_de_read(i915, DVO(port));
+
+	intel_de_rmw(i915, DVO(port), DVO_ENABLE, 0);
+	intel_de_posting_read(i915, DVO(port));
 }
 
 static void intel_enable_dvo(struct intel_atomic_state *state,
@@ -200,14 +200,13 @@ static void intel_enable_dvo(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 	enum port port = encoder->port;
-	u32 temp = intel_de_read(i915, DVO(port));
 
 	intel_dvo->dev.dev_ops->mode_set(&intel_dvo->dev,
 					 &pipe_config->hw.mode,
 					 &pipe_config->hw.adjusted_mode);
 
-	intel_de_write(i915, DVO(port), temp | DVO_ENABLE);
-	intel_de_read(i915, DVO(port));
+	intel_de_rmw(i915, DVO(port), 0, DVO_ENABLE);
+	intel_de_posting_read(i915, DVO(port));
 
 	intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, true);
 }
-- 
2.37.4

