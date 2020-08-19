Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8337C249BCB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 13:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C00389B05;
	Wed, 19 Aug 2020 11:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A47889255
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 11:30:47 +0000 (UTC)
IronPort-SDR: 1dUmbcTZOfNwkk2pXWdE7aA9sRB4VplrfUiQmV4AbEKC/2k/Cy6fM3yCKBXYAAfRmBZK+AwpBq
 VKS1AjF/9elQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="135157579"
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="135157579"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2020 04:30:46 -0700
IronPort-SDR: ZwV97iaW9jOi95nSxcM6Y81dRjiZnICfNPTWlFUl+jOKRxmhZ10R9GnHq5UXorR/XbCWf7Ijh1
 GsqrFwDH4NkA==
X-IronPort-AV: E=Sophos;i="5.76,331,1592895600"; d="scan'208";a="472206414"
Received: from unknown (HELO john.iind.intel.com) ([10.223.74.105])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 19 Aug 2020 04:30:45 -0700
From: Nischal Varide <nischal.varide@intel.com>
To: intel-gfx@lists.freedesktop.org,
	nischal.varide@intel.com
Date: Wed, 19 Aug 2020 10:04:05 +0530
Message-Id: <20200819043409.26010-1-nischal.varide@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/5]
 Critical-KclockWork-Fixes-intel_atomi.c-PossibleNull
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This Patch fixes the Klocwork errors and the Current fix is avoiding
Possible Null Pointer Dereference

Signed-off-by: Nischal Varide <nischal.varide@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 630f49b7aa01..cf51f1005ec1 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -132,6 +132,9 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
 		to_intel_digital_connector_state(old_state);
 	struct drm_crtc_state *crtc_state;
 
+	if (!(new_state && new_conn_state && old_state && old_conn_state))
+		return 0;
+
 	intel_hdcp_atomic_check(conn, old_state, new_state);
 	intel_psr_atomic_check(conn, old_state, new_state);
 
@@ -192,6 +195,8 @@ intel_connector_needs_modeset(struct intel_atomic_state *state,
 
 	old_conn_state = drm_atomic_get_old_connector_state(&state->base, connector);
 	new_conn_state = drm_atomic_get_new_connector_state(&state->base, connector);
+	if (!(old_conn_state && new_conn_state))
+		return 0;
 
 	return old_conn_state->crtc != new_conn_state->crtc ||
 	       (new_conn_state->crtc &&
@@ -418,7 +423,7 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
 	 */
 
 	/* fail if required scalers > available scalers */
-	if (num_scalers_need > intel_crtc->num_scalers){
+	if (num_scalers_need > intel_crtc->num_scalers) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Too many scaling requests %d > %d\n",
 			    num_scalers_need, intel_crtc->num_scalers);
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
