Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6684B127B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 17:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC5C10E8A8;
	Thu, 10 Feb 2022 16:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB3910E8A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 16:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644509782; x=1676045782;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wQbdN16TwSytsjscXMu7Rydetui1qZ0IYx47ThMA+NE=;
 b=KelkyW90gt/il0gXQnoEZtm7SyCvFCo+uvzRu15Z6+9+sfMZ3mGwR+SJ
 rfqgsmSvn9M+qu0aUuG+GmNzSPWtIom3sNgxDmJ6bzR5heW4Eiufc9cFy
 taircy9iDCctaHvfV/tFLihGCYBjfxZ41Cnw+uck4H94bdn1sySXYXZbQ
 GV9Xg4XNn2rLfbWUKJ4a4XVqgxPk5/H6KpWsABqooacBDBPmXFVlAVpTp
 f9W0O8ADP/NGCIIm8MMxKyVbRdJRfrCcpxGVYJF9DcRLfBPiaAJgWhhT2
 9WTKDbvNDzK+w5gUAcrl2OSmq0JUOXarEGM4Y9h0fUetBKsbBwh6qhq1W g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="247111671"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="247111671"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 08:16:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="537353044"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 08:16:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 18:16:03 +0200
Message-Id: <20220210161603.647254-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <7b61b8d9fa091f6d015e110006991cfd54690f36.1644489329.git.jani.nikula@intel.com>
References: <7b61b8d9fa091f6d015e110006991cfd54690f36.1644489329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/opregion: handle SWSCI Mailbox #2
 obsoletion
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

Opregion Mailbox #2 is obsolete for SWSCI usage in opregion v2.x, and
repurposed in opregion v3.x. Warn about obsole mailbox presence in v2.x,
and ignore with an error for v3.x.

v2: Demote drm_warn() to drm_dbg() on opregion v2.x

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index ce3d44cc2461..11de19da0948 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -932,9 +932,17 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	}
 
 	if (mboxes & MBOX_SWSCI) {
-		drm_dbg(&dev_priv->drm, "SWSCI supported\n");
-		opregion->swsci = base + OPREGION_SWSCI_OFFSET;
-		swsci_setup(dev_priv);
+		u8 major = opregion->header->over.major;
+
+		if (major >= 3) {
+			drm_err(&dev_priv->drm, "SWSCI Mailbox #2 present for opregion v3.x, ignoring\n");
+		} else {
+			if (major >= 2)
+				drm_dbg(&dev_priv->drm, "SWSCI Mailbox #2 present for opregion v2.x\n");
+			drm_dbg(&dev_priv->drm, "SWSCI supported\n");
+			opregion->swsci = base + OPREGION_SWSCI_OFFSET;
+			swsci_setup(dev_priv);
+		}
 	}
 
 	if (mboxes & MBOX_ASLE) {
-- 
2.30.2

