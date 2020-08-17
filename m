Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E563245D80
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 09:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94EE78903B;
	Mon, 17 Aug 2020 07:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C678903B
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 07:11:58 +0000 (UTC)
IronPort-SDR: w3dspnHRNMtTL9Kjg3RRRxPxO8K0TQNO3q54JkJFLSQOoDtDnP69i2XJ+2R3EIyLGDFrjDUkqa
 i5KETzZpZEnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="142477020"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="142477020"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 00:11:57 -0700
IronPort-SDR: c6SGyWBJwh4phDQs6+6XHcA0ULhmcDz+LgdQZ3X3UTR5ox0ccaTY3yDXm9Vw8XBHYe3NABuywU
 JmgZuHp48J9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="333993170"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Aug 2020 00:11:55 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Aug 2020 13:14:18 +0530
Message-Id: <20200817074418.24045-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Add an extra vblank wait
 before fbc activation
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add an extra vblank before fbc is activated.
WA: 1409689360
Corruption with FBC around plane 1A enabling. In the Frame Buffer
Compression programming sequence "Display Plane Enabling with FBC"
add a wait for vblank between plane enabling step 1 and FBC enabling
step 2.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 2ab32e6532ff..0ed252ff2c53 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1085,10 +1085,12 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
 	if (!intel_fbc_can_activate(crtc))
 		return;
 
-	if (!fbc->busy_bits)
+	if (!fbc->busy_bits) {
+		intel_wait_for_vblank(dev_priv, crtc->pipe);
 		intel_fbc_hw_activate(dev_priv);
-	else
+	} else {
 		intel_fbc_deactivate(dev_priv, "frontbuffer write");
+	}
 }
 
 void intel_fbc_post_update(struct intel_atomic_state *state,
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
