Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EED004B0AFE
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 11:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189F910E7DC;
	Thu, 10 Feb 2022 10:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0FA10E7DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 10:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644489459; x=1676025459;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DRRmwfwIHsTiSv74VRxZmR0SHFySaaKXm8ENzejsA54=;
 b=f8jZQv2oiEzfzXAz2Xx3ecIVWhKRHBC0ekSUBaEDzrdQfSapQI8Hje3y
 5hO5iRMuLwF+DU3YwWjjsKGibdUT3MSvBNAiUCImEs8nwIzTUqi603HhV
 8+egEEGFqEJmbDYy8fO4ByKAvrSdXjz95mxERq+Vipg0HIgS2Y7SVA+Jn
 lsbgOLGDd+/hXAdptq8X3vuudXSv6VA5y64Nn6q9Zu9sYerOW4gmn6oSa
 L4pHFWyrsxdkUHmaa26iZjUUDWO7H7LyfDRBlS2pkd1riBKEpfw5Rmfsa
 a6+fSiCDDaVwfreWvvaBr0xIs2huqkJoe1Y/QJMdPWhuxHuHKo6hHL0SK A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="248294265"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="248294265"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:37:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="485637806"
Received: from dhogarty-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.10.221])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 02:37:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:36:46 +0200
Message-Id: <42fd9cd777c5cc9a8d48db9dd8306924c735918e.1644489329.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1644489329.git.jani.nikula@intel.com>
References: <cover.1644489329.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/opregion: debug log about Mailbox
 #2 for backlight
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

Start debug logging about the presence of the new Mailbox #2 for
backlight. Actual support is to be added later.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 6e32ed6bbf4e..b1ad11b2ebb3 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -47,10 +47,11 @@
 #define OPREGION_ASLE_EXT_OFFSET	0x1C00
 
 #define OPREGION_SIGNATURE "IntelGraphicsMem"
-#define MBOX_ACPI      (1<<0)
-#define MBOX_SWSCI     (1<<1)
-#define MBOX_ASLE      (1<<2)
-#define MBOX_ASLE_EXT  (1<<4)
+#define MBOX_ACPI		BIT(0)	/* Mailbox #1 */
+#define MBOX_SWSCI		BIT(1)	/* Mailbox #2 (obsolete from v2.x) */
+#define MBOX_ASLE		BIT(2)	/* Mailbox #3 */
+#define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
+#define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */
 
 struct opregion_header {
 	u8 signature[16];
@@ -957,6 +958,10 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		opregion->asle_ext = base + OPREGION_ASLE_EXT_OFFSET;
 	}
 
+	if (mboxes & MBOX_BACKLIGHT) {
+		drm_dbg(&dev_priv->drm, "Mailbox #2 for backlight present\n");
+	}
+
 	if (intel_load_vbt_firmware(dev_priv) == 0)
 		goto out;
 
-- 
2.30.2

