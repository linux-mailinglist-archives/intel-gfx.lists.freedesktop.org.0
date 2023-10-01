Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D79C27B4734
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Oct 2023 13:32:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E398610E1FC;
	Sun,  1 Oct 2023 11:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CB3710E1FA
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Oct 2023 11:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696159936; x=1727695936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6ds10U1uVdXBYwo0XLaiWcEgyOD7T3uAqn3f9UsV4xI=;
 b=Q4YquG95BlIBFnp4xOiOcxMVmXoO2SwTF7Df94EwVK9URlEBCBObaBn5
 fmT48IIFbu/3U03y+EbbZ0uBMR0PUo+THE+Vatz35uMftxWgcjaePmdwz
 kTku5S0XvWpvdbP+muxGCh8/bBY15cJ14tPyi1KkErBUGdAKFWZl/Iw2w
 W+CVZuypdI4MjVMJ3ovfFCr3jF7X+IF8FMKJxtcl6bnCnEcWraAanxxLk
 HPxIF+VV3Z+Qiz7DnncS3i1SvVzyuwDD/8DUY9gys7dLwm4elo64dsis+
 c89Qand73vCIWZUu4axPAm7igvMWSvkkSjYIm8bgriIb1Wm0P6bVzfNKs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="386386661"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="386386661"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:32:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10849"; a="753804734"
X-IronPort-AV: E=Sophos;i="6.03,191,1694761200"; d="scan'208";a="753804734"
Received: from catjim-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.249.34.14])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 04:32:13 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  1 Oct 2023 14:31:54 +0300
Message-Id: <20231001113155.80659-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231001113155.80659-1-vinod.govindapillai@intel.com>
References: <20231001113155.80659-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 2/3] drm/i915/xe2lpd: update the dsc feature
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

v1: define the field values instead of the magic number (JaniN)

Bspec: 71161
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a6a18eae7ae8..2c891fe4d74b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1065,6 +1065,14 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
 			display_runtime->has_dsc = 0;
 	}
 
+	if (DISPLAY_VER(i915) >= 20) {
+		u32 cap = intel_de_read(i915, XE2LPD_DE_CAP);
+
+		if (REG_FIELD_GET(XE2LPD_DE_CAP_DSC_MASK, cap) ==
+		    XE2LPD_DE_CAP_DSC_REMOVED)
+			display_runtime->has_dsc = 0;
+	}
+
 	return;
 
 display_fused_off:
-- 
2.34.1

