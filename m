Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31F24B0AF7
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 11:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032EC10E7E4;
	Thu, 10 Feb 2022 10:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF37010E7EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 10:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644489424; x=1676025424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HnQ0gZCeg5sshb149i6E1B+jek8Ku3I31z77YA2ETcM=;
 b=iww9rB0TT5q4VB18UqfpArBcl7kFNwO9T0iRE9pQCUg/9Ou3WT+1hxd/
 B8WCID/261SIWcjVm6YKUX6Vn6pzWpwHDZKdmN4idcFbhRZncwWZCbm85
 Y4DIElRgqBN7+1++tY/mZK5TBAZHNNFkaB9HCe9vvw7iny7VwArvjcNGx
 Lximk6KVJNPg04bsxZ8PY8+aHyTTwgviyXaAgIiKVYFJW0eADDe6FeHun
 B5czzk02iAqadfT46ltxIXlD06sVOsOssWxQw+Z3kI6E6yuSWCynhdlIt
 u/hySVVHJrYu7lBP3YE3G2Ib011EYg5kEkYT5HOBsq10uk1O/l9D7XEPy A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="248294213"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="248294213"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:37:04 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="485637714"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:37:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:36:43 +0200
Message-Id: <778f8716ec44adad3cf95a7bb327a7c8e981291d.1644489329.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644489329.git.jani.nikula@intel.com>
References: <cover.1644489329.git.jani.nikula@intel.com>
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

