Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0C6809166
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 20:34:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6787910E965;
	Thu,  7 Dec 2023 19:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5C7110E09D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 19:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701977687; x=1733513687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x7JwbeZlmAnu+J4sqBwbzQ1kQYquGiO7GpVgmC4HGRY=;
 b=VlImI32Fs13mHnxXTStuwx8Rxa8agdb2/jUslHFIyI7fMQR5+sQ3HzJu
 Tj8nrR4ifi1r8dEFa9U3dpmJTtroh2r8YA+a7+INV6Vtga4BNg16+KWxG
 P3PbuHXKqhGWVNubZjBaRpGVG3WULNHONhbPxdUAW20QZFRROkjo6Du/S
 +k6xoDgURMRBOVqAL1wqWBjeTp20C/u1jtfC5unH12ZP82C1TR97S5Qnt
 I6mBrj6kjvfeNxqxmTKakvHTvyfLbf4+KPZkNelCCWbXykC0hsKIkMrgf
 vxRj6sEFycQoUDW7j6f9eWqn+QEoL9Df8VlPUb93LlyyaPxC7TOalZHOa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384694335"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="384694335"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 11:34:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="765213022"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="765213022"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Dec 2023 11:34:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Dec 2023 21:34:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/8] drm/i915: Fix intel_atomic_setup_scalers() plane_state
 handling
Date: Thu,  7 Dec 2023 21:34:34 +0200
Message-ID: <20231207193441.20206-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
References: <20231207193441.20206-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Since the plane_state variable is declared outside the scaler_users
loop in intel_atomic_setup_scalers(), and it's never reset back to
NULL inside the loop we may end up calling intel_atomic_setup_scaler()
with a non-NULL plane state for the pipe scaling case. That is bad
because intel_atomic_setup_scaler() determines whether we are doing
plane scaling or pipe scaling based on plane_state!=NULL. The end
result is that we may miscalculate the scaler mode for pipe scaling.

The hardware becomes somewhat upset if we end up in this situation
when scanning out a planar format on a SDR plane. We end up
programming the pipe scaler into planar mode as well, and the
result is a screenfull of garbage.

Fix the situation by making sure we pass the correct plane_state==NULL
when calculating the scaler mode for pipe scaling.

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 1e7c97243fcf..8a934bada624 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -504,7 +504,6 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 {
 	struct drm_plane *plane = NULL;
 	struct intel_plane *intel_plane;
-	struct intel_plane_state *plane_state = NULL;
 	struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 	struct drm_atomic_state *drm_state = crtc_state->uapi.state;
@@ -536,6 +535,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 
 	/* walkthrough scaler_users bits and start assigning scalers */
 	for (i = 0; i < sizeof(scaler_state->scaler_users) * 8; i++) {
+		struct intel_plane_state *plane_state = NULL;
 		int *scaler_id;
 		const char *name;
 		int idx, ret;
-- 
2.41.0

