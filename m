Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 791B49A0CA7
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5F310E17B;
	Wed, 16 Oct 2024 14:31:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b8llPkpp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1389F10E723
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729089111; x=1760625111;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fXEF7wMZKSbRQWPe77V8ulHFcadx9k3qF3Qu/sb9Kv0=;
 b=b8llPkppYe7sV0H+oa6CHwcvYoc7B0yhvhR1oYdJG/WfoPPMF7onVCpD
 IhJRzcECBOTrBEVQ8UzkSKJKxCT1iwEfCZ+FRcT+6eQRmUHxfEIhge2aj
 KArcgDhQYj9M+R0Os2DmeNda3CvkaSKNRLJ5zs6MffeV1sHnJz1PfTrg2
 NSzvugPvs/BoFsdlpJECZXQpxtJpIHHX0i1KccQh2wveN9SkYx2r3/jyl
 vBtS3Ynn5ntkaKn/HiC+uhdOSQi/n/slu8UjWeMVhtQbE3v/TuX8gYpww
 0MEyehgMK1sW5KVJB2zu0xzl+5DrimDta1V0jVwEnYB+ZrXMWoY1QapkS g==;
X-CSE-ConnectionGUID: AbgZ3q+ZTMuUi8f9Jx8hqw==
X-CSE-MsgGUID: Y6w3Qef0Q22W3/IZMLdbig==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28630721"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="28630721"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:31:51 -0700
X-CSE-ConnectionGUID: FK61gxIFTDyRTAETVaKatA==
X-CSE-MsgGUID: dRrJW9VXSiuqFiGb+CRgtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78288385"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:31:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:31:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915/pfit: Reject cloning when using pfit on ILK-BDW
Date: Wed, 16 Oct 2024 17:31:30 +0300
Message-ID: <20241016143134.26903-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
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

The panel fitter lives inside the pipe and so would affect all cloned
outputs. However the relevant properties (scaling mode, TV margins)
are per-connector so we could end up with a situation where each cloned
output wants a different pfit configuration. Let's just reject pfit
usage with cloning entirely.

Currently not an issue as we don't yet expose the TV margin
properties, but if/when we add those to HDMI we could end up
in this situation. For eDP/DP we don't support cloning anyyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 27 ++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index dc843892b01b..593e41907d53 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -474,6 +474,29 @@ static int intel_pch_pfit_check_timings(const struct intel_crtc_state *crtc_stat
 	return 0;
 }
 
+static int intel_pch_pfit_check_cloning(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	/*
+	 * The panel fitter is in the pipe and thus would affect every
+	 * cloned output. The relevant properties (scaling mode, TV
+	 * margins) are per-connector so we'd have to make sure each
+	 * output sets them up identically. Seems like a very niche use
+	 * case so let's just reject cloning entirely when pfit is used.
+	 */
+	if (crtc_state->uapi.encoder_mask &&
+	    !is_power_of_2(crtc_state->uapi.encoder_mask)) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] no pfit when cloning\n",
+			    crtc->base.base.id, crtc->base.name);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /* adjusted_mode has been preset to be the panel's fixed mode */
 static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
@@ -564,6 +587,10 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
+	ret = intel_pch_pfit_check_cloning(crtc_state);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
-- 
2.45.2

