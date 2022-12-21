Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C56C653389
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 16:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A21B10E125;
	Wed, 21 Dec 2022 15:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B0D110E125
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 15:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671637117; x=1703173117;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0xNlvcpmR0xIHbf2Hbj7I1r/YD5skgCSx2cqRiO6Irs=;
 b=LX/dRy6PkUGU20CcR4FWWrVv0L4eY8EShiR3G3GTe8comXqZ4KFKhRV6
 4AYagIw8WLDjtwZRcrlA2nedrTbss7JEw8wH2Ub7QwJ6f5+y4LmVSsh4H
 JD3n535x3v+1kfGQdQdYI7G2beMep481VuT62umKX+7mIARIMrLIEB+b9
 j1BvW3fG6yFm9KB9Bzw/I+YWhdtW1u4G2IvOf585qYA1ZOgTXsFspe/yk
 WrPgKTXY+2KSOfjYGAejAM7I7JMxqIUQXKUbUyE82vGveYKnBHbbxbcj4
 mbc1GHVnzhl2z/ztPYIReHQNa5Q2SbriN7+WWopVcYM8EpaNbiLaR1/gm g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321075263"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321075263"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:38:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="980239564"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="980239564"
Received: from cbenthin-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.61.207])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:38:34 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 17:38:16 +0200
Message-Id: <20221221153816.1915426-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/fbdev: Implement fb_dirty for intel
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
fbdev doesn't have it. This is causing problems to features (PSR, FBC,
DRRS) relying on dirty callback.

Implement simple fb_dirty callback to deliver notifications about updates
in fb console.

v3: Check damage clip
v2: Improved commit message and added Fixes tag

Fixes: 8ab59da26bc0 ("drm/fb-helper: Move generic fbdev emulation into separate source file")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 03ed4607a46d..4e87d9964fcc 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -328,8 +328,20 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	return ret;
 }
 
+static int intelfb_dirty(struct drm_fb_helper *helper, struct drm_clip_rect *clip)
+{
+	if (!(clip->x1 < clip->x2 && clip->y1 < clip->y2))
+		return 0;
+
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

