Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 698A615C00D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 15:07:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC7A6E303;
	Thu, 13 Feb 2020 14:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 487756E30C
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 14:07:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 06:07:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="228151105"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga008.fm.intel.com with ESMTP; 13 Feb 2020 06:07:26 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2020 16:04:10 +0200
Message-Id: <20200213140412.32697-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
References: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1 1/3] drm/i915: Ensure no conflicts with BIOS
 when updating Dbuf
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGL BIOS seems to enable both DBuf slices ocasionally, depending
how many displays are connected, while i915 according to BSpec
was powering on S1 DBuf slice, until a modeset was done.

This was causing a brief flash during the boot as we were
disabling slice, previously used by BIOS with that.

To prevent this, now we are ensuring tht we are enabling
_at least_ one slice, but if there are more, let's not
power them off.

Fixes: ff2cd8635e41 ("drm/i915: Correctly map DBUF slices to pipes")
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 53056def5414..b9a9cbad8a03 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -4470,11 +4470,13 @@ void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
 
 static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
 {
+	skl_ddb_get_hw_state(dev_priv);
 	/*
-	 * Just power up 1 slice, we will
+	 * Just power up at least 1 slice, we will
 	 * figure out later which slices we have and what we need.
 	 */
-	icl_dbuf_slices_update(dev_priv, BIT(DBUF_S1));
+	icl_dbuf_slices_update(dev_priv, dev_priv->enabled_dbuf_slices_mask |
+			       BIT(DBUF_S1));
 }
 
 static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
