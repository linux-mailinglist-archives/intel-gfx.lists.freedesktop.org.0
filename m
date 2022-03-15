Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2144D9C31
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB61B10E4B0;
	Tue, 15 Mar 2022 13:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE17510E48C
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350899; x=1678886899;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ji4B7bA1Zb6+Fm9a9xLI27QGRCRevo55+BXFDNOlS50=;
 b=aOY7ar61sZ8DxI01c5FXXQ6LMgI9GdEK+a5sTtBTZnATIxOv5igmUEHi
 g9f8ncpsQH2sedq9YqTGtTWDhQ432omfOy9OM/Dy2pnt8WgmqPx3PmcVC
 6WakIuyzEv50rHtDUIPWRyNBWo2O/8n29f5Q2qAJf6C9H8EV72CTD3TNs
 +dkrossZb7IzD/xbFCVGh8qRAGzp5RF680F86csGFLQNsaICZ8a8nMQ5Z
 ba98BiYWuxgdrd2LFkwBOMaqaweEa3jAS5eznT07tGlsMo4IRDzGbfbFL
 Vjgyqdwxi70MXGdk5hDx2owc28YH03DZb+a2iP1GtbL8D5FAJtbjXs436 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="253857582"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="253857582"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:28:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="512603383"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 15 Mar 2022 06:28:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:28:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:51 +0200
Message-Id: <20220315132752.11849-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915: Deal with bigjoiner vs. DRRS
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

DRRS operates on transcoder level, so we should only poke at it from
the master crtc rather than letting every joined pipe give it
potentially conflicting input.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 44c9af8f8b9b..9a341ab1a848 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -176,8 +176,16 @@ static void intel_drrs_schedule_work(struct intel_crtc *crtc)
 static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	unsigned int frontbuffer_bits;
 
-	return INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
+	frontbuffer_bits = INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
+					 crtc_state->bigjoiner_pipes)
+		frontbuffer_bits |= INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
+
+	return frontbuffer_bits;
 }
 
 /**
@@ -196,6 +204,9 @@ void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->hw.active)
 		return;
 
+	if (intel_crtc_is_bigjoiner_slave(crtc_state))
+		return;
+
 	mutex_lock(&crtc->drrs.mutex);
 
 	crtc->drrs.cpu_transcoder = crtc_state->cpu_transcoder;
@@ -223,6 +234,9 @@ void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
 	if (!old_crtc_state->hw.active)
 		return;
 
+	if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
+		return;
+
 	mutex_lock(&crtc->drrs.mutex);
 
 	if (intel_drrs_is_enabled(crtc))
-- 
2.34.1

