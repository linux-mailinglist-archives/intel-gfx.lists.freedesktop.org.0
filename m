Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7237E470164
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28E610E292;
	Fri, 10 Dec 2021 13:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8310110E29B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639142251; x=1670678251;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OQpdAr6mqas4qaeos4SaJ5MZGMrNGnyJDlFK2Xq/8Y8=;
 b=eMAdAjJmbnjWh+eFciqApZMQmM74e1nPlAcit9bWFpPukz39aGQRsKuj
 iSp2ZVHSdKWpsXNHgRRKqIF+Q/rNmH5b47bTvuIWkh0E9K1Sw/QYpHumy
 2DLfOpXTHNpo72WmXYk0MfYeFz6cnH0TbRGmx5UIA1x8hFNpSNUG+6xzd
 JxIGNmTe/V2ZDVqqZTKnpOHTICsnMhZnDbYIjJwi5wXxt461JR5gitzqo
 xr4mvlMmaYkVGvRZtD50+5d9Ks5VXo0t8dvLuO8mzpMMcxZGKHRZR9M0B
 rFW290P1/HxNIJ429qRE40t78m+k754i3hyPzufw5B2NjTV5dbLcnDmL7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="219031389"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="219031389"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="602108252"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 15:16:56 +0200
Message-Id: <52b1cf56c16bf669a1357ce81d9232c5480914a4.1639142167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639142167.git.jani.nikula@intel.com>
References: <cover.1639142167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/7] drm/i915/active: remove useless
 i915_utils.h include
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

Not needed.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_active_types.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active_types.h b/drivers/gpu/drm/i915/i915_active_types.h
index c149f348a972..b02a78ac87db 100644
--- a/drivers/gpu/drm/i915/i915_active_types.h
+++ b/drivers/gpu/drm/i915/i915_active_types.h
@@ -15,8 +15,6 @@
 #include <linux/rcupdate.h>
 #include <linux/workqueue.h>
 
-#include "i915_utils.h"
-
 struct i915_active_fence {
 	struct dma_fence __rcu *fence;
 	struct dma_fence_cb cb;
-- 
2.30.2

