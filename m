Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB8A48D695
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 12:18:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2B5C10E370;
	Thu, 13 Jan 2022 11:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B8110E370
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 11:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642072704; x=1673608704;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HnQ0gZCeg5sshb149i6E1B+jek8Ku3I31z77YA2ETcM=;
 b=Z0hiCFiUr+TdspxPLfZftwT7pvdrPqaa5LIOsszfAKCztNbYK1GTizff
 yqfT5ujyVcoabvhjDnHXkrI6Gk862hnWV5mzloxICOC7qEvUjsTzzb1r/
 4uzvY50scj3WuYGjKP4Nj1zRMx7j53fjpQknyTNfvgSIWp2jn0qKO8zQ0
 rhIpCv0reNMxDAtLHgkspFngp7IABO2log/omK2u4QSwy6wyFENbsQdcn
 J47TjpKDb2imDmHKcSSV+SNvkY260K1mqMo7eKMwvSQTfyc/tD9CQDGiW
 KiiTq5l0MOIhXZxsq4q8O/eni+cx+3nO09aygQ1oShnHsiA+uRtXDFy0H g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="224677494"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="224677494"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="475275592"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jan 2022 13:18:04 +0200
Message-Id: <cba9467d5830d135b176df7083ccb8ed603d0858.1642072583.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642072583.git.jani.nikula@intel.com>
References: <cover.1642072583.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/opregion: abstract the check for
 valid swsci function
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a reusable function for checking the SWSCI function.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 30 +++++++++++++------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index ad1afe9df6c3..e540e5b9073b 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -245,14 +245,10 @@ struct opregion_asle_ext {
 
 #define MAX_DSLP	1500
 
-static int swsci(struct drm_i915_private *dev_priv,
-		 u32 function, u32 parm, u32 *parm_out)
+static int check_swsci_function(struct drm_i915_private *i915, u32 function)
 {
-	struct opregion_swsci *swsci = dev_priv->opregion.swsci;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-	u32 main_function, sub_function, scic;
-	u16 swsci_val;
-	u32 dslp;
+	struct opregion_swsci *swsci = i915->opregion.swsci;
+	u32 main_function, sub_function;
 
 	if (!swsci)
 		return -ENODEV;
@@ -264,15 +260,31 @@ static int swsci(struct drm_i915_private *dev_priv,
 
 	/* Check if we can call the function. See swsci_setup for details. */
 	if (main_function == SWSCI_SBCB) {
-		if ((dev_priv->opregion.swsci_sbcb_sub_functions &
+		if ((i915->opregion.swsci_sbcb_sub_functions &
 		     (1 << sub_function)) == 0)
 			return -EINVAL;
 	} else if (main_function == SWSCI_GBDA) {
-		if ((dev_priv->opregion.swsci_gbda_sub_functions &
+		if ((i915->opregion.swsci_gbda_sub_functions &
 		     (1 << sub_function)) == 0)
 			return -EINVAL;
 	}
 
+	return 0;
+}
+
+static int swsci(struct drm_i915_private *dev_priv,
+		 u32 function, u32 parm, u32 *parm_out)
+{
+	struct opregion_swsci *swsci = dev_priv->opregion.swsci;
+	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	u32 scic, dslp;
+	u16 swsci_val;
+	int ret;
+
+	ret = check_swsci_function(dev_priv, function);
+	if (ret)
+		return ret;
+
 	/* Driver sleep timeout in ms. */
 	dslp = swsci->dslp;
 	if (!dslp) {
-- 
2.30.2

