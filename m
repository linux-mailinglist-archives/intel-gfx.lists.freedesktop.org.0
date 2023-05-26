Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4097126EC
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 14:51:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A52E10E7F9;
	Fri, 26 May 2023 12:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4698110E7F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 12:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685105494; x=1716641494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hyfATA09M4kDbLsYonI0B8aDA1XKZzvWiKBrlGzM7qc=;
 b=LqPyUPmc9N995bapqAeNoB2CmRzRcPjaKjlMWgb5CjFw7pVgLMCvEj3Q
 GCYHBlHDv+r0kPmm6vOZSFhldtcGpsVIRV61jn5H9W1J9SRFQ1DGkS8JA
 NoO8yCpn6+Hawb5Tke9ipSwnxIGMG6GafIM6xVlLeInoXmEoO5qbSepfU
 8hxUzmukSZEpzSDSCXB2tnOjhXiHaTukO+HwO7GUIDTC1CgZ1egtNoq79
 hOB6fvMNu3cCWb8rYEwb5KBZa4so7xqOnzh5adAZSO04cbi8aqfK1MGGe
 RQfMWJURd3J26+6vuF/QUoXBGJlZK2/FOJoB8msdYE0t0Mdnq6C4Buah9 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="334545605"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; 
 d="scan'208,223";a="334545605"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:51:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="682707965"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; 
 d="scan'208,223";a="682707965"
Received: from vcouthon-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.208.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 05:51:30 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 15:50:50 +0300
Message-Id: <20230526125055.39886-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230526125055.39886-1-vinod.govindapillai@intel.com>
References: <20230526125055.39886-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 2/7] drm/i915: update the QGV point frequency
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
Cc: ville.syrjala@intel.com
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

