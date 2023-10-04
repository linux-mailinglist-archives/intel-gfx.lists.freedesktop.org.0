Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEBB7B8451
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 17:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E7310E390;
	Wed,  4 Oct 2023 15:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932B710E390
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 15:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696434997; x=1727970997;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FVoPEe1ZgvPRKOhv4gXCuEyeC56QbRt+8vJKAIGguEk=;
 b=fzn62BJLdJP+VCrgKX/PAVQF8QvW19gS31DgMxghQ7bNStoIgIJyX3lu
 fFPl7VqZJSRlc7VZOrR8jgwSGqQpGiJPrctt6LUb8EcSZJvHA9PFws0pb
 SL5LE/DoGJTbrf/X9/vW3yM6hsmFPtP2TsM4h+LeatnLY66xQw0aEqLY8
 xDycOpLoEKa6s25VDdEXelrEU9yqOt7o37bZlp5XrGCyFfxpwkfrl0KOh
 AwPgJ1pRXWJMXkFNY5oYmHgn+1lnr5BJ2PVVcIMYX4dZP+61wz6WhCy7B
 6nPvkZ2CNvHScTELb7B7t7hx8C5ZKtYNsEx3BbFABCqtdv3MlAt1IrxFN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363483807"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="363483807"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 08:56:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="867441224"
X-IronPort-AV: E=Sophos;i="6.03,200,1694761200"; d="scan'208";a="867441224"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 04 Oct 2023 08:56:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Oct 2023 18:56:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Oct 2023 18:56:04 +0300
Message-ID: <20231004155607.7719-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
References: <20231004155607.7719-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/12] drm/i915: Constify remainder of the state
 checker
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

Mark the remaining crtc states used by the state checker as const.
There is no reason to ever mutate them here.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_modeset_verify.c    | 14 +++++++-------
 .../gpu/drm/i915/display/intel_modeset_verify.h    |  4 ++--
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index b876ec34b1a3..9ac9c23782cc 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -23,8 +23,8 @@
  * Cross check the actual hw state with our own modeset state tracking (and its
  * internal consistency).
  */
-static void intel_connector_verify_state(struct intel_crtc_state *crtc_state,
-					 struct drm_connector_state *conn_state)
+static void intel_connector_verify_state(const struct intel_crtc_state *crtc_state,
+					 const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
@@ -66,12 +66,12 @@ verify_connector_state(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
 {
 	struct drm_connector *connector;
-	struct drm_connector_state *new_conn_state;
+	const struct drm_connector_state *new_conn_state;
 	int i;
 
 	for_each_new_connector_in_state(&state->base, connector, new_conn_state, i) {
 		struct drm_encoder *encoder = connector->encoder;
-		struct intel_crtc_state *crtc_state = NULL;
+		const struct intel_crtc_state *crtc_state = NULL;
 
 		if (new_conn_state->crtc != &crtc->base)
 			continue;
@@ -110,7 +110,7 @@ verify_encoder_state(struct drm_i915_private *dev_priv, struct intel_atomic_stat
 {
 	struct intel_encoder *encoder;
 	struct drm_connector *connector;
-	struct drm_connector_state *old_conn_state, *new_conn_state;
+	const struct drm_connector_state *old_conn_state, *new_conn_state;
 	int i;
 
 	for_each_intel_encoder(&dev_priv->drm, encoder) {
@@ -226,8 +226,8 @@ verify_crtc_state(struct intel_atomic_state *state,
 
 void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 			       struct intel_atomic_state *state,
-			       struct intel_crtc_state *old_crtc_state,
-			       struct intel_crtc_state *new_crtc_state)
+			       const struct intel_crtc_state *old_crtc_state,
+			       const struct intel_crtc_state *new_crtc_state)
 {
 	if (!intel_crtc_needs_modeset(new_crtc_state) &&
 	    !intel_crtc_needs_fastset(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.h b/drivers/gpu/drm/i915/display/intel_modeset_verify.h
index 2d6fbe4f7846..77786a877f6a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.h
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.h
@@ -13,8 +13,8 @@ struct intel_crtc_state;
 
 void intel_modeset_verify_crtc(struct intel_crtc *crtc,
 			       struct intel_atomic_state *state,
-			       struct intel_crtc_state *old_crtc_state,
-			       struct intel_crtc_state *new_crtc_state);
+			       const struct intel_crtc_state *old_crtc_state,
+			       const struct intel_crtc_state *new_crtc_state);
 void intel_modeset_verify_disabled(struct drm_i915_private *dev_priv,
 				   struct intel_atomic_state *state);
 
-- 
2.41.0

