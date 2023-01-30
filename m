Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 847DD681836
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:05:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C3610E02B;
	Mon, 30 Jan 2023 18:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4242E10E0C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675101949; x=1706637949;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tA8JZ+D9P6gzcIJLCukJLkXqGCZsjjxnWOEuwhfYFQE=;
 b=Gxi8vGw0O5DAd8G9y+PNvhtW5CxMA5CS4irJ9rQFVtYlaDBMWmc5+BJ2
 efVs/j6Vch0l/N5bke8QanuPPWjhonJNI1If1TUQhJOB49gCVcAlr/GwP
 4hXrq4DRb4JrV3qMUMrTXL1hzBiF546DdzcQug1K8rO5Zl9hASuce6gko
 hplSBda6qxDmEpUheJhfyyuHnRqDTna3GwnzFggOTcjV4OKX7+nVgZm7M
 Ujrv9LKhmjItpP5J+QyMhHQmRJ/YI5RzDGf3/w1A1pVhb+3QLuHS4+8fy
 tf1nwIWb8ZRsgv8boLVhOE5sDTUJedWMbz9kmEKO5MkPrUChx96iQw1qk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329742197"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329742197"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:05:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752918079"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752918079"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:05:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:05:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:05:34 +0200
Message-Id: <20230130180540.8972-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
References: <20230130180540.8972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/lvds: Use intel_de_rmw()
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

Replace the hand rolled rmw stuff with intel_de_rmw().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 49b6cddeb67e..86a100eabd0d 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -320,11 +320,9 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
-	intel_de_write(dev_priv, lvds_encoder->reg,
-		       intel_de_read(dev_priv, lvds_encoder->reg) | LVDS_PORT_EN);
+	intel_de_rmw(dev_priv, lvds_encoder->reg, 0, LVDS_PORT_EN);
 
-	intel_de_write(dev_priv, PP_CONTROL(0),
-		       intel_de_read(dev_priv, PP_CONTROL(0)) | PANEL_POWER_ON);
+	intel_de_rmw(dev_priv, PP_CONTROL(0), 0, PANEL_POWER_ON);
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 
 	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
@@ -342,14 +340,12 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	intel_de_write(dev_priv, PP_CONTROL(0),
-		       intel_de_read(dev_priv, PP_CONTROL(0)) & ~PANEL_POWER_ON);
+	intel_de_rmw(dev_priv, PP_CONTROL(0), PANEL_POWER_ON, 0);
 	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
 		drm_err(&dev_priv->drm,
 			"timed out waiting for panel to power off\n");
 
-	intel_de_write(dev_priv, lvds_encoder->reg,
-		       intel_de_read(dev_priv, lvds_encoder->reg) & ~LVDS_PORT_EN);
+	intel_de_rmw(dev_priv, lvds_encoder->reg, LVDS_PORT_EN, 0);
 	intel_de_posting_read(dev_priv, lvds_encoder->reg);
 }
 
-- 
2.39.1

