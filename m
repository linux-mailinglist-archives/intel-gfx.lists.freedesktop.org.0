Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 896EC7B4735
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Oct 2023 13:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7774210E1FB;
	Sun,  1 Oct 2023 11:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D434B10E1FB
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Oct 2023 11:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696159938; x=1727695938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TZQi2wKtbEoNgUbx3S8R0ZbyHVZQxJTm/6XxepKvj8I=;
 b=dcgcMXcah8LN/gCJE/ocK6gEsj/Ni8C0obrRl55sLOhwXHRFa1Tm/8sm
 /4qc8zD7PChu+/A4S5LY+fINdGQcw9jzrEl3g1ebGdCDZ23hQcGaI6Q0q
 TbU+CisS8U2EYR9eB1AA+x8CbN2wlrz0AGx3CNSwBxYU4rjdzQbsx8NUp
 jP5VpwGqJySjPNdupylML+pfnPrA5drxo3X/3uOROikVLGOO3Uztzm4rO
 I18d/UylhDxsS2e/NqPKzXREFSpTg3Ay3G2DRGh4tvnv/9suH8yMcE2/J
 Zh8Oqp1FIP3Ib5B1O3ESDHS3kWiTUMjxs6uGU8dXlbk4ZWk7viiSz08u+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="386386666"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="386386666"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:32:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="753804747"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="753804747"
Received: from catjim-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.34.14])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:32:16 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Oct 2023 14:31:55 +0300
Message-Id: <20231001113155.80659-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231001113155.80659-1-vinod.govindapillai@intel.com>
References: <20231001113155.80659-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 3/3] drm/i915/xe2lpd: update the scaler
 feature capability
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

v1: define the field values instead of the magic number (JaniN)

Bspec: 71161
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 2c891fe4d74b..bb4fdfba138c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1071,6 +1071,13 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 		if (REG_FIELD_GET(XE2LPD_DE_CAP_DSC_MASK, cap) ==
 		    XE2LPD_DE_CAP_DSC_REMOVED)
 			display_runtime->has_dsc = 0;
+
+		if (REG_FIELD_GET(XE2LPD_DE_CAP_SCALER_MASK, cap) ==
+		    XE2LPD_DE_CAP_SCALER_SINGLE) {
+			for_each_pipe(i915, pipe)
+				if (display_runtime->num_scalers[pipe])
+					display_runtime->num_scalers[pipe] = 1;
+		}
 	}
 
 	return;
-- 
2.34.1

