Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C457C2464D7
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 12:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B80766E16B;
	Mon, 17 Aug 2020 10:53:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C8AF6E16B
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 10:53:07 +0000 (UTC)
IronPort-SDR: Ypf5pcB8hLczdUMNfQggydIfBuy5wHMltZXv60KTv3LY9HmC0NXvKQaYJddJmuRudqO854rkUU
 2Bdh+aPHCmeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="152319954"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="152319954"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 03:53:06 -0700
IronPort-SDR: jl8Ca/NxWJ6PxfnkTfFPrDEqzXJWq0nRg04WwPhjSK8FWgO0Sc0HjeI/8DxHI6JYDIL1GTEaHx
 qBe3kSNz6xgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="296449474"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga006.jf.intel.com with ESMTP; 17 Aug 2020 03:53:05 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 17 Aug 2020 16:55:29 +0530
Message-Id: <20200817112529.24478-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v2] drm/i915/display: Add an extra vblank wait before
 fbc activation
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

v2: Add wait only for active crtc

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 2ab32e6532ff..2a9d4796c4a8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1085,10 +1085,13 @@ static void __intel_fbc_post_update(struct intel_crtc *crtc)
 	if (!intel_fbc_can_activate(crtc))
 		return;
 
-	if (!fbc->busy_bits)
+	if (!fbc->busy_bits) {
+		if (IS_TIGERLAKE(dev_priv))
+			intel_wait_for_vblank_if_active(dev_priv, crtc->pipe);
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
