Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 015049B2909
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 08:43:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591AC10E35B;
	Mon, 28 Oct 2024 07:43:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jNACaqkM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA2910E35B;
 Mon, 28 Oct 2024 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730101433; x=1761637433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VOzzJ+1hMSHpooCRQ7cVStPe0nZGcz/FH4rznc7fPGA=;
 b=jNACaqkMDJi+GZq3hnLRL6EwzEVzxg50+QIe+5xZf2kUlHWl0Vq2ZXty
 cyw8bIF5rqCLrPMfCpBto9JYookt0y5jdx0Jcji/oOUxEpq6pSnbRcy/7
 DLnNVZOoQDvlOXUHVARiIgErjszHfX2aHCEfFhbUeYgCVulkdHC4GFTGb
 DBqtBDOSx6Ara/3NIlmf9F1FjuD53yGdZvUHsvwQ5mUBWDfEjEtnLNlNP
 GUIvTnfF92Hb3UPqui9eOfJ57Mj3tmhmI61h6McUhu7RFS7yLr6bTmVY2
 BKiFtZNPcNwBDbPI9aXjylrd09DMPRF8HfY+u2XuEK7SsoJRTTS82mdUi A==;
X-CSE-ConnectionGUID: a/ZZp2RgTGW8Ezj0HOjTEg==
X-CSE-MsgGUID: 87F4dFyvQIq8X5s0OT3epA==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29799363"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="29799363"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 00:43:53 -0700
X-CSE-ConnectionGUID: 3Estc60NTECotYYhRdb+HA==
X-CSE-MsgGUID: X+BKujZYRzaW+N3vM0EOKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81643547"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by fmviesa008.fm.intel.com with ESMTP; 28 Oct 2024 00:43:51 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 1/3] drm/i915/xe3lpd: Increase resolution for plane to support
 6k
Date: Mon, 28 Oct 2024 13:13:31 +0530
Message-Id: <20241028074333.182041-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241028074333.182041-1-suraj.kandpal@intel.com>
References: <20241028074333.182041-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

DISPLAY_VER >= 30 onwards CRTC can now support 6k resolution.
Increase pipe and plane max width and height to reflect this
increase in resolution.

--v2
-Take care of the subsampling scenario sooner rather than later [Matt]

--v3
-Take care of the joined pipe limits too [Ankit/Matt]

--v4
-Leave the joiner limits check here as is and handle them later [Ville]

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     |  5 ++++-
 .../gpu/drm/i915/display/skl_universal_plane.c   | 16 +++++++++++++++-
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..92e22bf53e76 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8450,7 +8450,10 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * plane so let's not advertize modes that are
 	 * too big for that.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 30) {
+		plane_width_max = 6144 * num_joined_pipes;
+		plane_height_max = 4800;
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		plane_width_max = 5120 * num_joined_pipes;
 		plane_height_max = 4320;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index a0a7ed01415a..29e52af5f206 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -431,6 +431,16 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
 	}
 }
 
+static int xe3_plane_max_width(const struct drm_framebuffer *fb,
+			       int color_plane,
+			       unsigned int rotation)
+{
+	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
+		return 4096;
+	else
+		return 6144;
+}
+
 static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
 				   int color_plane,
 				   unsigned int rotation)
@@ -2584,7 +2594,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 30) {
+		plane->max_width = xe3_plane_max_width;
+		plane->max_height = icl_plane_max_height;
+		plane->min_cdclk = icl_plane_min_cdclk;
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->min_width = icl_plane_min_width;
 		if (icl_is_hdr_plane(dev_priv, plane_id))
 			plane->max_width = icl_hdr_plane_max_width;
-- 
2.34.1

