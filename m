Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F136EE8ED
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5273C10E5A5;
	Tue, 25 Apr 2023 20:21:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3DC310E5A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 20:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682454069; x=1713990069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iPiGQURjquVk9DiEIXo1Oj7lPsM1npJIkpSCr77khzk=;
 b=dsMWaNTJFCCzoJ0vrEnuWiUr8YcgxTAFq97XGUEHGdE3P9ucjbEEz0jB
 G0EDYOkAAbuTc8ynuCOuThnYiIhakI9OS52GoNw08O0/70/usD80ZlyF2
 GitptWAwhq/IwC/Hn36rH9R7QKgcwkKHmBHRBoqq7pI1dct6EsqTVNg2l
 aASxJ+tCte/ebRUkWIDN07FNmR5F14r8mxiTe0tDVEl0mVBUoqxcyyWQs
 Y7F9l/ZYQGFCvOQSZseOg4FNkS8XOz8qcw6ZFwkO9t1sN7BgOVIbz+//N
 SjgVG+WstNEDhtnupaj85aNJRIZABOeRra/bITAV2x3/hr30oesPf/7oT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="409854209"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; 
 d="scan'208,223";a="409854209"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:21:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="693663038"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; 
 d="scan'208,223";a="693663038"
Received: from aazuev-mobl.ccr.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.59.124])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:21:07 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 23:20:50 +0300
Message-Id: <20230425202056.1143994-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230425202056.1143994-1-vinod.govindapillai@intel.com>
References: <20230425202056.1143994-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/7] drm/i915: update the QGV point frequency
 calculations
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
Cc: ville.syrjala@intel.com, gustavo.souza@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From MTL onwwards, pcode locks the QGV point based on peak BW of
the intended QGV point passed by the driver. So the peak BW
calculation must match the value expected by the pcode. Update
the calculations as per the Bspec.

Bspec: 64636

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index ab405c48ca3a..25ae4e5834d3 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -182,7 +182,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
 	val2 = intel_uncore_read(&dev_priv->uncore,
 				 MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
 	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
-	sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
+	sp->dclk = (16667 * dclk + 500) / 1000;
 	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
 	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
 
-- 
2.34.1

