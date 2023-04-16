Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F16C6E3A04
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Apr 2023 17:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7448410E26C;
	Sun, 16 Apr 2023 15:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BBC810E265
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Apr 2023 15:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681660481; x=1713196481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sclp6OeYtXMwYNwRIljzpR9aJ+2vaKmq5CTSOZJQ3Z4=;
 b=ght6/rXcVg+yFOSumzr7gABV6flNp79QosfUh0LbnIq2luq7TTgCcAzK
 N8aBZYyCKUkwvZB6EgKTjiV+9thiR6avoR2lsDlaPAZ2D49GFzawKQ6Ra
 o/XswB13jXVobv/7grP3qRP2AZle6Dfyr6yD8QxUgKF9DE6DG50SxRVzF
 V5HXtc+eEVvAm450NlLxNeuahaKAkQ/N8EHGXZ68JyLZRUUkrIDMvkF2v
 KywydRqnbr2/L5EhqWlRsCFcRiR0GFYFdMpEEzbCGdqkgnMFzdTq6Luuy
 dojtvfGUXJ0xvhjjeJ3/Uqz0hgHPJWMPDyjuI9wMefbqwkDiEUdm2DS2H Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="328902097"
X-IronPort-AV: E=Sophos;i="5.99,202,1677571200"; d="scan'208";a="328902097"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2023 08:54:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="640698697"
X-IronPort-AV: E=Sophos;i="5.99,202,1677571200"; d="scan'208";a="640698697"
Received: from yanghuib-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.34.77])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2023 08:54:38 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 16 Apr 2023 18:54:16 +0300
Message-Id: <20230416155417.174418-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230416155417.174418-1-vinod.govindapillai@intel.com>
References: <20230416155417.174418-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 3/4] drm/i915: store the peak bw per QGV point
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

In MTL onwards, pcode locks the GV point based on the peak BW
of a QGV point. So store the peak BW of all the QGV points.

Bspec: 64636

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c           | 7 +++++--
 drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 57f8204162dd..bb2b8e31f9ff 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -531,10 +531,13 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 
 			bi->deratedbw[j] = min(maxdebw,
 					       bw * (100 - sa->derating) / 100);
+			bi->peakbw[j] = sp->dclk * num_channels *
+					qi.channel_width / 8;
 
 			drm_dbg_kms(&dev_priv->drm,
-				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
-				    i, j, bi->num_planes, bi->deratedbw[j]);
+				    "BW%d / QGV %d: num_planes=%d deratedbw=%u peakbw: %u\n",
+				    i, j, bi->num_planes, bi->deratedbw[j],
+				    bi->peakbw[j]);
 		}
 
 		for (j = 0; j < qi.num_psf_points; j++) {
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index e36f88a39b86..9f66d734edf6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -314,6 +314,8 @@ struct intel_display {
 			unsigned int deratedbw[I915_NUM_QGV_POINTS];
 			/* for each PSF GV point */
 			unsigned int psf_bw[I915_NUM_PSF_GV_POINTS];
+			/* Peak BW for each QGV point */
+			unsigned int peakbw[I915_NUM_QGV_POINTS];
 			u8 num_qgv_points;
 			u8 num_psf_gv_points;
 			u8 num_planes;
-- 
2.34.1

