Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D379E99DDFD
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 08:12:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C34710E503;
	Tue, 15 Oct 2024 06:12:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jfpWz+xG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0405F10E500;
 Tue, 15 Oct 2024 06:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728972766; x=1760508766;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ykyfSO+ZbtQPXLkhEaXXH+kct7JROvY0a2VMTMywhws=;
 b=jfpWz+xGXCS/nE4NBBDiLnubwdHE89ZdgHSlLxuGoSyy/Qjeyikn6hyY
 bCyEqp1q8MWP8O4kyNR72rOHhh3Pp2zoRWh+SSRgzW8ieUbhgKv6IqxH2
 o3NS29F1bCBYpMA+i+QECD4oZVgmicXNE2FtlYSnvfgN2urDe4Fhp1o6Z
 efQUpnTUKnl7i6s4hKA61NbINlNK0zJe2I3r1Jb9YiASMDiYIlVzJrWoq
 pdWnfpKjF6snpHp1F52Qxzv5QEFaGLTf95/TKfS4utwNfbfMSAgwqYOM1
 TsmDq9L74CNIPXBXLE25EsbD0hs84kLWlz99OB5XOGaFbUmjzeSqUKfDH A==;
X-CSE-ConnectionGUID: drtw2BJySXqzM0yBd9LREg==
X-CSE-MsgGUID: EDeDcFZeRTG2dMfpbCrS5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="28444822"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="28444822"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 23:12:46 -0700
X-CSE-ConnectionGUID: M99gviEER9m6VPLM7bafGA==
X-CSE-MsgGUID: zXe9TSevQ5yQj9IC0JeSOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="82564159"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 14 Oct 2024 23:12:45 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, vandita.kulkarni@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 1/4] drm/i915/xe3lpd: Increase resolution for plane to support
 6k
Date: Tue, 15 Oct 2024 11:40:08 +0530
Message-ID: <20241015061011.2087826-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241015061011.2087826-1-suraj.kandpal@intel.com>
References: <20241015061011.2087826-1-suraj.kandpal@intel.com>
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

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       |  5 ++++-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 ++++++++++++-
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e1f6255e918b..37bac53f996e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8432,7 +8432,10 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * plane so let's not advertize modes that are
 	 * too big for that.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 30) {
+		plane_width_max = 6144 * num_joined_pipes;
+		plane_height_max = 4096;
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		plane_width_max = 5120 * num_joined_pipes;
 		plane_height_max = 4320;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9557b08ca2e2..4dec9e693218 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -431,6 +431,13 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
 	}
 }
 
+static int xe3_plane_max_width(const struct drm_framebuffer *fb,
+			       int color_plane,
+			       unsigned int rotation)
+{
+	return 6144;
+}
+
 static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
 				   int color_plane,
 				   unsigned int rotation)
@@ -2573,7 +2580,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
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
2.47.0

