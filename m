Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A37CE2AA093
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 23:56:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D2896EB4B;
	Fri,  6 Nov 2020 22:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E08436EB43
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 22:55:53 +0000 (UTC)
IronPort-SDR: bz2OA/ViA6HECod0jUPN1KVjLlj6s2hCcDCrL3YoxrdSwbzV2FPNN2FgATCEntjQhQ+AzVvv9w
 uRYvluWD5kAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="167022948"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="167022948"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:53 -0800
IronPort-SDR: GqJGSvICkTmIixKnLeZSqGmQ5hj1SCYkbkEgIv03DS8a+LfUnZUO+9VsATSMWprF7jVr3H8D5F
 UsXP2vspx9DQ==
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="540022757"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Nov 2020 14:55:30 -0800
Message-Id: <20201106225531.920641-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201106225531.920641-1-lucas.demarchi@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/8] drm/i915: move display-related to the end
 of intel_irq_init()
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

In intel_irq_init() move what's display/hpd related after what is gt and
guc. This makes it easier to support !HAS_DISPLAY() in future.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 2ab4edf7f25c..4faf7cb9c158 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4204,10 +4204,6 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 	struct drm_device *dev = &dev_priv->drm;
 	int i;
 
-	intel_hpd_init_pins(dev_priv);
-
-	intel_hpd_init_work(dev_priv);
-
 	INIT_WORK(&dev_priv->l3_parity.error_work, ivb_parity_work);
 	for (i = 0; i < MAX_L3_SLICES; ++i)
 		dev_priv->l3_parity.remap_info[i] = NULL;
@@ -4216,6 +4212,10 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 	if (HAS_GT_UC(dev_priv) && INTEL_GEN(dev_priv) < 11)
 		dev_priv->gt.pm_guc_events = GUC_INTR_GUC2HOST << 16;
 
+	intel_hpd_init_pins(dev_priv);
+
+	intel_hpd_init_work(dev_priv);
+
 	dev->vblank_disable_immediate = true;
 
 	/* Most platforms treat the display irq block as an always-on
-- 
2.29.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
