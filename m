Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D64095E68CB
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 18:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF8B110E232;
	Thu, 22 Sep 2022 16:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B1ED10E232
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 16:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663865361; x=1695401361;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pEvkBQtpk90v3RgEIvUTrGXYgcZoJnlm33FonF2Y9k8=;
 b=kX2TlyTZMVKAlPNBu8LOmHzv2VRLcVRj+OZe4FV6HLBty1RMqQ1a+ycW
 vAtIQZzpdbYsWcBuYmczuML9QG5H2Xl6KqZJgrJ9CEJRrG+oMTsfikBh5
 qUDElDMrFVr0X/wZWwMTSVqxFDGA0K1h51wmolXqsZz0Jonp5Ik6sWpWo
 W8uVFCSqHT/miyWN2HtMhZ/J6r1pgawZnpDGqmw9gGMrwHF2XFLnnwoFH
 txGHfH0F1yaK6Cz+EkR1NNGR10xEysZAvcxGLaVbu50o/g4OY/FQS7g11
 9yylMMfrQCaJj+reMNNwlZtd0Pgi3qKSOl1/lPq7s6bK0rVRIYoJHkNIE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="300342735"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="300342735"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 09:49:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="619867732"
Received: from msamad-mobl1.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.212.20.48])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 09:49:19 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Sep 2022 13:49:49 -0300
Message-Id: <20220922164949.163985-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Move hotplug inversion logic into
 separate helper
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use *_hpd_invert() helpers whenever possible to isolate logic specific
to hotplug inversion from common HPD setup logic to improve readability
and maintainability of the source code.

While we only define dg1_hpd_invert() here, future platforms are likely
to have different hotplug inversion needs, thus it makes sense grouping
different implementations under a common suffix.

v2: Fix coding style and prefer to use small *_hdp_invert() helpers
    instead of a generic one.

CC: Jani Nikula <jani.nikula@linux.intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index de06f293e173..87cb05b3b6ce 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3411,17 +3411,18 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
 	}
 }
 
+static void dg1_hpd_invert(struct drm_i915_private *i915)
+{
+	u32 val = (INVERT_DDIA_HPD |
+		   INVERT_DDIB_HPD |
+		   INVERT_DDIC_HPD |
+		   INVERT_DDID_HPD);
+	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN1, 0, val);
+}
+
 static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
 {
-	u32 val;
-
-	val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
-	val |= (INVERT_DDIA_HPD |
-		INVERT_DDIB_HPD |
-		INVERT_DDIC_HPD |
-		INVERT_DDID_HPD);
-	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
-
+	dg1_hpd_invert(dev_priv);
 	icp_hpd_irq_setup(dev_priv);
 }
 
-- 
2.37.3

