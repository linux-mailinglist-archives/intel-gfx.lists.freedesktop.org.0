Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A48A26E7908
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 13:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21A1910E163;
	Wed, 19 Apr 2023 11:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617C810E163
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 11:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681905295; x=1713441295;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MoxGHwW8K9n9TS4MepjukaRozzA0AdjXvHGbcyW1SPA=;
 b=LxUj9P0hDaX0kOGVwPZj4/j/yObTC/6YuaaAIkaddAmFcjZ2LtewjtJ8
 79NvsBQNzLt/rLr6b9NdDndUyN7br5zMtWswa9hiHfy/RI2FJy6fhZTHm
 CjBsf4O+xqVNUX9x8ZPJ5/HxZB6aWX6MjZOl8oHWS2aFkVAqhZO+bTghV
 XtLdPNjnsehSE+MmNiIEtiI2pC9eQy7OeCFHJq4fhiXpsxthW8hFYx/dn
 tbv2/s8QpcaEJcZaw8T3pCn/kdwTAMUM5Z4FWlluJvA3dxAzFspd922bE
 Br/iVZD7CWPS11LH7uIdMIZbn0ekWUMw8gvuKxHk9HroVqU/Y5ZoJ4Dmi w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="325761178"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="325761178"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 04:54:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="865798949"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="865798949"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 04:54:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Apr 2023 14:54:49 +0300
Message-Id: <20230419115449.422214-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/wm: remove stale and unused
 ilk_wm_max_level() declaration
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The declaration was removed earlier, but got accidentally resurrected in
i915xx_wm.[ch] refactoring. Remove harder.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i915/display/i9xx_wm.h
index a7875cbcd05a..b87ae369685a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.h
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
@@ -12,7 +12,6 @@ struct drm_i915_private;
 struct intel_crtc_state;
 struct intel_plane_state;
 
-int ilk_wm_max_level(const struct drm_i915_private *i915);
 bool ilk_disable_lp_wm(struct drm_i915_private *i915);
 void ilk_wm_sanitize(struct drm_i915_private *i915);
 bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
-- 
2.39.2

