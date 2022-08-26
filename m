Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7316D5A27A2
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 14:21:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B5310E8CC;
	Fri, 26 Aug 2022 12:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08AB610E8CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 12:21:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661516476; x=1693052476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XhpLXhCvQwuoeyn0zHSxgkXllI6Cy+WKvFXViXbMrNg=;
 b=S5eWy6aQ0ISIbnk5DNdP9uSzImaQqUlQL9Dbz5wUyo+GiemlyhTEZchN
 6tkTsCfSJL2ha6N0JBNf1AfCiTVEYyqLsjeFo/fMZhJFAwc6L6R2hrUcy
 KrM6vq1290HOptNe8Nf1gYh0Fyt+7DkWFbu91j2qyEgCUruVajGaIyag7
 OU+a7nyLEZ0zVsTebt/sjXxd2FUu7K64aQ1HhZogyy5IOjH11NJsgtgKM
 4dbr1ZcTCVJhHqvSDLC41CsxWGFUawpkR6uOoQcDQ8fZ0N1RZaeqz2aAB
 m/eDwIgISQtbR/dkIoq+uVc9mOMoehHbLOWBcrT1xfwiwqr8D0BJEGtBg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="358459230"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="358459230"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 05:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="643641385"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga001.jf.intel.com with ESMTP; 26 Aug 2022 05:21:08 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 17:47:41 +0530
Message-Id: <20220826121741.25485-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20220826121741.25485-1-animesh.manna@intel.com>
References: <20220826121741.25485-1-animesh.manna@intel.com>
MIME-Version: 1.0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As part of die area reduction max input source modified to 4096
for MTL so modified range check logic of scaler.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4092679be21e..bb40b639ff5d 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -158,10 +158,10 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
 	/* range checks */
 	if (src_w < SKL_MIN_SRC_W || src_h < SKL_MIN_SRC_H ||
 	    dst_w < SKL_MIN_DST_W || dst_h < SKL_MIN_DST_H ||
-	    (DISPLAY_VER(dev_priv) >= 11 &&
+	    (DISPLAY_VER(dev_priv) >= 11 && !IS_METEORLAKE(dev_priv) &&
 	     (src_w > ICL_MAX_SRC_W || src_h > ICL_MAX_SRC_H ||
 	      dst_w > ICL_MAX_DST_W || dst_h > ICL_MAX_DST_H)) ||
-	    (DISPLAY_VER(dev_priv) < 11 &&
+	    ((DISPLAY_VER(dev_priv) < 11 && IS_METEORLAKE(dev_priv)) &&
 	     (src_w > SKL_MAX_SRC_W || src_h > SKL_MAX_SRC_H ||
 	      dst_w > SKL_MAX_DST_W || dst_h > SKL_MAX_DST_H)))	{
 		drm_dbg_kms(&dev_priv->drm,
-- 
2.29.0

