Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 298B748D699
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 12:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F5210E645;
	Thu, 13 Jan 2022 11:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8261210E39A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 11:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642072717; x=1673608717;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DRRmwfwIHsTiSv74VRxZmR0SHFySaaKXm8ENzejsA54=;
 b=fex2K6XlVhUWJGZZ04ns7IqXjJG3aA/uDPnjTrn7v7TCQHVp6LOIPkgq
 Gahn+uyVXwXA6WWLI/2U2g9OlCuD6rC8n4K4S6V67AUhwjnw/EYTfrBmL
 viJiJZBs+eEBHUTuGJ/tMGthTYQKTKGg2gqrpnKF2BrOfLvsHytMRhRY+
 +GDNfqZrNdJeQK0LoI5rwMnn1awEVVm8sbJVTO6aEHaDlLc2dZ/MYPilZ
 0DZnw+NIGNYORfja1i9LslgbvQDQLdAM+aKj4rTX4Je0AQ5Hk5sSzd3XB
 yYXEmPGM+kuKO2fRUwOufuzJMUHRF9kSFUCAz8IaZ2MH3uel4iNCc4Kjk w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="242804491"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="242804491"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="623817888"
Received: from joneil3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.221])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 03:18:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jan 2022 13:18:07 +0200
Message-Id: <848a4b751da2dfd90dd7f769320483f8b7b05a22.1642072583.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642072583.git.jani.nikula@intel.com>
References: <cover.1642072583.git.jani.nikula@intel.com>
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

