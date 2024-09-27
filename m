Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A572C98872D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 16:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219EB10EC74;
	Fri, 27 Sep 2024 14:35:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fQEw6g6D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15BF810EC74
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 14:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727447751; x=1758983751;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mhiI3jof4G6t9aV08wAJ7QrHsUZtTYJ650UzWAZvi2k=;
 b=fQEw6g6D4mxQUFjpm2CFmDZ0u11TzcYdrU+lrTravTehDxL22ID8vDNg
 bGYiz2XqlC/6U7nftfZKGwsJggq5MQkSp3XOvSWUDpMc4xCq1Q7a6NxE5
 CtXfhmdNd4zIqj2heZFSj7Tj5DBdXwFFgDORNwc3C/IHKBSUVsfE1Y1HY
 guGTuFiMYXbJ4KOI9QPZIT6+rzAzuUKZQ7rclH2NYf1qlugJ6aowVyZG/
 4jjerehXXgrUOjw2559Xp1j47SbDAF5/16zlICHwoMidnBert4Y1xpC6a
 u400QXgMc5bnj847VoJiBjvjp5x5btOSWeYv70j/+TgTgp8odeJEU1BwY Q==;
X-CSE-ConnectionGUID: ShhIECH7Q2uEXtiwFzKMFQ==
X-CSE-MsgGUID: DvYyzSZ5SjKH0o86Weo+jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26102293"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26102293"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 07:35:51 -0700
X-CSE-ConnectionGUID: DDiV83IdQ8S+TY9wzhCy4g==
X-CSE-MsgGUID: rlwa6y2rRnWGKXYIbG5RFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72712114"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 07:35:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 17:35:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915: Introduce i915_has_legacy_blc_interrupt()
Date: Fri, 27 Sep 2024 17:35:42 +0300
Message-ID: <20240927143545.8665-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
References: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

i915_has_asle() is a bit of a mess. It does some kind of
partial check whether the platform has the legacy BLC
interrupt or not, and then it checks whether OpRegion
ASLE is present.

Let's split the legacy BLC interrupt check into its
own thing, and while at it let's make it accurate.
Currently it misses i85x (not a problem since gen2
never has OpRegion, nor do we currently call
i915_enable_asle_pipestat() on gen2), and it
doesn't reject ILK-M (not that anyone should call
this on ILK). The exlusion of VLV/CHV (where one
might even consider calling this, being gmch
platforms) only happens due to .is_mobile==false.

List the platforms that actually do have the legacy
BLC interrupt in a bit more explicit fashion.
i915gm/i945gm/i956gm/gm45 we can cover with a
display_ver+is_mobile check, pnv needs an exception
due to having a variant with is_mobile==false, and
i85x is the only relevant gen2 platform so easier to
handle on its own.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 20 +++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 6878dde85031..ba82830c464e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -272,14 +272,17 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 	intel_uncore_posting_read(&dev_priv->uncore, reg);
 }
 
-static bool i915_has_asle(struct drm_i915_private *i915)
+static bool i915_has_legacy_blc_interrupt(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	if (!IS_PINEVIEW(i915) && !IS_MOBILE(i915))
-		return false;
+	if (IS_I85X(i915))
+		return true;
 
-	return intel_opregion_asle_present(display);
+	if (IS_PINEVIEW(i915))
+		return true;
+
+	return IS_DISPLAY_VER(display, 3, 4) && IS_MOBILE(i915);
 }
 
 /**
@@ -288,7 +291,12 @@ static bool i915_has_asle(struct drm_i915_private *i915)
  */
 void i915_enable_asle_pipestat(struct drm_i915_private *dev_priv)
 {
-	if (!i915_has_asle(dev_priv))
+	struct intel_display *display = &dev_priv->display;
+
+	if (!intel_opregion_asle_present(display))
+		return;
+
+	if (!i915_has_legacy_blc_interrupt(display))
 		return;
 
 	spin_lock_irq(&dev_priv->irq_lock);
-- 
2.45.2

