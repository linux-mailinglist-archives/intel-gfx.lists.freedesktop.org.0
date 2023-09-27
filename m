Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B052A7B019D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 12:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC7110E4CB;
	Wed, 27 Sep 2023 10:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEEA010E4CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 10:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695809874; x=1727345874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NTMfVy4dr80zsDUir5gJ6CmEdJsMolF+b2iut/nCAck=;
 b=McZ9PSPJbOZ//u/dIGTYcN0HG/Fb/SzjlFAzWgFKqP+mtLl5ms+R30lZ
 cCgtNN/NWYfZnpum6XJT+mVy6Jm6DehhosTayEd03AhO3YF5uoeNO2pRO
 QcTUSuaYj7xeJY4EX4SWGpmnJdBIJN9KHcHNiapJ/701EhsISPzgm+z67
 UHew4eWvLUoKfFJE+tm8v8B2fxIsOUVlHIMIWcKRNoNj9IYolLrhM7fmE
 AHfnqvVMo94mKIVYhtM1aPXYIdmE7f3yCWgNNx6/nuqEL6clG7K3eAYfU
 jmpdTT5FmOsAe7nnP6TIN/npsE5ElwbAchZpwEA4JgAixAA24MbhyjmWV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="372130194"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="372130194"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:17:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="778488167"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="778488167"
Received: from akorotox-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.52.218])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:17:51 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 13:17:29 +0300
Message-Id: <20230927101729.18681-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230927101729.18681-1-vinod.govindapillai@intel.com>
References: <20230927101729.18681-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/xe2lpd: update the scaler feature
 capability
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

Update the number of scalers per pipe based on the display
capabilities reported.

Bspec: 71161
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index e51506e37384..dea9b6ab069e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1070,6 +1070,12 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 
 		if (REG_FIELD_GET(XE2LPD_DE_CAP_DSC_MASK, cap) == 1)
 			display_runtime->has_dsc = 0;
+
+		if (REG_FIELD_GET(XE2LPD_DE_CAP_SCALER_MASK, cap) == 1) {
+			for_each_pipe(i915, pipe)
+				if (display_runtime->num_scalers[pipe])
+					display_runtime->num_scalers[pipe] = 1;
+		}
 	}
 
 	return;
-- 
2.34.1

