Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C981E7B215D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 17:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407A310E04B;
	Thu, 28 Sep 2023 15:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A977510E04B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 15:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695915117; x=1727451117;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E8hQTs0QFjk0o6aQxxfKH0gVIXIZiK2xO7RnagGGpYI=;
 b=m1q0tV84Zg2OMo+Qhq8sAZNFwAFS96xrxqZ8mnMjnVw1EPX1ikyirH4l
 aOOT/JUxPz37EKgvoDIqO1LUfzAsjCRLhFEthCGfPfA3LdNCNFZhyyKXe
 QyC/Uf2C0+MvGLkFDLTxyedZvJr8qoHs7Pq3O2L4ljOe2v+ADVE5Ogfbf
 o5IwKYrObdjgWHTL8x/l52lKiZNYpM+fsoxrA4Xsy83IN54bL8QIeE9Wu
 qqhO0+p7GVLBfBZcreuvMQpXKfnQYRsI8i/hrWAgmIr0h5hsLEmsXFNMP
 mqCHLdD6ezrbz5UGACGRP5LWnJRInIDsaORTU0GeA6Na5dAYJRA1fUHr6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="385952780"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="385952780"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 08:31:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="1080606931"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="1080606931"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga005.fm.intel.com with SMTP; 28 Sep 2023 08:31:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Sep 2023 18:31:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 18:31:08 +0300
Message-ID: <20230928153109.1976-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dsb: Re-instate DSB for LUT updates
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

With all the known issues sorted out we can start to use
DSB to load the LUTs.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 4f92fc31059f..40b04aa7d98c 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1895,9 +1895,6 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	/* FIXME DSB has issues loading LUTs, disable it for now */
-	return;
-
 	if (!crtc_state->hw.active ||
 	    intel_crtc_needs_modeset(crtc_state))
 		return;
-- 
2.41.0

