Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F8148D697
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 12:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5219E10E79A;
	Thu, 13 Jan 2022 11:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688A910E78F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 11:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642072712; x=1673608712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=axu/kqisqtVKCFJQDMK/7RDIVnIVT+Sqh9LCksVGx9k=;
 b=VYSyBzKSevdYbYtTD39DpV24sLZDZAaPQ9Z/XdUp1HgQYT58Tu44J1ed
 NDELGqqX3wVoD+XO+9nAP5zrW1eD3O/G1HdI+sF+5JpNiYZapAgtTCqn9
 uv5HNjSi/BT2fNg3gU3vrdSZnYPOfEqztRVqsLHHNf4hX59Gyi7sUuTKS
 D20Zyy6bb16iCqPoKSTEyjYXAhB9HmwkPXty+HZ7Olo/vHnqrVy4w3ohP
 Aw+z/653CdJcfuE5Zmr+dge5muBVnFNLCVjYo4fz318xF9DRZKiZWz1Bk
 ErkpFwiHaBnS1fy/Gd+z5UuMgGtR4ozDwmPpjpwCWSpmQPrV0XuvB62ac w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="268338994"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="268338994"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="691767150"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jan 2022 13:18:06 +0200
Message-Id: <04cb5c97ddda9794cfa4eb49e4cb46b841a3f86e.1642072583.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642072583.git.jani.nikula@intel.com>
References: <cover.1642072583.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/opregion: handle SWSCI Mailbox #2
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Opregion Mailbox #2 is obsolete for SWSCI usage in opregion v2.x, and
repurposed in opregion v3.x. Warn about obsole mailbox presence in v2.x,
and ignore with an error for v3.x.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index ce3d44cc2461..6e32ed6bbf4e 100644
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
+				drm_warn(&dev_priv->drm, "SWSCI Mailbox #2 present for opregion v2.x\n");
+			drm_dbg(&dev_priv->drm, "SWSCI supported\n");
+			opregion->swsci = base + OPREGION_SWSCI_OFFSET;
+			swsci_setup(dev_priv);
+		}
 	}
 
 	if (mboxes & MBOX_ASLE) {
-- 
2.30.2

