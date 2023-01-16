Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BE566BE5D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 13:56:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880F310E3FC;
	Mon, 16 Jan 2023 12:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7406B10E3FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 12:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673873797; x=1705409797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZHYvFjBmUS22He9wffWC/G4dIBcfuubj3T+QgAv20kQ=;
 b=NuD0SziosWBBlu/fA3SQZcaefoSMLMBgCpo/X6Vp03Bwpjkd95Es4BVz
 ePTbPKKz9nWLlcBN2mDZubXFBy16HjJQxuvD3N61hy83k12WbvygsTwm1
 u92tx6iMrCCrFN1ZrMxzgLi54W/33we2leakNV7huavnrPlWCbvcQI+4L
 +YD3Ts8DzMMyOMwncAvqyaRAhyBlTR1zbhqEUzkN+YAiE/4mefmBAsD+n
 4lAmBS4DGSIUziqKxZ0yB8joCFAsTYaAwjkJQeOFJCM6csT/7uC/EUpk0
 2kfVO7+3hilvOtOtjA6XvVCWc1qGmOtKX/5sF7ucPiBBjVsKuXgLl6MHR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386800024"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="386800024"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="904320313"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="904320313"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.13.137])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 14:56:15 +0200
Message-Id: <ecfac5ebddcb46be1ddf2e34e52648fbf9fa4ca6.1673873708.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1673873708.git.jani.nikula@intel.com>
References: <cover.1673873708.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/5] drm/i915/vblank: use intel_de_read()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the intel_de_* functions for display registers.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index bc792b363ffc..b2d4d289aaa7 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -137,7 +137,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
 	if (!vblank->max_vblank_count)
 		return 0;
 
-	return intel_uncore_read(&dev_priv->uncore, PIPE_FRMCOUNT_G4X(pipe));
+	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(pipe));
 }
 
 static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
-- 
2.34.1

