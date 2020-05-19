Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B6F1D976A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 15:15:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EE836E32F;
	Tue, 19 May 2020 13:15:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18AFC6E32F
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 13:15:26 +0000 (UTC)
IronPort-SDR: 5BAHBjKfxEH2/PYKUxXWt7M6pOzIExN4yRLdy69BNL+BT1R4SLszbxmXrcMAE1ywj/H55zFXxx
 Msov1PklBHdQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 06:15:25 -0700
IronPort-SDR: 0BVGk4UA5L4ph6jg/5RKGpIDPwS9EFu2sOx9ze+M1b7j+/6pSp1fV23EZjtbpi6drEqD8S5kNi
 tmS/RjXXvB6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="282318101"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga002.jf.intel.com with ESMTP; 19 May 2020 06:15:24 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 16:11:15 +0300
Message-Id: <20200519131117.17190-6-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 5/7] drm/i915: Introduce
 for_each_dbuf_slice_in_mask macro
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We quite often need now to iterate only particular dbuf slices
in mask, whether they are active or related to particular crtc.

v2: - Minor code refactoring
v3: - Use enum for max slices instead of macro

Let's make our life a bit easier and use a macro for that.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h       | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index efb4da205ea2..b7a6d56bac5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -187,6 +187,13 @@ enum plane_id {
 	for ((__p) = PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
 		for_each_if((__crtc)->plane_ids_mask & BIT(__p))
 
+#define for_each_dbuf_slice_in_mask(__slice, __mask) \
+	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
+		for_each_if((BIT(__slice)) & (__mask))
+
+#define for_each_dbuf_slice(__slice) \
+	for_each_dbuf_slice_in_mask(__slice, BIT(I915_MAX_DBUF_SLICES) - 1)
+
 enum port {
 	PORT_NONE = -1,
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 6c917699293b..4d0d6f9dad26 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -314,6 +314,7 @@ intel_display_power_put_async(struct drm_i915_private *i915,
 enum dbuf_slice {
 	DBUF_S1,
 	DBUF_S2,
+	I915_MAX_DBUF_SLICES
 };
 
 #define with_intel_display_power(i915, domain, wf) \
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
