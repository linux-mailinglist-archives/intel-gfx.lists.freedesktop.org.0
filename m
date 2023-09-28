Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D49457B1605
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 10:29:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CE410E5EA;
	Thu, 28 Sep 2023 08:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DDD310E5EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 08:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695889781; x=1727425781;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S0nyQsoMjh69TXovlOhlCb1vjxHHyPw0tjN7+NkXAcM=;
 b=nP+MPK45ifIr4ANMCzRFj9CgV6kGptO7i7L/u73tZ2Lkl8UbOwiwEsIN
 oV7XRCRUWILQTiRgeOijXgMhP67C62nNA8IYrhNPA+DOGDh50nHPtHTTs
 solURCa5Wn4DudXFsrs6/L9UL6qZZBk4iv+/imo0sAPFgDA6UARQdRyxt
 G4u+TFd6/Cq4cuLH0aBGBAwOiriZuheNNpm+C6nApSsvoOjKAcI9XcsXM
 ybawYv5ZUUuO7CvoWzVrppZctgxTQqZTkS43Re+hy21ODxS41OEGk5mg9
 dVJ0oDFB7MWPZElF+rbFeygkPluohgbPiTkDjJC+LlNKGOt4vR6Whku60 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="367072210"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="367072210"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 01:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="996470868"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="996470868"
Received: from lettner-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.41.51])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 01:29:38 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 11:29:24 +0300
Message-Id: <20230928082924.164720-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: Warn on if set frontbuffer return
 value is not NULL on release
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_gem_object_set_frontbuffer returns set frontbuffer pointer.  When we
are releasing frontbuffer we are clearing the pointer from the object. Warn
on if return value is not null.

v3: Check i915_gem_object_set_frontbuffer return value separately
v2: Instead of ignoring do drm_WARN_ON

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index d5540c739404..412a19a888a2 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -251,7 +251,7 @@ static void frontbuffer_retire(struct i915_active *ref)
 static void frontbuffer_release(struct kref *ref)
 	__releases(&intel_bo_to_i915(front->obj)->display.fb_tracking.lock)
 {
-	struct intel_frontbuffer *front =
+	struct intel_frontbuffer *ret, *front =
 		container_of(ref, typeof(*front), ref);
 	struct drm_i915_gem_object *obj = front->obj;
 
@@ -259,7 +259,8 @@ static void frontbuffer_release(struct kref *ref)
 
 	i915_ggtt_clear_scanout(obj);
 
-	i915_gem_object_set_frontbuffer(obj, NULL);
+	ret = i915_gem_object_set_frontbuffer(obj, NULL);
+	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, ret);
 	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
 
 	i915_active_fini(&front->write);
-- 
2.34.1

