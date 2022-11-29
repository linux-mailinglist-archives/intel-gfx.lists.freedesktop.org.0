Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E124063C041
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 13:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B6910E3D2;
	Tue, 29 Nov 2022 12:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7E810E3D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 12:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669725809; x=1701261809;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a31DeJoBbb+fxbyc++B7AbsgbqtvZ3pqf6ZhMxEsMsY=;
 b=X8IdklCQ7MRC7ryWnLuopKDDfH8I2sb4l74nW86RlmcSNc0ytDvGdVz+
 XGBl3x4QnTVaoHINg3ImRKOYOrfnR8JsQ2tEGJiLJ4Ic1aKbRrqIXQJS2
 Sub8cKczxspr/6jhZUY3nHNjOFbplfWDGDMDdtCCafZwMKGdruJtRnpZ3
 IIn/S9EDEu+5pIkAtREXTpaRJEmKKGR9MWxBE7thnKhm5DT4LcX5SOshM
 obTDy2DcwBm2DJfqZZ0Mp2RgI84P/gDFDm6cT088FGpoGSbDZMSdSTgem
 E1bNUbc7V2S5hQ3Rvu5UGA+PYSLeH9zrscf9AlFhOitfjTwR3Mb31JRug A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="316234462"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="316234462"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 04:43:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="972657521"
X-IronPort-AV: E=Sophos;i="5.96,203,1665471600"; d="scan'208";a="972657521"
Received: from schoenfm-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.35.11])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 04:43:26 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Nov 2022 14:43:02 +0200
Message-Id: <20221129124302.291759-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement fb_dirty for intel
 custom fb helper
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After splitting generic drm_fb_helper into it's own file it's left to
helper implementation to have fb_dirty function. Currently intel
fb doesn't have it. This is causing problems when PSR is enabled.

Implement simple fb_dirty callback to deliver notifications to psr
about updates in fb console.

Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 5575d7abdc09..7c7fba3fe69e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -328,8 +328,17 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	return ret;
 }
 
+static int intelfb_dirty(struct drm_fb_helper *helper, struct drm_clip_rect *clip)
+{
+	if (helper->fb->funcs->dirty)
+		return helper->fb->funcs->dirty(helper->fb, NULL, 0, 0, clip, 1);
+
+	return 0;
+}
+
 static const struct drm_fb_helper_funcs intel_fb_helper_funcs = {
 	.fb_probe = intelfb_create,
+	.fb_dirty = intelfb_dirty,
 };
 
 static void intel_fbdev_destroy(struct intel_fbdev *ifbdev)
-- 
2.34.1

