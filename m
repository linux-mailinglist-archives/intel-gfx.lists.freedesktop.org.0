Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D94645692
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:35:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828B410E380;
	Wed,  7 Dec 2022 09:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3245810E364
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670405719; x=1701941719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HQSH2w2BQveWh047fZQQQOjK8H7sy8ZoK403XuscVJk=;
 b=Kgr9202t9+IWewh90nQ7MPBcunCgLiuE9J3icYMic88ZBfh1Xhp2Kyxl
 OWVJLx8jxdcDlt8qEOkLNdQilouTuWQi4+FcXQ4+m1nGwcnoXu0lzaotw
 eJHRqtzO+/iGf+jJ5WWLHyeCAio0hUVjU5zfUGr0yIoHgfkwmI8U539DT
 XRfB8yyuxqFbCXDAWT2wl7RU3n9roE7peJtMGFXZjC1uaEj+PH1GnuOat
 A8gG9JU6TDWNvnVg47ixEEOlCndPlF0l2grMb+HGKR7M4NyigDrzlR2Or
 LKYVWVBRJfWxMjHeobjaySiRcIFrWkEfMvoPRQE1O5l9a9qkrk2AQO09B w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="318702695"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="318702695"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:35:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="715125528"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="715125528"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:35:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 11:34:46 +0200
Message-Id: <4769f8377be11536bd19840a2e59ef9f8c0a558c.1670405587.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670405587.git.jani.nikula@intel.com>
References: <cover.1670405587.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/5] drm/i915/backlight: convert
 DRM_DEBUG_KMS() to drm_dbg_kms()
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
Cc: Jani Nikula <jani.nikula@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the final straggler.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 3ed5c64c3816..5b7da72c95b8 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -866,8 +866,8 @@ static int intel_backlight_device_update_status(struct backlight_device *bd)
 
 	drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
 
-	DRM_DEBUG_KMS("updating intel_backlight, brightness=%d/%d\n",
-		      bd->props.brightness, bd->props.max_brightness);
+	drm_dbg_kms(&i915->drm, "updating intel_backlight, brightness=%d/%d\n",
+		    bd->props.brightness, bd->props.max_brightness);
 	intel_panel_set_backlight(connector->base.state, bd->props.brightness,
 				  bd->props.max_brightness);
 
-- 
2.34.1

