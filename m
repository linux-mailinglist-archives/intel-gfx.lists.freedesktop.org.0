Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F7A220053
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 23:53:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B986EA27;
	Tue, 14 Jul 2020 21:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6C2D6EA27
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 21:53:39 +0000 (UTC)
IronPort-SDR: ouLXKtwSl8LrF7hjKTLbf6yI1qYwGFRM5xfkMefbp37VXV9xkfdtwwCBbD02Ow1cmhNSxuoTzL
 QbdJfmW59rSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="147045951"
X-IronPort-AV: E=Sophos;i="5.75,353,1589266800"; d="scan'208";a="147045951"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 14:53:39 -0700
IronPort-SDR: ttE4h8SzL6UkRn0j5DxKBP+e7aBlL5oicqFKrZmyKly2f/TBo3ci4odgZMKurlShhKpMQgeU5c
 WnW7ixNWbENQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,353,1589266800"; d="scan'208";a="485506315"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 14 Jul 2020 14:53:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 14:53:25 -0700
Message-Id: <20200714215325.17260-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: remove debug message from
 error path
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

First check in the function is if swsci() is supported. All the error
paths are easy to figure out the reason, so remove the extra debug
message: it's normal not to support swsci() e.g. in dgfx.

v2: Rather than special case dgfx, just remove the debug message
    (from Ville)

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index de995362f428..4f77cf849171 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1007,12 +1007,8 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
 	int ret;
 
 	ret = swsci(dev_priv, SWSCI_GBDA_PANEL_DETAILS, 0x0, &panel_details);
-	if (ret) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Failed to get panel details from OpRegion (%d)\n",
-			    ret);
+	if (ret)
 		return ret;
-	}
 
 	ret = (panel_details >> 8) & 0xff;
 	if (ret > 0x10) {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
