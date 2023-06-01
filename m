Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F35D571A3A6
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 18:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7524210E580;
	Thu,  1 Jun 2023 16:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F44F10E580
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 16:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685635510; x=1717171510;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hyfATA09M4kDbLsYonI0B8aDA1XKZzvWiKBrlGzM7qc=;
 b=eKG2QLdjc+tJMiV7dEA4g0tXgQFV+K41/OiRLsGFqYxvb0AS3XGW23eA
 ov/vXDUUAF3EN4AbKvXVbcj66QG/4x5MwLBjfGdyAwARV4srB3A/swx5Y
 Muzvx6SibOVTB/jqf2HfAHWyTXjsR4urzTTEprGk12rwLor9EIrSjISJc
 sL+fbJLh1PD//b1GkHFfD9Jp7IvwFwD4vuxorI94lWd77E7bodsG54laW
 s02WnLa4czRIdqhxnBJz2wdf9s4D9pvtSplYQSCQfFyAc5/VPLGJ66KY3
 YNnSGqCRHdE3qB0h50EcVDdEjlIEBId8Qm997mC/3xx/+R5KlgOnMMO0K g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="358024891"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; 
 d="scan'208,223";a="358024891"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 09:04:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="701608520"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; 
 d="scan'208,223";a="701608520"
Received: from unknown (HELO vgovind2-mobl3.fi.intel.com) ([10.237.66.43])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 09:04:11 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jun 2023 19:03:45 +0300
Message-Id: <20230601160350.43888-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230601160350.43888-1-vinod.govindapillai@intel.com>
References: <20230601160350.43888-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v12 2/7] drm/i915: update the QGV point
 frequency calculations
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

From MTL onwwards, pcode locks the QGV point based on peak BW of
the intended QGV point passed by the driver. So the peak BW
calculation must match the value expected by the pcode. Update
the calculations as per the Bspec.

v2: use DIV_ROUND_* macro for the calculations (Ville)

v3: Use only DIV_ROUN_CLOSEST and remove divisor / 2 again

Bspec: 64636

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ab405c48ca3a..61b3babf2d83 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -182,7 +182,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	val2 = intel_uncore_read(&dev_priv->uncore,
 				 MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
 	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
-	sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
+	sp->dclk = DIV_ROUND_CLOSEST(16667 * dclk, 1000);
 	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
 	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
 
-- 
2.34.1

