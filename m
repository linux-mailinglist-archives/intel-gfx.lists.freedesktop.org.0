Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A516EF8C2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 256AE10E8A8;
	Wed, 26 Apr 2023 16:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9341B10E252
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682527992; x=1714063992;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oUwBV6zzu5Y8NXi5DnHPoV54BjgYmBeGH0ZUAlFQiyk=;
 b=BHdqlfpuOAndBMKXIoNpXgFZg3kRQORDN0lFElvJKYsaWuD9N1vtRpXf
 NnkJoGzkkhn1wqP62HYtdf9qCOi2cMxt/UyeTDznDUaknWZkJZsRvCCo3
 gHtLChY4JlysMwrJSJVZ7AAoEfec+08n2zS/V8+lrMqOb+oLnfq7ZZecY
 fkn0uANF2FeRblpTV2uLn8rjYJKC/wZpLt5TlgCns2TiGIAaawzq2uSnV
 gFmnYTM8cXPeZwD9JQoUSKg+Nna9j6BV9ffj+cY34cPVcdR6ZhNRfh/KM
 mQzKArtKCID30IdqD+aEE3PKXAieF67LzlkcWzb8EOCPPnUZO7cUeyE/V A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493470"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493470"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402719"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402719"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:11 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:52:56 +0300
Message-Id: <20230426165305.2049341-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/11] drm/i915: Make the CRTC wrt. CSC state
 consistent during sanitize-disabling
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

intel_crtc_free_hw_state() frees all the Intel specific CSC blobs in the
CRTC state, but the next memset() will only clear the corresponding
pointers for the ones stored in intel_crtc_state:hw. Clear the ones
stored in intel_crtc_state as well. Also sync the UAPI state with the HW
state after the HW state was reset. This will reset the uapi.active
flag as well, so no need to do this separately. Syncing the state will
create a new umode blob, so move deleting the blob after the sync call.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index eefa4018dc0c2..57d087de654f8 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -30,6 +30,8 @@
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
+static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state);
+
 static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 					struct drm_modeset_acquire_ctx *ctx)
 {
@@ -88,13 +90,17 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	crtc->active = false;
 	crtc->base.enabled = false;
 
-	drm_WARN_ON(&i915->drm,
-		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
-	crtc_state->uapi.active = false;
 	crtc_state->uapi.connector_mask = 0;
 	crtc_state->uapi.encoder_mask = 0;
+
 	intel_crtc_free_hw_state(crtc_state);
 	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
+	crtc_state->pre_csc_lut = NULL;
+	crtc_state->post_csc_lut = NULL;
+	intel_crtc_copy_hw_to_uapi_state(crtc_state);
+
+	drm_WARN_ON(&i915->drm,
+		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
 
 	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
 		encoder->base.crtc = NULL;
-- 
2.37.2

