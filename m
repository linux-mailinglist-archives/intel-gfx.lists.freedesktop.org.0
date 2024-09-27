Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B4B98872F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 16:35:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D53DC10EC77;
	Fri, 27 Sep 2024 14:35:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ltrkJ45P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBECF10EC77
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727447754; x=1758983754;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/mlPkPEbVkVuV5rNZopFF+YZTnFsKWWrSwx0f/s4DRM=;
 b=ltrkJ45PdQYuVBsRBrxqfhhb+2dZqjVgdbGSG6MDg7J7pEK/Lzdcy0aT
 7DxKuwxkMe16F3/ZW1Hcds9LccTtyHECMuDT3JxbIZP7nm95RZ2S8RPci
 2OVcoX60CcWF5kvGNGGzssOuFBQHllParCEMD2Lt/dAT+n+BwN8lDvVaW
 bXFJC1DUxn8cQhBCAWHu2ANK11nkKk4ju8OPj9u4/Tv2vIXHjd04Ii3jW
 AzCE4OVCiqAbg2l5uchG9OLQNo9u9U9O0MBj5lMnJrTq7UmcqJDDIErsN
 kPgvJ4Pyy2G1ZykiJkFPcGSGuFbLqM9NXHgQYrfCYlM54WzUdWEbuUFGg A==;
X-CSE-ConnectionGUID: kTPMwCEuRGWVjaoPp7B7Ag==
X-CSE-MsgGUID: fU/jQ2khTqKu0jdY23yFhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26102297"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26102297"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 07:35:53 -0700
X-CSE-ConnectionGUID: 3LI52rZiQ4ii9d5bxHQt0Q==
X-CSE-MsgGUID: om1GluocRIOW6iww1gx+FQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72712115"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 07:35:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 17:35:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915: Clean up gen3 hotplug irq setup
Date: Fri, 27 Sep 2024 17:35:43 +0300
Message-ID: <20240927143545.8665-3-ville.syrjala@linux.intel.com>
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

For the "always on/unmasked" interrupts we initialize
dev_priv->irq_mask first, then enable_mask. Follow the
same order for the hotplug interrupt so that things are
a bit less confusing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index a784803f709a..ee7a2a49f08e 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1065,10 +1065,10 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 		I915_USER_INTERRUPT;
 
 	if (I915_HAS_HOTPLUG(dev_priv)) {
-		/* Enable in IER... */
-		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
 		/* and unmask in IMR */
 		dev_priv->irq_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
+		/* Enable in IER... */
+		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
 	}
 
 	GEN3_IRQ_INIT(uncore, GEN2_, dev_priv->irq_mask, enable_mask);
-- 
2.45.2

