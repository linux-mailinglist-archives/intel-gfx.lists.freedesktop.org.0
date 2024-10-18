Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4369A4878
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF18F10E9A5;
	Fri, 18 Oct 2024 20:49:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NkHVxGku";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCD2F10E9A5;
 Fri, 18 Oct 2024 20:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284595; x=1760820595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gy+C1wNvqHASzpX8yMLZ8MQ9yXlIHHkmL2QulC9QGio=;
 b=NkHVxGkuPRCJM+cTVxqw/o5EdpjmL0RGb0YQWzRIaZsHaYsljx9RqRKq
 YaM/V/Qo1QqV8E35GOIaXDbSP3mQoe+DHIhA3cTzH+Oqnq+FE3lR6hhtb
 j7365JiM4Kq2zUv793uUwwdYNcOT/FtpDpsRxZRoCmsOj7ivhd1SLJVNU
 beky+bTl4Th/p1xodgGIYcH14Oxml4bGIzIgpfrNz+6OxHPwxaANriUlv
 VWYDdofDw7fbMKNyFEto8r8Mt9rn8AMMyBrFAHei0tKIX0myJuXwah0YK
 av42ibLwcv11EHI6Xtk8H4ptnkKJvBjANy+RhXHSPWz/uzBkI3p8GRWfX A==;
X-CSE-ConnectionGUID: ctWGloCqRIGUIt/SvLcMNw==
X-CSE-MsgGUID: r/Ahrr7KRkCGDqYdZVCFRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240193"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240193"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:54 -0700
X-CSE-ConnectionGUID: rpktiwRaTpGr4auWHvANzQ==
X-CSE-MsgGUID: QFuMsO14TTGRTYVaSyhaZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798966"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:53 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 08/12] drm/i915/xe3lpd: Increase resolution for plane to
 support 6k
Date: Fri, 18 Oct 2024 13:49:37 -0700
Message-ID: <20241018204941.73473-9-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

DISPLAY_VER >= 30 onwards CRTC can now support 6k resolution.
Increase pipe and plane max width and height to reflect this
increase in resolution.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       |  5 ++++-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 ++++++++++++-
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 90669c7f988b..72150f257969 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8452,7 +8452,10 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * plane so let's not advertize modes that are
 	 * too big for that.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 30) {
+		plane_width_max = 6144;
+		plane_height_max = 4096;
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		plane_width_max = 5120 * num_joined_pipes;
 		plane_height_max = 4320;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index da974f4a25bd..bd7786a6161a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -431,6 +431,13 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
 	}
 }
 
+static int xe3_plane_max_width(const struct drm_framebuffer *fb,
+				   int color_plane,
+				   unsigned int rotation)
+{
+	return 6144;
+}
+
 static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
 				   int color_plane,
 				   unsigned int rotation)
@@ -2589,7 +2596,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) >= 30) {
+		plane->max_width = xe3_plane_max_width;
+		plane->max_height = icl_plane_max_height;
+		plane->min_cdclk = icl_plane_min_cdclk;
+	}else if (DISPLAY_VER(dev_priv) >= 11) {
 		plane->min_width = icl_plane_min_width;
 		if (icl_is_hdr_plane(dev_priv, plane_id))
 			plane->max_width = icl_hdr_plane_max_width;
-- 
2.45.0

