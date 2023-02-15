Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D05697E3A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:19:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D78E10E27F;
	Wed, 15 Feb 2023 14:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDA4D10E27F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676470772; x=1708006772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9E9qACuJ0Swz1hSZJa1tjtD8RxImcfeOh7Z1FYfqvv8=;
 b=W/UY+qM3e8FIHf8at5D+1xRzZLViIHFjSpffF2gEKziFpysL+1BmM+OL
 UGyu+wkoXE9dMb/1TveiWf3S7X/0datwfeNRl+Gj508r/zABb6ycPSD/x
 NJHD8SHDuRjgNkHvdt8a5cfiXz21PyvKsOJ3sEpqAleDZZZtWi7M7/jy4
 lz8KcPSkobnRPiPZn/Tp/bBf5tG39+wFV5r05wAFupItwNpGuXLRaQIfY
 t1I3zuqVlx8IkKpMUOuyTDdOrVLGhsSl33X9Kyib4W/vr1r7dfMGI2UUr
 G6AeITqT/WBrRkjO9sVPyrtgrpfMCZgywG+FkEFB7N2Lst82WKK/7+K82 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="319470212"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="319470212"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:19:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="647184162"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="647184162"
Received: from gchung-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.51.244])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:19:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 16:19:10 +0200
Message-Id: <20230215141910.433043-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230215141910.433043-1-jani.nikula@intel.com>
References: <20230215141910.433043-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/5] drm/i915/wm: remove ILK+ nop funcs
 fallback
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

Disabling ILK+ watermarks on failure to read the watermark levels dates
back to 2010 and commit 7f8a85698f5c ("drm/i915: Add the support of
memory self-refresh on Ironlake"), with no explanations, and it's been
copied and modified from that ever since. Finally drop it.

If the value are actually zero, the ilk_compute_*_wm() functions should
handle it gracefully.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 50cdfe11192e..3d4687efe4dd 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -4007,19 +4007,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
 	/* For FIFO watermark updates */
 	if (HAS_PCH_SPLIT(dev_priv)) {
 		ilk_setup_wm_latency(dev_priv);
-
-		if ((DISPLAY_VER(dev_priv) == 5 && dev_priv->display.wm.pri_latency[1] &&
-		     dev_priv->display.wm.spr_latency[1] && dev_priv->display.wm.cur_latency[1]) ||
-		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->display.wm.pri_latency[0] &&
-		     dev_priv->display.wm.spr_latency[0] && dev_priv->display.wm.cur_latency[0])) {
-			dev_priv->display.funcs.wm = &ilk_wm_funcs;
-		} else {
-			ilk_init_lp_watermarks(dev_priv);
-			drm_dbg_kms(&dev_priv->drm,
-				    "Failed to read display plane latency. "
-				    "Disable CxSR\n");
-			dev_priv->display.funcs.wm = &nop_funcs;
-		}
+		dev_priv->display.funcs.wm = &ilk_wm_funcs;
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		vlv_setup_wm_latency(dev_priv);
 		dev_priv->display.funcs.wm = &vlv_wm_funcs;
-- 
2.34.1

