Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AC44D3E61
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E57810E520;
	Thu, 10 Mar 2022 00:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F01BC10E520
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873289; x=1678409289;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=M5cHtQ5GW9NCmsbZazI8WChkPtbKREOH+ZdoC94GH0I=;
 b=Gvl1ITUNRuvxIVLXuM6r6tLEwaBTKTH8uiclvyFR29roTxHXxfBRRsIS
 mdsM714Qz+fwbiB58XOgwTBD8/STpUZSZufuTiBy5mRfutHWps3bBlexD
 aEbx4687bZiHGblSXfdptZOGHQKhw0iXQfBAhtDBAlfwBJfEckxChEjkZ
 5MchtuaQ6aiAkaYj7FwwP/RzL6yFWH+WG2TNGio5wmK9y5bo+9VhCmL2d
 89cvYQtdZ6P5/mQsK7VLH0gOCKpHcjcY7xpSy/79rqSdR10l+EomaXkwI
 s+J8eAwgX/4GzydPsQG6GWQPwu7Dz5Rh/sOSXuXyb8sRCxC2MViQQyBhg w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235733501"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="235733501"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="578603233"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 09 Mar 2022 16:48:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:50 +0200
Message-Id: <20220310004802.16310-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/13] drm/i915: Fix up some DRRS type checks
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

Only seamless DRRS needs the frontbuffer tracking, so check for that.
Also use != consistently instead of randomly picing < as the comparison
operator.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index fa715b8ea310..146f2cf7d01a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -152,7 +152,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (dev_priv->drrs.type < SEAMLESS_DRRS_SUPPORT) {
+	if (dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT) {
 		drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
 		return;
 	}
@@ -326,7 +326,7 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 	struct drm_crtc *crtc;
 	enum pipe pipe;
 
-	if (dev_priv->drrs.type == DRRS_NOT_SUPPORTED)
+	if (dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT)
 		return;
 
 	cancel_delayed_work(&dev_priv->drrs.work);
-- 
2.34.1

