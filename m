Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CAE967B9E6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 19:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3126010E813;
	Wed, 25 Jan 2023 18:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C3410E811
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 18:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674672764; x=1706208764;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Idq3kwdJMFn++0TYEPI2FSs2JBOrQTiv6BCAz+ban1c=;
 b=i7dAzY9zeNxuy1Wr4H56kG3y3bkJn/nG8duozUx4C2hSP/mHPxt/jfm2
 fisAEajts1lig+7YSbMMey+gdz+F8jlmQ16f96ZjHciuaZjXart+fOdtq
 nmP2nLC+neLLiNuXv/CI2GEdB1u4WjX0RygnQ8VIiWUT2OTZ7UOh3lqAH
 WUpmExIczIOw6zwizGzOVPMyDfj5MpDPu981ZBoQoTsQtDbfXuW1RFKpm
 tCpx/ZC1nBVFsPoBulmMVJFil7MCvcbbGkrxWAedbi5cZMO3CcVlqt3xJ
 gfRlM+VsLOD2UNwuCwFMJVU+CSt3ZDVxEhDjm7rBZENqMUu/GLvoD6fjV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="326671503"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="326671503"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 10:52:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="655912153"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="655912153"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 25 Jan 2023 10:52:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Jan 2023 20:52:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 20:52:31 +0200
Message-Id: <20230125185234.21599-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Undo rmw damage to gen3 error
 interrupt handler
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The gen2/gen3 irq code is supposed to be identical apart
from the 32bit vs. 16bit access width. The recent change
to intel_de_rmw() ruined that symmetry. Restore it to avoid
needless mental gymnastics when comparing the two codepaths.

And while at it remove the extra eir!=0 check that somehow
ended up in the gen2 codepath only.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 240d5e198904..b45d426a5bd5 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3510,9 +3510,7 @@ static void i8xx_error_irq_ack(struct drm_i915_private *i915,
 	u16 emr;
 
 	*eir = intel_uncore_read16(uncore, EIR);
-
-	if (*eir)
-		intel_uncore_write16(uncore, EIR, *eir);
+	intel_uncore_write16(uncore, EIR, *eir);
 
 	*eir_stuck = intel_uncore_read16(uncore, EIR);
 	if (*eir_stuck == 0)
@@ -3548,7 +3546,8 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
 {
 	u32 emr;
 
-	*eir = intel_uncore_rmw(&dev_priv->uncore, EIR, 0, 0);
+	*eir = intel_uncore_read(&dev_priv->uncore, EIR);
+	intel_uncore_write(&dev_priv->uncore, EIR, *eir);
 
 	*eir_stuck = intel_uncore_read(&dev_priv->uncore, EIR);
 	if (*eir_stuck == 0)
@@ -3564,7 +3563,8 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
 	 * (or by a GPU reset) so we mask any bit that
 	 * remains set.
 	 */
-	emr = intel_uncore_rmw(&dev_priv->uncore, EMR, ~0, 0xffffffff);
+	emr = intel_uncore_read(&dev_priv->uncore, EMR);
+	intel_uncore_write(&dev_priv->uncore, EMR, 0xffffffff);
 	intel_uncore_write(&dev_priv->uncore, EMR, emr | *eir_stuck);
 }
 
-- 
2.39.1

