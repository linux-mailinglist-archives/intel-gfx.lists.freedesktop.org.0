Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 477A07C6E02
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C69FD10E4CB;
	Thu, 12 Oct 2023 12:25:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DB310E189
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697113504; x=1728649504;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1dQPOQz1UhWUZyDEZjCHkB6/VWhW/MduLcKgI5RPrSU=;
 b=XpBXOHaR1kNdDJ+UgjX9OWr7WpXsC4cbxVf3a6AK2tuaUIaeQ4V+jhAa
 fHyMBuB33Vc8Z+rkGfIQYhoMkBOKbKZmLAR/RGLTyBDgKYMnFY0fOc7SY
 +HYSujTAPOW7CarGa2Y0b4n42/GQO/MMM+P2rNSqHvG+1Sk6EdKN5m0xz
 ccjLn2ZWzWT8n7PMUtyR5jFRbWtSjJBwe/3nYr9wipSyWRaah20Wbawn1
 GJBAM4G3XaKKXOnriYvBMRwYGuf+K6O8hnksfS0ToTiE0FVjwZG3IVc4s
 G1iTvuTYmcMBWa5W5RS7TiyhCz1yfAXRtoOr7snCbMdvUSy5Fg+ttS0QA g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382140877"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382140877"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:25:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844979172"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844979172"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:25:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:25:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:24:42 +0300
Message-ID: <20231012122442.15718-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
References: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/gvt: Clean up zero initializers
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

Just use a simple {} to zero initialize arrays/structs instead
of the hodgepodge of stuff we are using currently.

Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: Zhi Wang <zhi.a.wang@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c | 2 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c | 6 +++---
 drivers/gpu/drm/i915/gvt/handlers.c   | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 05f9348b7a9d..d4a3f3e093b0 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -3047,7 +3047,7 @@ static int shadow_indirect_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 
 static int combine_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 {
-	u32 per_ctx_start[CACHELINE_DWORDS] = {0};
+	u32 per_ctx_start[CACHELINE_DWORDS] = {};
 	unsigned char *bb_start_sva;
 
 	if (!wa_ctx->per_ctx.valid)
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 835c3fde8a20..313efdabee57 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -56,7 +56,7 @@ static const struct pixel_format bdw_pixel_formats[] = {
 	{DRM_FORMAT_XBGR8888, 32, "32-bit RGBX (8:8:8:8 MSB-X:B:G:R)"},
 
 	/* non-supported format has bpp default to 0 */
-	{0, 0, NULL},
+	{}
 };
 
 static const struct pixel_format skl_pixel_formats[] = {
@@ -76,7 +76,7 @@ static const struct pixel_format skl_pixel_formats[] = {
 	{DRM_FORMAT_XRGB2101010, 32, "32-bit BGRX (2:10:10:10 MSB-X:R:G:B)"},
 
 	/* non-supported format has bpp default to 0 */
-	{0, 0, NULL},
+	{}
 };
 
 static int bdw_format_to_drm(int format)
@@ -293,7 +293,7 @@ static const struct cursor_mode_format cursor_pixel_formats[] = {
 	{DRM_FORMAT_ARGB8888, 32, 64, 64, "64x64 32bpp ARGB"},
 
 	/* non-supported format has bpp default to 0 */
-	{0, 0, 0, 0, NULL},
+	{}
 };
 
 static int cursor_mode_to_drm(int mode)
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index a9f7fa9b90bd..9c47b498c87e 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -538,7 +538,7 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
 	int refclk = vgpu->gvt->gt->i915->display.dpll.ref_clks.nssc;
 	enum dpio_phy phy = DPIO_PHY0;
 	enum dpio_channel ch = DPIO_CH0;
-	struct dpll clock = {0};
+	struct dpll clock = {};
 	u32 temp;
 
 	/* Port to PHY mapping is fixed, see bxt_ddi_phy_info{} */
-- 
2.41.0

