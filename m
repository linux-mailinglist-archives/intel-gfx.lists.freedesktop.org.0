Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F596775C3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 08:45:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2255810E1DC;
	Mon, 23 Jan 2023 07:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D7210E1DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 07:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674459895; x=1705995895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BqXUDM1hE3+dDkn3GqcntR9qLDV2BFuNdCu9DHf3lhU=;
 b=Qr6rdo4OWZDoiNXKvvjYSb89ZI6YILdR1XSbGfYxMBkkvJ7DNQaVnPmo
 M+XLQz/MryGyaL6nqnjNTB+3SC0zlngozyHlzVNwrJpF0hLzhIOKNq4kY
 e1szdMUWfJn1cL6V5M6U1Br+b9qjVLF/wpWyXQIMe8fmUcK0y0FpwT1i6
 2B1TMttsrlsjab/qDEvP9c2YCJiUlJp9RRG/b4crSDUHR5/vJOMydjWzY
 LSXCR3CDUzNm9mVOPYPHDvjv5CoeoAOwfXTyHc/YO2ItDVM66xfN89Cd6
 wAHduwfhyxlPwnjF4NmP0I+CtHEEc1b+ogkINYIvnwYqb+++pz88MYSq/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="323678909"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="323678909"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 23:44:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="769701228"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="769701228"
Received: from yshabi-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.46.137])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 23:44:52 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Jan 2023 09:44:37 +0200
Message-Id: <20230123074437.475103-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/fbdev: Implement fb_dirty for intel
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

After disconnecting damage worker from update logic it's left to fbdev
emulation implementation to have fb_dirty function. Currently intel
fbdev doesn't have it. This is causing problems to features (PSR, FBC,
DRRS) relying on dirty callback.

Implement simple fb_dirty callback to deliver notifications about updates
in fb console.

v4: Add proper Fixes tag and modify commit message
v3: Check damage clip
v2: Improved commit message and added Fixes tag

Fixes: f231af498c29 ("drm/fb-helper: Disconnect damage worker from update logic")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 19f3b5d92a55..d39db8050c69 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -321,8 +321,20 @@ static int intelfb_create(struct drm_fb_helper *helper,
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

