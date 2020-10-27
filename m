Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1FF29A3AA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 05:46:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D2966EAC8;
	Tue, 27 Oct 2020 04:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57D606EAC8
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 04:46:39 +0000 (UTC)
IronPort-SDR: GVJ0cBVs1PII/mue9BsWv14LndmoJs6UZG74bg0CON7ro10+bDjQ7gJZ5PchcftCoWapdV0PFl
 tsU9vOvDlN8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9786"; a="168126425"
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="168126425"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 21:46:38 -0700
IronPort-SDR: UxFo4z5WzgF+zypyPIbX90GjTVbHpp3rxM1ef/6tzvsl78HsKnwBmcUIZRIOf93nSAUHuGnVEk
 wg41nvQN2yqQ==
X-IronPort-AV: E=Sophos;i="5.77,422,1596524400"; d="scan'208";a="360619889"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2020 21:46:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Oct 2020 21:46:17 -0700
Message-Id: <20201027044618.719064-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201027044618.719064-1-lucas.demarchi@intel.com>
References: <20201027044618.719064-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: remove debug message from
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
2.29.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
