Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B74BB7416
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 16:57:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6541510E940;
	Fri,  3 Oct 2025 14:57:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E5YAdGrH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B96A10E941;
 Fri,  3 Oct 2025 14:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759503471; x=1791039471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bZ5yt4ZLBtQDsyy60mKKBbpb3nhHN4oebTS/QsbVPbg=;
 b=E5YAdGrHQPW2faOqe2HKYxMMFeaaum7k7S/iB+uvAPzHfHnkhDzUCpoP
 xPv0BNwjQ3SVIdkh6NbkKna0fjdg9ToBchNIotupoaLd8i/8G8vSS1ngs
 fX3ri29vouVprZXtjRV1gKPy6i4Yod5UZcjBd1g2nofeaHnZ03bUHNGwi
 5OB49hNkoEoWxKVNfrDlcRZdUXnJClYfQNLtp3u0nCmGuwh3AMUVRY4NW
 x8hVrbH4C4QlRcf7lQ/oIlXOQ4AJ72gd3t2TRKbUYSfvTb57OaDnDzGBZ
 sEOtM9d2YlJGBWZa3EOD6NZNc7sevxq6coXBkR9wQJSv0KHXsaoCCPgJd g==;
X-CSE-ConnectionGUID: e6lImbi7RNimgHahE0kuTA==
X-CSE-MsgGUID: 0IashjfxTGWml/h5RsoXBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="73138765"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="73138765"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:51 -0700
X-CSE-ConnectionGUID: ISpq8jNoRCKK1xvOpfaVjg==
X-CSE-MsgGUID: WR5iflm3TEeJR0SDwfI42w==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.127])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:49 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 3/5] drm/i915/fbdev: Select linear modifier explicitly
Date: Fri,  3 Oct 2025 17:57:32 +0300
Message-ID: <20251003145734.7634-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
References: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently we use the implicit modifier fb creation path for fbdev,
but as we never call set_tiling on the bo it will always end up as
linear anyway. The rest of the code (eg. stride alignment) also
assumes that we'll use linear. Just select the linear modifier
explicitly.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 3fbdf75415cc..51d3d87caf43 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -214,12 +214,14 @@ static void intel_fbdev_fill_mode_cmd(struct drm_fb_helper_surface_size *sizes,
 	if (sizes->surface_bpp == 24)
 		sizes->surface_bpp = 32;
 
+	mode_cmd->flags = DRM_MODE_FB_MODIFIERS;
 	mode_cmd->width = sizes->surface_width;
 	mode_cmd->height = sizes->surface_height;
 
 	mode_cmd->pitches[0] = ALIGN(mode_cmd->width * DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
 	mode_cmd->pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
 							   sizes->surface_depth);
+	mode_cmd->modifier[0] = DRM_FORMAT_MOD_LINEAR;
 }
 
 static struct intel_framebuffer *
-- 
2.49.1

