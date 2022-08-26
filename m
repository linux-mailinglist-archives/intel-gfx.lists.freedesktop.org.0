Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBBA5A27AF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 14:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5CD810E8D5;
	Fri, 26 Aug 2022 12:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D546D10E8BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 12:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661516475; x=1693052475;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Gu9H5mgRL0EGieQM5IUO7S7Ln16H90AKitpsoOrZKFI=;
 b=A3sQjVln4RAWfMpXtwT/DzACnDzDlWIKgnb78tE/wVNFmva9Ew+EJvqP
 P6e1W+7LMc62Z/9iuNWVDe2GIxJvj90pPQbxKsF5UTjB77tADMgoT4di7
 AE3YSbtU461srxv5C2WKtIEYTrFcHL3+Sc04uXTkyygnJtJ4kQyzPxf0T
 Y2MBFI/z6wbTENeR0A36Jij0LhFVVujdcKGNl3iakzgEc6OMV/AE3A2Ml
 nBaTCCMQUWHaSl6JQdr2rJEc2mAh+HEMoAglcaUTJCzVaIRQ8m57GZ8gJ
 FGGC0J6tXNv6tKn0c6brfiNHc8jcJ4yiBS8fO5bSnr1r6w0UEonSrl5ti g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="358459231"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="358459231"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 05:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="643641364"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga001.jf.intel.com with ESMTP; 26 Aug 2022 05:21:06 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Aug 2022 17:47:40 +0530
Message-Id: <20220826121741.25485-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Added restriction for plane
 downscaling
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

The second Scaler (i.e. Scaler 2) does not support vertical
downscaling (i.e. it's vertical scale factor must not be greater
than 1.0). So, vertical plane downscaling is not supported on MTL,
scale factor modified accordingly.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index bcfde81e4d08..6bfcda748e7b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1464,9 +1464,12 @@ static int skl_plane_max_scale(struct drm_i915_private *dev_priv,
 	 * whether we can use the HQ scaler mode. Assume
 	 * the best case.
 	 * FIXME need to properly check this later.
+	 * FIXME On MTL, adjust specific scaler's downscaling capability.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 10 ||
-	    !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
+	if (IS_METEORLAKE(dev_priv))
+		return 0x10000;
+	else if (DISPLAY_VER(dev_priv) >= 10 ||
+		 !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
 		return 0x30000 - 1;
 	else
 		return 0x20000 - 1;
-- 
2.29.0

