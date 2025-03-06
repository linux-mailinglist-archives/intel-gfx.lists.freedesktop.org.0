Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E867CA5511E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:34:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D9610EA03;
	Thu,  6 Mar 2025 16:34:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c/k+IVFS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25B6F10EA02
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278883; x=1772814883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SfPfkXQcOw7CRj1dXnMbnV+9KYmgl55yYvD/v5QqUzw=;
 b=c/k+IVFSKvYG+upR+XES3aPvfQIuoAFBgRVOODbl+GqgYuENqWRO68un
 CP/NffqmrtNMi4sHdgIIH+czN9G7C/PftxTeTH8Kll9L6uSgYPfzJs3Hp
 FvcRfy0RR9UsKQCnwg+Gx30xMlgizEVx6Yhiek/v8UbsMwRtjOo5ILfcM
 I+sksnYItE/8oQ6GPPv63f0dvwnO3OB4Pqy0mOUSc2U7rMkYIbdGB5Diu
 oM4Sf5GRci/hQzv2qkvphdRAkEeF01H5CKX2vyFuGaj1z9xQrkLCBFvEY
 JMUaKSl8pFVLSt3IL0qHpcHZQ+66HJ0yx/LPigL55WCEJ85ejub2WRxbn w==;
X-CSE-ConnectionGUID: e6anE/ZFSxyko7GXnsuSbQ==
X-CSE-MsgGUID: jqSzchjqSpKwiTVx+fkIEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704333"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704333"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:42 -0800
X-CSE-ConnectionGUID: OXuFm1ziRlSMgfyX2hE++g==
X-CSE-MsgGUID: gRG+f+tbQ+ytubyFukxFPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124288954"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 06/18] drm/i915: clean up pipe's ddb usage in
 intel_crtc_disable_noatomic()
Date: Thu,  6 Mar 2025 18:34:08 +0200
Message-ID: <20250306163420.3961-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
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

