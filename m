Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBEA71A0C06
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 12:36:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E63D36E824;
	Tue,  7 Apr 2020 10:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 604CB6E823
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 10:36:01 +0000 (UTC)
IronPort-SDR: 6JS52A0rtcQFz7jhm6ANZc8Y0ydbnpy+54jCbenmngCg0ofQu5HaH9OgBWj+puL5sbi0rEAGyT
 mqZZvtwUYX0A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 03:36:01 -0700
IronPort-SDR: b5YStHH21+Z+PML3eWICZ18ibYn+H5L5ZcJYY5Zj19mPbG0gX1vjDOdK5K1Mqb66zo4GNrm1bz
 VkylAGmtFXFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="254416554"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga006.jf.intel.com with ESMTP; 07 Apr 2020 03:35:59 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 13:32:20 +0300
Message-Id: <20200407103222.15629-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
References: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 3/5] drm/i915: Introduce
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

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h       | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index cc7f287804d7..9aab7e5181fd 100644
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
index da64a5edae7a..b682fd3d0973 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -311,6 +311,7 @@ intel_display_power_put_async(struct drm_i915_private *i915,
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
