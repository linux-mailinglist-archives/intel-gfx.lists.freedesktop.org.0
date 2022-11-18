Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C92E62F410
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 12:54:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C438510E703;
	Fri, 18 Nov 2022 11:54:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B70010E6FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 11:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668772435; x=1700308435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FuWTaMyEBVh1D4XnxFjYN8AKtj2lHrXhpiXRTN46YLM=;
 b=LyOAUpei+8zL39+wBHHHbkU7BWL0xFci+sWnQZ5QCT+rg6omlQajfNZx
 o6kTelhqVxmaU7yrPE3ye96AtpX10fjejQCyaHud//AdwEjpGnbF0bwFe
 ZxWeywbM+5DgsKAJVZ6sRtDMXrXW3zDNZuRoywuIG30juZCKGuvr32j2/
 EhdhI6P5e+T362mmdmZv1XHvBQZ2wfcpfCQ4epFOrzqZmlBAkwun59F0w
 AbNI7U38pvSzR6qb0wF8vLFF7aTwAbi2m9nlyklMuv7vHX9obITtp5luc
 tTPJ+uuTWxgfwiAMYlpAHWDcOPDdrWySR3rhD1bftWOgfvcc+eyTXzaQ1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="300656927"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="300656927"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 03:53:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="590986657"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="590986657"
Received: from gvargas-mobl1.amr.corp.intel.com (HELO
 kveik.ger.corp.intel.com) ([10.251.221.64])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 03:53:53 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 13:53:42 +0200
Message-Id: <20221118115342.641917-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20221118115342.641917-1-luciano.coelho@intel.com>
References: <20221118115342.641917-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Limit scaler input to 4k in
 plane scaling
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

From: Animesh Manna <animesh.manna@intel.com>

As part of die area reduction max input source modified to 4096
for MTL so modified range check logic of scaler.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
---
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
2.37.2

