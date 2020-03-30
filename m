Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AADC5197BD2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 14:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4146E288;
	Mon, 30 Mar 2020 12:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84F06E287
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 12:27:43 +0000 (UTC)
IronPort-SDR: 5LnHPXw5gb7yqOJnA1j8z3FBt0UEtOojMxVeTYCjeisFuUiHg2g9OtSwNgcmBRPhlt4L6fvxTs
 c0NPbydE2Giw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 05:27:43 -0700
IronPort-SDR: 455kNN5L6EULobUzamB8mYQc3dH1i9nW9JU9a0dhGvbHnB1O2oUNhAE0A9niYHyMa3JXtTySzh
 dq+nuu3B99Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="248684178"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2020 05:27:41 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 15:23:52 +0300
Message-Id: <20200330122354.24752-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
References: <20200330122354.24752-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/5] drm/i915: Introduce
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

Let's make our life a bit easier and use a macro for that.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h       | 7 +++++++
 drivers/gpu/drm/i915/display/intel_display_power.h | 3 +++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index adb1225a3480..c898285f0dc3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -187,6 +187,13 @@ enum plane_id {
 	for ((__p) = PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
 		for_each_if((__crtc)->plane_ids_mask & BIT(__p))
 
+#define for_each_dbuf_slice_in_mask(__slice, __mask) \
+	for ((__slice) = 0; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
+		for_each_if((1 << (__slice)) & (__mask))
+
+#define for_each_dbuf_slice(__slice) \
+	for_each_dbuf_slice_in_mask(__slice, (1 << I915_MAX_DBUF_SLICES) - 1)
+
 enum port {
 	PORT_NONE = -1,
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index da64a5edae7a..468e8fb0203a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -311,8 +311,11 @@ intel_display_power_put_async(struct drm_i915_private *i915,
 enum dbuf_slice {
 	DBUF_S1,
 	DBUF_S2,
+	DBUF_SLICE_MAX
 };
 
+#define I915_DBUF_MAX_SLICES DBUF_SLICE_MAX
+
 #define with_intel_display_power(i915, domain, wf) \
 	for ((wf) = intel_display_power_get((i915), (domain)); (wf); \
 	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = 0)
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
