Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0201A9AF977
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 08:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993F110E2A9;
	Fri, 25 Oct 2024 06:02:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BwISJcvE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CD8710E2A6;
 Fri, 25 Oct 2024 06:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729836120; x=1761372120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X7EvmaGzGdHg0RvAvvCrSuqXiaa9aa6Tz63S4fJDhck=;
 b=BwISJcvEVNy5sv5x3EjMqNYiqk4l+WtEv2b/vCSaciF0OqisAIicJT8s
 5D8Yecq4AnZ63yVuLaOzMz8HDSm6H6QMkuURBM27/ynU+m4ALDkjKlO8B
 tBzJO9YqoWPBrEdhsXVHfKyskotfWoWh/qxgVPbjl2WRXOu6rCGUhcIot
 QhN1+Kl3HPVsSZ9yklQFY0CpUPb7jYXWfY0I34lDFT3+MknkmP2ZY8lTw
 ALW83Cw1UIpwnnicrm5q89e5xM8NX6WsPaRWYvjKYxGS6fwhmb3TKuO5E
 b5o58+BUtohGZHt7CUGeFV5qW79MJ+RsjBwXbELrnp8zJLAtX92JTNQnF A==;
X-CSE-ConnectionGUID: WujUNxUaTGqHKIGcRKgsoA==
X-CSE-MsgGUID: AikT3Gn+Qe++n+n/qzPR3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29620685"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29620685"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 23:01:59 -0700
X-CSE-ConnectionGUID: wSkwca48Tnu3p8jucohAOA==
X-CSE-MsgGUID: vH2d7v5JRs68gQSK0x6BxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="80734408"
Received: from unknown (HELO kandpal-X299-UD4-Pro.iind.intel.com)
 ([10.190.239.10])
 by orviesa009.jf.intel.com with ESMTP; 24 Oct 2024 23:01:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, matthew.d.roper@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 2/5] drm/i915/xe3lpd: Increase resolution for plane to support
 6k
Date: Fri, 25 Oct 2024 11:31:33 +0530
Message-Id: <20241025060136.9884-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241025060136.9884-1-suraj.kandpal@intel.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 10 +++++++++-
 .../gpu/drm/i915/display/skl_universal_plane.c   | 16 +++++++++++++++-
 2 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fc578af4f394..80092879ebcf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8450,7 +8450,15 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * plane so let's not advertize modes that are
 	 * too big for that.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 20) {
+	if (DISPLAY_VER(dev_priv) >= 30) {
+		if (num_joined_pipes > 1) {
+			plane_width_max = 8192;
+			plane_height_max = 4800;
+		} else {
+			plane_width_max = 6144;
+			plane_height_max = 4096;
+		}
+	} else if (DISPLAY_VER(dev_priv) >= 20) {
 		if (num_joined_pipes > 1) {
 			plane_width_max = 8192;
 			plane_height_max = 4800;
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

