Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D6031DEAF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 19:00:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E62D6E9AD;
	Wed, 17 Feb 2021 18:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 326CA6E9AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 18:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613584841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3Qe+teJ2nzDbYW+uGiWHaysdgcaJ0xIbuFYTMH9KlGA=;
 b=irk2Pag8cDzse9h0vSwuqNxJIqAQYnb6wwiRPPBlTo7ibXUck3HizDEySWKcFP4NwmMZ92
 jgHtp0KNU25HaZvPh2IeoprL4PKDIZNSdNygpOwKUMOWtPoIZMSIq95Pu2aXOnekz3bZbD
 KslUJSzt/N7P7UCvzUQo15LXit4RiLQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-544-QFONGovwNWCfFy17PtYznw-1; Wed, 17 Feb 2021 13:00:39 -0500
X-MC-Unique: QFONGovwNWCfFy17PtYznw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE8451009617;
 Wed, 17 Feb 2021 18:00:37 +0000 (UTC)
Received: from Whitewolf.redhat.com (ovpn-115-41.rdu2.redhat.com
 [10.10.115.41])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C957260C61;
 Wed, 17 Feb 2021 18:00:34 +0000 (UTC)
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org,
	Imre Deak <imre.deak@intel.com>
Date: Wed, 17 Feb 2021 13:00:16 -0500
Message-Id: <20210217180016.1937401-1-lyude@redhat.com>
In-Reply-To: <20210217025337.1929015-1-lyude@redhat.com>
References: <20210217025337.1929015-1-lyude@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Subject: [Intel-gfx] [PATCH v4] drm/i915/gen9bc: Handle TGP PCH during
 suspend/resume
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
Cc: David Airlie <airlied@linux.ie>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>

For Legacy S3 suspend/resume GEN9 BC needs to enable and
setup TGP PCH.

v2:
* Move Wa_14010685332 into it's own function - vsyrjala
* Add TODO comment about figuring out if we can move this workaround - imre
v3:
* Rename cnp_irq_post_reset() to cnp_display_clock_wa()
* Add TODO item mentioning we need to clarify which platforms this
  workaround applies to
* Just use ibx_irq_reset() in gen8_irq_reset(). This code should be
  functionally equivalent on gen9 bc to the code v2 added
* Drop icp_hpd_irq_setup() call in spt_hpd_irq_setup(), this looks to be
  more or less identical to spt_hpd_irq_setup() minus additionally enabling
  one port. Will update i915 to use icp_hpd_irq_setup() for ICP in a
  separate patch.
v4:
* Revert Wa_14010685332 system list in comments to how it was before
* Add back HAS_PCH_SPLIT() check before calling ibx_irq_reset()

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Signed-off-by: Lyude Paul <lyude@redhat.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 49 +++++++++++++++++++++------------
 1 file changed, 32 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 98145a7f28a4..9b56a8f81e1a 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3040,6 +3040,24 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
+static void cnp_display_clock_wa(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+
+	/*
+	 * Wa_14010685332:cnp/cmp,tgp,adp
+	 * TODO: Clarify which platforms this applies to
+	 * TODO: Figure out if this workaround can be applied in the s0ix suspend/resume handlers as
+	 * on earlier platforms and whether the workaround is also needed for runtime suspend/resume
+	 */
+	if (INTEL_PCH_TYPE(dev_priv) == PCH_CNP ||
+	    (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP && INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
+		intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS,
+				 SBCLK_RUN_REFCLK_DIS);
+		intel_uncore_rmw(uncore, SOUTH_CHICKEN1, SBCLK_RUN_REFCLK_DIS, 0);
+	}
+}
+
 static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
@@ -3063,6 +3081,8 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
 
 	if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_reset(dev_priv);
+
+	cnp_display_clock_wa(dev_priv);
 }
 
 static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
@@ -3104,15 +3124,7 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		GEN3_IRQ_RESET(uncore, SDE);
 
-	/* Wa_14010685332:cnp/cmp,tgp,adp */
-	if (INTEL_PCH_TYPE(dev_priv) == PCH_CNP ||
-	    (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
-	     INTEL_PCH_TYPE(dev_priv) < PCH_DG1)) {
-		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
-				 SBCLK_RUN_REFCLK_DIS, SBCLK_RUN_REFCLK_DIS);
-		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
-				 SBCLK_RUN_REFCLK_DIS, 0);
-	}
+	cnp_display_clock_wa(dev_priv);
 }
 
 static void gen11_irq_reset(struct drm_i915_private *dev_priv)
@@ -3764,9 +3776,19 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	}
 }
 
+static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	u32 mask = SDE_GMBUS_ICP;
+
+	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
+}
+
 static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-	if (HAS_PCH_SPLIT(dev_priv))
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+		icp_irq_postinstall(dev_priv);
+	else if (HAS_PCH_SPLIT(dev_priv))
 		ibx_irq_postinstall(dev_priv);
 
 	gen8_gt_irq_postinstall(&dev_priv->gt);
@@ -3775,13 +3797,6 @@ static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
 	gen8_master_intr_enable(dev_priv->uncore.regs);
 }
 
-static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 mask = SDE_GMBUS_ICP;
-
-	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
-}
 
 static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
 {
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
