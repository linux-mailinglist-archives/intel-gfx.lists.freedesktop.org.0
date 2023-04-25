Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 763D46EE0B3
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C1410E715;
	Tue, 25 Apr 2023 10:55:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F370810E70F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420131; x=1713956131;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=y/VBKsLjW+GS/oV54gSegJrAHwIew+UmMGkrTCKslng=;
 b=XxS6gz6AjyfeG16RIbpyN5RWhs2a6SOdke4Z2UtpQVH9MU1kONBksrfW
 NOc75Jg5q+K8ba62Ev+G7A8LUYb6vMEEr44RAKP9jOdTa4v7G+m8ALf64
 YGLihHZ/De+/eh55GDFiOpLeV25dYkTeiSB3dZIlcxYz4lx8O1YJ7ATLG
 XpqORNkpfC/wmZIUkA9gdumbdTExHG42KYNZFVUD5Drz6UJIxEY0IymdU
 DagCCK0z/Iki3kUiI7x/DlH115KnS9wxaR6Qv0mI5kJ9iPmuv6dFzPEET
 vDuyn1zZ3ojx6IEAdYP/Wai0uP9Hcp23UcxIod4AW4I9BqZLLLBjYtyKZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019663"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019663"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367516"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367516"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:49 +0300
Message-Id: <20230425105450.18441-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/14] drm/i915/dsi: Grab the crtc from the
 customary place
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

The encoder hooks already get passed the crtc state so just
grab the crtc from there instead of from the connector state.
This is generally what everyone else does, so no reason for
icl_dsi.c to be different.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 30b1ad51b0c5..3a8a4fdfbd7b 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1243,7 +1243,7 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 			     const struct drm_connector_state *conn_state)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(conn_state->crtc);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
 
@@ -1403,7 +1403,7 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 				   const struct drm_connector_state *old_conn_state)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(old_conn_state->crtc);
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 
 	intel_crtc_vblank_off(old_crtc_state);
 
-- 
2.39.2

