Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C471ED7EB
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jun 2020 23:15:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A88D89EB1;
	Wed,  3 Jun 2020 21:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50A9C89EAC
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 21:15:45 +0000 (UTC)
IronPort-SDR: f+pVfe0NHc/foMlfh85eM1x09SpQiMT5BX0+mwCT5KHPmLJEQEldlw+LiLztusCOz3fjKDClw1
 kyw2YDKKNh5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 14:15:45 -0700
IronPort-SDR: BjHpTvWzsBbeUQyKkaO1vSl/JK8qV7ENF5/QSwN7mhqg/louJrwfpjDBCrPBLN010bF0fRJSMh
 7S3v+2osJ7yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,469,1583222400"; d="scan'208";a="258715080"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jun 2020 14:15:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 14:15:17 -0700
Message-Id: <20200603211529.3005059-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200603211529.3005059-1-matthew.d.roper@intel.com>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 03/15] drm/i915/rkl: RKL has no
 MBUS_ABOX_CTL{1, 2}
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

Although RKL is a gen12 platform, it doesn't have the two extra
instances of the ABOX control register; we should only program
the single MBUS_ABOX_CTL on this platform.

Bspec: 50096
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2c1ce50b572b..37847b3d733c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4772,7 +4772,7 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
 		MBUS_ABOX_BW_CREDIT(1);
 
 	intel_de_rmw(dev_priv, MBUS_ABOX_CTL, mask, val);
-	if (INTEL_GEN(dev_priv) >= 12) {
+	if (INTEL_GEN(dev_priv) >= 12 && !IS_ROCKETLAKE(dev_priv)) {
 		intel_de_rmw(dev_priv, MBUS_ABOX1_CTL, mask, val);
 		intel_de_rmw(dev_priv, MBUS_ABOX2_CTL, mask, val);
 	}
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
