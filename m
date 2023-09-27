Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECDB7B019C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 12:18:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C95710E4CA;
	Wed, 27 Sep 2023 10:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C15F510E4C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 10:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695809871; x=1727345871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4vhPzqEB3Z7dY3Hr/bC49p+5GhGxWXmVtwalcJ8aG2M=;
 b=GcJ1QOKXMGKYzQ/gcoPv5hdq1ZWepb054eChr1xecMwgD94U7HEs0LYK
 eGshWaiwOmQ59FS/tywkOouFRQlfO1DxM+bkxuJdRDLAX671VpabGtpiZ
 WCMC/qYgTM2/lCxZf6sxax4BgVhYcGY+L9kw8osRf/213yxgcbed9/Dyq
 WEu74ZG5ObKMSxPOtX2uwQB5r9PbMyJLw/vp4TC3dBoatrdmm8imf+eJO
 dK42w1myiPhPfhJ3ulP43NYgSuB7KsOpPWiBQBHn8DpmKFWnGQ8rt+GXB
 gIN4TPDvobZs7scnJcfE1HHweiej6KY9/P6Zcp0/5uouyMj+w0xiZnip2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="372130183"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="372130183"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:17:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="778488164"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="778488164"
Received: from akorotox-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.52.218])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:17:49 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 13:17:28 +0300
Message-Id: <20230927101729.18681-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230927101729.18681-1-vinod.govindapillai@intel.com>
References: <20230927101729.18681-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/xe2lpd: update the dsc feature
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

Update the global dsc flag based on the display capabilities
reported.

Bspec: 71161
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a6a18eae7ae8..e51506e37384 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1065,6 +1065,13 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 			display_runtime->has_dsc = 0;
 	}
 
+	if (DISPLAY_VER(i915) >= 20) {
+		u32 cap = intel_de_read(i915, XE2LPD_DE_CAP);
+
+		if (REG_FIELD_GET(XE2LPD_DE_CAP_DSC_MASK, cap) == 1)
+			display_runtime->has_dsc = 0;
+	}
+
 	return;
 
 display_fused_off:
-- 
2.34.1

