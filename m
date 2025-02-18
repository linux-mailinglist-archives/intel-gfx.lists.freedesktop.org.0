Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE09A3AAAE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:19:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD47B10E76C;
	Tue, 18 Feb 2025 21:19:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dTbzCy7A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E96FE10E76C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913586; x=1771449586;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EM+TfjEJsJHVHlhcNB6w5cYiVl/VowBtQmqe7YFirws=;
 b=dTbzCy7AhGwIqs9qbTIiG4QgXul2ryHcRS7MAEQ+GLEtVR96kjTGRZiW
 iQRghSDfbacAfLb+TNySVtil6Vf5jE2/izLArxUcl4knjJQ0hzHu52/cW
 QwTeaxfveDbrpGH2mR72gUlRWypRMqjgJ/ov9NLE+/+ospXF/lRPf/5+J
 RPbcrOd9JfUFHWlsjxew+dNBGrfwvQ0rzcg72RvlhirKe8j5GGA5qxSXl
 AKCciV5DrOzzkPpKaSK8VxpM620Z/VAJ6neVu2YFEEDecJJmoM3nZ+FeI
 KWoeZ3yMGzOQAM7TXIiWLMsyrePwFFEKlqXY5IdSL94aXIhjMdyHbZCgE Q==;
X-CSE-ConnectionGUID: rBnO13UnQw+18OPRGpVR5g==
X-CSE-MsgGUID: EbNNSDczSsS8MHy+HVz/ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862289"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862289"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:19:45 -0800
X-CSE-ConnectionGUID: MOi3yF62Tm2wltgtJlmk/A==
X-CSE-MsgGUID: 8cWAjqoORZqKKYikejCONw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693432"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/19] drm/i915: clean up pipe's ddb usage in
 intel_crtc_disable_noatomic()
Date: Tue, 18 Feb 2025 23:19:01 +0200
Message-ID: <20250218211913.27867-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Update the ddb tracking information when we disable a pipe
during sanitization. Avoids leaving stale junk in the states.

Currently this doesn't do anything as we haven't read out this
state yet when we do the sanitization, but that will change soon.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 4930e52322d3..9584d4da13d0 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3848,6 +3848,8 @@ static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
 void skl_wm_crtc_disable_noatomic(struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
+	struct intel_crtc_state *crtc_state =
+		to_intel_crtc_state(crtc->base.state);
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(display->dbuf.obj.state);
 	enum pipe pipe = crtc->pipe;
@@ -3856,6 +3858,13 @@ void skl_wm_crtc_disable_noatomic(struct intel_crtc *crtc)
 		return;
 
 	dbuf_state->active_pipes &= ~BIT(pipe);
+
+	dbuf_state->weight[pipe] = 0;
+	dbuf_state->slices[pipe] = 0;
+
+	memset(&dbuf_state->ddb[pipe], 0, sizeof(dbuf_state->ddb[pipe]));
+
+	memset(&crtc_state->wm.skl.ddb, 0, sizeof(crtc_state->wm.skl.ddb));
 }
 
 void intel_wm_state_verify(struct intel_atomic_state *state,
-- 
2.45.3

