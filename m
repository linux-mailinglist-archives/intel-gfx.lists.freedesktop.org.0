Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 611D2519E7C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 13:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DCE10ECE4;
	Wed,  4 May 2022 11:48:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62A7210FB7A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 11:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651664905; x=1683200905;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=l9/0WAoNWQJaLhj53g9BOOPCmVCWMLyfHe79ogzvhHI=;
 b=THuEvAAF4KdqMelBbOBCkEtMQ7u1CCZSVJVqg2eNBaO8FDA/YrmauaL+
 76wiiiBAU8tO9cq66goH/npwAIyCutTenvv6DuQeaiPMlpNa8BwbD+9EL
 zRDVjtPZ8a1a+xV6NjcfGrA5YX574nO1S1kw4EW2pRECfttc5QcvWvjul
 WK1AFqd0rp4kTggURfEdIP+DBOApGXWjqKJicpNkWW9CSvpvh1RestPR+
 poE+R4hXy+nfbqEwaUV9wCFqTsB3sl525WPRNjGuxUBaNUJc1mXeQYMg2
 1esg/M8RaO8966tY9LcrMgHabb7GL3bugtqTYgdwn0CtUcH7KLl2IpnKO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="292932060"
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="292932060"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 04:48:19 -0700
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="584695263"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 04:48:18 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 13:48:07 +0200
Message-Id: <20220504114808.1578304-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/fbdev: print error in case
 drm_fb_helper_initial_config fails
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

On some configurations drm_fb_helper_initial_config sometimes fails.
Logging error value should help debugging such issues.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 221336178991f0..557c7f15ac22a9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -539,11 +539,16 @@ int intel_fbdev_init(struct drm_device *dev)
 static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
 {
 	struct intel_fbdev *ifbdev = data;
+	int ret;
 
 	/* Due to peculiar init order wrt to hpd handling this is separate. */
-	if (drm_fb_helper_initial_config(&ifbdev->helper,
-					 ifbdev->preferred_bpp))
-		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
+	ret = drm_fb_helper_initial_config(&ifbdev->helper,
+					   ifbdev->preferred_bpp);
+	if (!ret)
+		return;
+	drm_err(ifbdev->helper.dev, "failed to set initial configuration: %pe\n",
+		ERR_PTR(ret));
+	intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
 }
 
 void intel_fbdev_initial_config_async(struct drm_device *dev)
-- 
2.25.1

