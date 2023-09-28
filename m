Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 428947B1373
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 08:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB31B10E5D6;
	Thu, 28 Sep 2023 06:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 425 seconds by postgrey-1.36 at gabe;
 Thu, 28 Sep 2023 06:59:31 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B59C410E5D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 06:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695884372; x=1727420372;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=295ExZhd4frxyc+GrCU1YK+/MEiiQzCYHAy9/dJGh9E=;
 b=JwkPnWpBjEsHkOqLUHb3eGInK0NJr3LthmzYgxhzAlwxSurPSTqhGX4A
 g4HxSIf/mcYr+n47otn37Z8SDSLkrg+pkPuFPxiAeQPbpcaRzYjwaTkwa
 nVSEZb3Rnv+4dZED4eq8T0cUGBcsvOdWCvNa8KPdn0h9jPhoXYciT2F3D
 xjhcA3+Ts0SJQ3fdAjS7F5DzK6d/Di+QaXYFquvEvWZrY6Mv8pvPhFT/R
 heNe1zhBMktkBPxD1YqeEJE/WanXJ66Qm5UWBARvoh0H59PS7+xkki9LA
 +VTqwog2FRRZL1uD7QLNl+SykrwMF1GeT9nBppwjp1aJCfsZsUFFZSR+U w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="604437"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; 
   d="scan'208";a="604437"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 23:52:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="892918583"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="892918583"
Received: from lettner-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.41.51])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 23:51:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 09:52:10 +0300
Message-Id: <20230928065210.103376-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Warn on if set frontbuffer return
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915_gem_object_set_frontbuffer returns set frontbuffer pointer.  When we
are releasing frontbuffer we are clearing the pointer from the object. Warn
on if return value is not null.

v2: Instead of ignoring do drm_WARN_ON

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index d5540c739404..95319301cf2b 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -259,7 +259,8 @@ static void frontbuffer_release(struct kref *ref)
 
 	i915_ggtt_clear_scanout(obj);
 
-	i915_gem_object_set_frontbuffer(obj, NULL);
+	drm_WARN_ON(&intel_bo_to_i915(obj)->drm,
+		    i915_gem_object_set_frontbuffer(obj, NULL) != NULL);
 	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
 
 	i915_active_fini(&front->write);
-- 
2.34.1

