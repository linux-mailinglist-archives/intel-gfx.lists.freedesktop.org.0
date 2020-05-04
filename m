Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 205A11C49D8
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 00:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A4C6E4DD;
	Mon,  4 May 2020 22:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE65B6E4B7
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 22:52:41 +0000 (UTC)
IronPort-SDR: +S9iiIz9o112R+Gi3bN1caqGT3ST9ICiBzfIItL8jflwng1sudgMVKuY/6T9CTz5Ql+4BS/iLe
 cdPCXnZ0/XtA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 15:52:41 -0700
IronPort-SDR: p3wvMXBjD3SZgMnHFTCN6Z7iYW0u0jLFKC9dTJwheYmELnFakhTaI7Y7Sxj7Dc5ll2JrQpX/EC
 9tK3DJ/slNQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="295646715"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 15:52:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 15:52:11 -0700
Message-Id: <20200504225227.464666-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200504225227.464666-1-matthew.d.roper@intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/22] drm/i915/rkl: Update memory bandwidth
 parameters
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

The RKL platform has different memory characteristics from past
platforms.  Update the values used by our memory bandwidth calculations
accordingly.

Bspec: 53998
Cc: James Ausmus <james.ausmus@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 6e7cc3a4f1aa..d435cc6019e4 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -176,6 +176,12 @@ static const struct intel_sa_info tgl_sa_info = {
 	.displayrtids = 256,
 };
 
+static const struct intel_sa_info rkl_sa_info = {
+	.deburst = 16,
+	.deprogbwlimit = 20, /* GB/s */
+	.displayrtids = 128,
+};
+
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
@@ -271,7 +277,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (IS_GEN(dev_priv, 12))
+	if (IS_ROCKETLAKE(dev_priv))
+		icl_get_bw_info(dev_priv, &rkl_sa_info);
+	else if (IS_GEN(dev_priv, 12))
 		icl_get_bw_info(dev_priv, &tgl_sa_info);
 	else if (IS_GEN(dev_priv, 11))
 		icl_get_bw_info(dev_priv, &icl_sa_info);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
