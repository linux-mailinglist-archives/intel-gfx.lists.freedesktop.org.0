Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E150E651C32
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 09:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B050A10E339;
	Tue, 20 Dec 2022 08:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484AD10E09C
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 08:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671523921; x=1703059921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x+uy2MvgGLWrpukZPbM7M89fNCHtseKLCzYgNTtQA5s=;
 b=Q8EjHDj9K4u8fmHY1i230hJ4/bt/3yKLxfvX06zoGPWDWTurZ0WbhfiG
 UnF1088j0MZcbzhZdAFTyDPIxbTl9JU0FLB8s95Fi1lndgY6gGngQO1QQ
 Vj2Z+/pYdQ4hQHq+cgWP1PGPDIgE9g/hPXA2CpzuH/N4jgyfUhwXWK5qU
 r8znY3zB5Hm2PgX5gRTBerl5Jj0m+ULkZRByFdqdnG8kd1pEYxuz/4rkA
 Nh8OwhCCafMbq2QlpQtWFmhuJH+hUAdgQYqBXuMdE/UUVG7M3vSToQtNr
 sQP6yY/DyZ6Uirn88ghi7aEvM+GzPH7t/H3lXMtJ0yCgB8dJ4+K5MtzfU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="317191967"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="317191967"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 00:12:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="896326220"
X-IronPort-AV: E=Sophos;i="5.96,258,1665471600"; d="scan'208";a="896326220"
Received: from asignori-mobl3.ger.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.252.46.89])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 00:11:59 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 10:11:17 +0200
Message-Id: <20221220081117.169803-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221220081117.169803-1-luciano.coelho@intel.com>
References: <20221220081117.169803-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915/mtl: Limit scaler input to 4k
 in plane scaling
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

From: Animesh Manna <animesh.manna@intel.com>

As part of die area reduction max input source modified to 4096
for MTL so modified range check logic of scaler.

Signed-off-by: Jose Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---

In v2:
   * No changes;

In v3:
   * Removed stray reviewed-by tag;
   * Added my s-o-b.

In v4:
   * No changes.

In v5:
   * Just resent with a cover letter.


 drivers/gpu/drm/i915/display/skl_scaler.c | 31 +++++++++++++++++------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index d7390067b7d4..6baa07142b03 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -103,6 +103,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	int min_src_w, min_src_h, min_dst_w, min_dst_h;
+	int max_src_w, max_src_h, max_dst_w, max_dst_h;
 
 	/*
 	 * Src coordinates are already rotated by 270 degrees for
@@ -157,15 +159,28 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 		return -EINVAL;
 	}
 
+	min_src_w = SKL_MIN_SRC_W;
+	min_src_h = SKL_MIN_SRC_H;
+	min_dst_w = SKL_MIN_DST_W;
+	min_dst_h = SKL_MIN_DST_H;
+
+	if (DISPLAY_VER(dev_priv) >= 11 && DISPLAY_VER(dev_priv) < 14) {
+		max_src_w = ICL_MAX_SRC_W;
+		max_src_h = ICL_MAX_SRC_H;
+		max_dst_w = ICL_MAX_DST_W;
+		max_dst_h = ICL_MAX_DST_H;
+	} else {
+		max_src_w = SKL_MAX_SRC_W;
+		max_src_h = SKL_MAX_SRC_H;
+		max_dst_w = SKL_MAX_DST_W;
+		max_dst_h = SKL_MAX_DST_H;
+	}
+
 	/* range checks */
-	if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
-	    dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
-	    (DISPLAY_VER(dev_priv) >= 11 &&
-	     (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
-	      dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
-	    (DISPLAY_VER(dev_priv) < 11 &&
-	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
-	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
+	if (src_w < min_src_w || src_h < min_src_h ||
+	    dst_w < min_dst_w || dst_h < min_dst_h ||
+	    src_w > max_src_w || src_h > max_src_h ||
+	    dst_w > max_dst_w || dst_h > max_dst_h) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
 			    "size is out of scaler range\n",
-- 
2.38.1

