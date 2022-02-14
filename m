Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0B24B58DA
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 18:44:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C206110E273;
	Mon, 14 Feb 2022 17:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17F710E273
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644860674; x=1676396674;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=irVTC8ZYkIe9FSdLAsQ94sFSLJKLUKnkyUbkak7FdCA=;
 b=V7Tmb0mpU6pZDS+jxHtAIcrF9sW3GeYUGbv9DoTwCLxUHr7aQYNExM+5
 kgx840LKwNN5Vp/TK9FXSTBZo777R9PKoszshX9eS1Xq/WNDPhRDe8riH
 0EitzAx9LoFoIi58V2KXAYr6b5O01pttFdj6koRCmi2+ILgTyIt0r3dH9
 V1nZtqtXQrELdzeILCozxIUmNyd2cT76qe3TbwVdumDVzW/xjx2hstLgr
 nEbbxmRGMTamZ2gmGdhlz53ucL/Eqn3DHHlJ5pkPulBAX1lmyDmwa8CoZ
 OdGuEu4gADQIDu5O8U0Vv5v64aMOTjeE/GFtCac1gXKOaBh7q18AAdCm5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="230109091"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="230109091"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:36:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="495862506"
Received: from unknown (HELO localhost) ([10.252.13.38])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:36:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 19:36:44 +0200
Message-Id: <20220214173644.2097124-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pxp: prefer forward declaration over
 includes
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

Always use forward declarations instead of includes in headers if
possible.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
index 16990a3f2f85..586be769104f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
@@ -6,7 +6,7 @@
 #ifndef __INTEL_PXP_PM_H__
 #define __INTEL_PXP_PM_H__
 
-#include "intel_pxp_types.h"
+struct intel_pxp;
 
 #ifdef CONFIG_DRM_I915_PXP
 void intel_pxp_suspend_prepare(struct intel_pxp *pxp);
-- 
2.30.2

