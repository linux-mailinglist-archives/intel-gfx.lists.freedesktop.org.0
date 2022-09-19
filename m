Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 446355BCFB5
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 16:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FB789B57;
	Mon, 19 Sep 2022 14:56:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F2D89B57
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Sep 2022 14:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663599383; x=1695135383;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WA3tzaD1xY1uCqr6DcV0NyNA312ME0sLryKjj52qZu4=;
 b=kNydcKiQ+HUpEHP7fmDdw+x0T4al8q015NE9u1EPQEjn22JP6UbetHrK
 N5hczyqXdCuGOqvDeefeYwUCG83BHyI5Eysvd6PRmLrYNfIJPbIKuPwuF
 nG3xsAyMHQVYVUrUAPUm5KrWJRLi3eX+PqIFmVSYPSjEZD8EmtoDOgni1
 ox0rvm6xqfvHKjMhVn08OF6/RvwsEQmfn/nuPzGipbH/F1LYmnKN/su7O
 6jDyW1u2RfqEiN3tBbFzNBgp95MglK1P8P13GNZB+zxwLBOt+/EPhfVox
 y3e81vt/zvCynIxhmrXUQHb+B/W+acF7DEKsJ26AddT92tiVfA/cAYcDI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="300795123"
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="300795123"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 07:56:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,328,1654585200"; d="scan'208";a="687002920"
Received: from heyingji-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.209.155.230])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 07:56:21 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Sep 2022 11:56:59 -0300
Message-Id: <20220919145659.293492-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make the code more readable, which will be more apparent as new
platforms with different hotplug inversion needs are added.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index de06f293e173..c53d21ae197f 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
 
+static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
+{
+	u32 invert_bits;
+
+	if (HAS_PCH_DG1(dev_priv))
+		invert_bits = INVERT_DDIA_HPD |
+			      INVERT_DDIB_HPD |
+			      INVERT_DDIC_HPD |
+			      INVERT_DDID_HPD;
+	else
+		return;
+
+	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, 0, invert_bits);
+}
+
 static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
 			       enum hpd_pin pin)
 {
@@ -3413,15 +3428,7 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
 
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
+	setup_hotplug_inversion(dev_priv);
 	icp_hpd_irq_setup(dev_priv);
 }
 
-- 
2.37.3

