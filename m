Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB7255133E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:50:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6828E10E61C;
	Mon, 20 Jun 2022 08:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D7A710E61B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714999; x=1687250999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4lQPJvJf+0rInXdRB0Xfp+mO9Z2yvNVxUJl9a17cuVU=;
 b=fpn5hdoH0gzWBazys2RsZqkOq6dJTOvd3fvL2G1aDr9uVdOVH59HuJWl
 uvOP2exCfTQfK30QUO+hvuvzJmATF3MaMpf47IygNpS9Sf95s86iXIP0U
 lPOwYHE4BR7RLVyPid7gUc7XW/q2uk53Oze0hx6/N9fMQmQTGXOk01K9U
 jQN9JiLW5iyVCotuA0qWkRhJwiXIVCOf+oFYaxKchQ/M4LXQ/fPOc+8zt
 60TbI3F40h/l1cNJ5NtUaRJowfQFdGn5UahwR0G5ym3yb8Kk8/2C8w0Tx
 hLwyZRdx/1zxSCpx8hVGtMW2jpq+wh2vOBkbkyLsQJ6deJuYEN3q5qA6M g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="278614308"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="278614308"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:59 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="676439003"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:35 +0300
Message-Id: <f0fcdbb427bf48ec32821e2323be2975ac3c3ffc.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/16] drm/i915: stop resetting display info to
 zero for no display
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

This is the last blocker in making device info a pointer to const
data. Hopefully resetting pipe_mask to 0 and thus ensuring HAS_DISPLAY()
is false is enough, and we don't go ahead and do something with the
display info regardless. Fingers crossed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 12c776900a40..84e6a54c82ff 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -283,7 +283,6 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
  */
 void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_device_info *info = mkwrite_device_info(dev_priv);
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
 	enum pipe pipe;
 
@@ -409,7 +408,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv)) {
 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
 						   DRIVER_ATOMIC);
-		memset(&info->display, 0, sizeof(info->display));
 		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
 		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
 	}
-- 
2.30.2

