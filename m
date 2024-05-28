Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C80118D237D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1154112607;
	Tue, 28 May 2024 18:49:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OifW1DHh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A882112607
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922193; x=1748458193;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RHrVvGXOZu6ec9tsViwB+nv2Jspx5XuoqKjXdaRa+4E=;
 b=OifW1DHh322unmD9nJ7Y1OwtO8LqMSXScbGKnzyz8xdBzR/Nn4dxWssv
 89GbVTZoWt/FbLm+Abjsv0gRPYOqF+TAKGgbSnbxDSd4WujSBnpeil1qd
 I0BI9sYy+laMJU2abQKWn4/5ZmHkkiqMODiDH/GYu6CdTZshVSAB9sg+V
 FdDI5JmQktbvLPwH0XpXNTlxGIdGijjM0cuFwEwXbz4NvVDbgWPPLusz0
 K8soE0Pxzk6Svlatgrq82Pzhgyz+OrdkfH3fjMWnWLOqteSXQLWHv0IuZ
 qq6C1rSTxt9x/dI2mAjNcJQCpchAsXCV1d0WjtBK9pwtg2jWsP2Z2YH5Y w==;
X-CSE-ConnectionGUID: A1ysLQ/TSyyOa9ZTn+vLMg==
X-CSE-MsgGUID: j4DXDjDGRz+VKkF75iSk3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35812415"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35812415"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:49:52 -0700
X-CSE-ConnectionGUID: 3aEGmG2pSJ2SK62lWl4oHQ==
X-CSE-MsgGUID: QK1LTmubSKub6nZAwBBWFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35141362"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:49:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:49:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915: Plumb the full atomic state into
 icl_check_nv12_planes()
Date: Tue, 28 May 2024 21:49:44 +0300
Message-ID: <20240528184945.24083-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
References: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
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

icl_check_nv12_planes() needs the full atomic state. Instead of
digging that out from dubious sources plumb it in explicitly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 071ba95a1472..dbbc72494a46 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4033,11 +4033,12 @@ static int icl_add_linked_planes(struct intel_atomic_state *state)
 	return 0;
 }
 
-static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
+static int icl_check_nv12_planes(struct intel_atomic_state *state,
+				 struct intel_crtc *crtc)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane *plane, *linked;
 	struct intel_plane_state *plane_state;
 	int i;
@@ -5786,7 +5787,7 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 					    new_crtc_state, i) {
 		u8 old_active_planes, new_active_planes;
 
-		ret = icl_check_nv12_planes(new_crtc_state);
+		ret = icl_check_nv12_planes(state, crtc);
 		if (ret)
 			return ret;
 
-- 
2.44.1

