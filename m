Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 235DD89102F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:13:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC90110E905;
	Fri, 29 Mar 2024 01:13:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I4YOuufv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C56110E894
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711674790; x=1743210790;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Bsh1FEcGUaKFxbAx530BiQtY38aj5vTAV+7Fs10kfOg=;
 b=I4YOuufviSd/1qjxBCUuVzGwS9B+VQFlGKkp35PBQL/tHBR4xisIKvBZ
 UUn3cruM95qbBEn5O15D9eA7swvchhLTOOITh5233A6jADpdjbHTv1zEp
 dojHSbBeW097T2tMehVA45PRpOenSxPIi3SZc5BMnxJwvg+GEAvCcQy0j
 WLgSzISJYxyHFfgCLl23jGLxx1eknNIW7Xmziuyyy3p7sLl/hasJ7/NrE
 aBaJ8ocR3POHskUE6qRUMe9zBHMwF3Gw58G4oIc+9KtYR0MPH3wV3VVag
 IqcY4AAIDQ7jr4Bk0LfTMyU9F27Uy/VBgkbGh552BlYp8yTupmr6ic0O3 w==;
X-CSE-ConnectionGUID: cFAuWPksSEWPrIO0NHn1fg==
X-CSE-MsgGUID: oNGLehOCRYaD5zbQm3FR5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6756286"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6756286"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786768"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786768"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:13:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:13:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/22] drm/i915/vrr: Disable VRR when using bigjoiner
Date: Fri, 29 Mar 2024 03:12:36 +0200
Message-ID: <20240329011254.24160-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
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

All joined pipes share the same transcoder/timing generator.
Currently we just do the commits per-pipe, which doesn't really
work if we need to change switch between non-VRR and VRR timings
generators on the fly, or even when sending the push to the
transcoder. For now just disable VRR when bigjoiner is needed.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index eb5bd0743902..f542ee1db1d9 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -117,6 +117,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	const struct drm_display_info *info = &connector->base.display_info;
 	int vmin, vmax;
 
+	/*
+	 * FIXME all joined pipes share the same transcoder.
+	 * Need to account for that during VRR toggle/push/etc.
+	 */
+	if (crtc_state->bigjoiner_pipes)
+		return;
+
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
-- 
2.43.2

