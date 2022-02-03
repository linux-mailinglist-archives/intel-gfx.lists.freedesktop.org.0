Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 047E54A8BC0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 19:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C77A10EA47;
	Thu,  3 Feb 2022 18:38:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6454810EA47
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 18:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643913521; x=1675449521;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BTXHnvHdkmldEMdhDwqTYdQvn0Uz+6C7aCwSP+GKGr4=;
 b=HnU3E7SZNPgA3rtDPRdba0Ac8YvP/Z5g8lGbE94QzUo5YgB2bOLbbNRb
 C4yvSaA8ddnum7GmEq5yABCBPMPPJIJNLjaj3kkREal/w3CVM7QUupKf9
 otC07Eaii4Fmb6A/kACZ5bmgXZAE5HxFGdBGyixrEFOVSqRQV5uiHzhF6
 nHT0+BvYDBdQmZqD52zAKnvL7h4oiFEEUWQp6v2mZeX/+nWaq1d3HXHFS
 jdW5EODALDqGFxpp6EDBlLy4CdIGZFCEAgWbVqhyNknTXhWLPyTsnx9pd
 KmW7IuSWhDUYL8/lhrjP1rwd5zAw5M5Jbhye9oqps3lPtcfwsEMZ+fyIV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="235623152"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="235623152"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 10:38:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="620597770"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 03 Feb 2022 10:38:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Feb 2022 20:38:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 20:38:18 +0200
Message-Id: <20220203183823.22890-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/10] drm/i915: Nuke some dead code
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

Remove all the dead code from icl_ddi_bigjoiner_pre_enable().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 48869478efc2..d5dc2c25c1f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1974,23 +1974,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
 					 const struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc_state *master_crtc_state;
-	struct intel_crtc *master_crtc;
-	struct drm_connector_state *conn_state;
-	struct drm_connector *conn;
-	struct intel_encoder *encoder = NULL;
-	int i;
-
-	master_crtc = intel_master_crtc(crtc_state);
-	master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
-
-	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
-		if (conn_state->crtc != &master_crtc->base)
-			continue;
-
-		encoder = to_intel_encoder(conn_state->best_encoder);
-		break;
-	}
+	struct intel_crtc *master_crtc = intel_master_crtc(crtc_state);
 
 	/*
 	 * Enable sequence steps 1-7 on bigjoiner master
-- 
2.34.1

