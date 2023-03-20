Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA686C0CBC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:05:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5811610E299;
	Mon, 20 Mar 2023 09:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB4610E299
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679303131; x=1710839131;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6Uc1Vv5p2SHR7/PDFQYbkSSDr0Eweawod2JfJAinjI0=;
 b=f6oBSDj6cdkIGXSTUEPFrowv+/6Fve6J3uO0VU45LVATetVaLlHpJROU
 36KROCIdQPQ8HI0F7+7+XQqfO1sRrbVgHyftod9okt0rWi1hxdqmIOL5d
 TcYk6CvSp3aRk0IYZohVJ0CUmC8G2HCwWo6w1/p39+RHJtPIxTihGIS+K
 ciU+p4JfvcSoyiS60+sZWRgk0/WY3Bi6ksrkLnH+zncm5czbBKf39yamG
 cDjvM2QFaqIs7LBkJB76UMJ9DcMIJ/GZc8qkZDudnBtgzZROFWg4UDQ0M
 Zr+XH94KyHChevoT4QjgoqDjWyJAX6GU6NbhVgZBR6JnWY3Qn+cf4fVDP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338637078"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338637078"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="745289414"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="745289414"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 20 Mar 2023 02:05:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:05:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:05:18 +0200
Message-Id: <20230320090522.9909-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
References: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/dpt: Only do the POT stride remap
 when using DPT
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

If we want to test with DPT disabled on ADL the POT stride remap
stuff needs to be disabled. Make it depend on actual DPT usage
instead of just assuming it based on the modifier.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 799bdc81a6a9..26ad5fc0c2c1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1189,7 +1189,7 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
 {
 	struct drm_i915_private *i915 = to_i915(fb->base.dev);
 
-	return IS_ALDERLAKE_P(i915) && fb->base.modifier != DRM_FORMAT_MOD_LINEAR;
+	return IS_ALDERLAKE_P(i915) && intel_fb_uses_dpt(&fb->base);
 }
 
 static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
-- 
2.39.2

