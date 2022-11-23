Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E724636C3B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ECFC10E643;
	Wed, 23 Nov 2022 21:19:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A43C10E640
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238332; x=1700774332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u/IpzExxaG2xiNirS8Yy8PKq0Gqhj6MEq0tGO/X22+0=;
 b=adJ9JOHEFm0FE1Kz9Gk8UKzHNNdxGpGPbCB5bNs37qCHmYRFY2w0zU2x
 E3YCjg7fpGEIppCJNKJYBYS/EnHekN3g/KASrFxW2K29rTloutxWYykj9
 jCkQz1+H5Thr2vExPnrL9D6ChhRDdFN+MX+NYF+XqxuaM0x94k5h5nFL8
 txcz6rt0VcTiB68r6ytZMI15DtVFbQwEMi9mTG3XTgWhgyigNNjhFzJ5z
 nrPTaJpmVhfzhqe5nUirLvRvoAQ2xdrCCkU4fv6tvsCHKIV2Zsj5jR7Y9
 ASPOGVqMRApZk1gkesvxXDxCb3gmkjwpKoeismAqhGMy68qUDbgLjrTch g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="315312698"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="315312698"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="636053045"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="636053045"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:18:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:18 +0200
Message-Id: <b58020d204bc90a2eec2550c235581a1494362a5.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/12] drm/i915/power: switch to intel_de_*
 register accessors in display code
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

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3adba64937de..1a23ecd4623a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1673,7 +1673,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
 		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
-		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
+		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0, val);
 	}
 
 	/* Wa_14011503030:xelpd */
-- 
2.34.1

