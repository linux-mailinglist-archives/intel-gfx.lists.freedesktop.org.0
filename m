Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C4B58ECF6
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 15:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4BB6B0864;
	Wed, 10 Aug 2022 13:19:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC6DE14B716
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137558; x=1691673558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TmttoAUejJIsT24I3WL/+cAsVCHhCg4UoBStsnQa5ps=;
 b=gJru5p3VjKtWu0BIQKW15OhfYuvG9tqmKvhMq8AGFkPiX1SkTlJl++ra
 JU/7ObKl34c7Gst4E1vV1Rtrqaga+82Jx+8npDJv/kbbNJ55Qp3G6UWJr
 NmtSge8ojql82q/hpZvURhY9tjuVdzQd1E/MecyspYFZTojM+JOVDZ9IO
 Q+diVjePhnCDXLsih1be8jBoJLMNrIJvcnVr715nROERJ1lhD3vMzuYpN
 ug02JRdsIlz0yPn5bIKsjfIvUXLFgSh2aBOuH19QYoDttvv5WlkZmRnXo
 8QwOkmBnVOrvO7WH9UbGLcJy1600MsxhtgOQj4cktvoxx9zAZa/FUlWqp g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="377369579"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="377369579"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="673284242"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:18:18 +0300
Message-Id: <dfda1bf67f02ceb07c280b7a13216405fd1f7a34.1660137416.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660137416.git.jani.nikula@intel.com>
References: <cover.1660137416.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/15] drm/i915: stop resetting display info
 to zero for no display
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
index 0a1f97b35f2b..a6fde2d77266 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -298,7 +298,6 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
  */
 void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_device_info *info = mkwrite_device_info(dev_priv);
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
 	enum pipe pipe;
 
@@ -424,7 +423,6 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv)) {
 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
 						   DRIVER_ATOMIC);
-		memset(&info->display, 0, sizeof(info->display));
 		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
 		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
 	}
-- 
2.34.1

