Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0BA2D458F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 16:39:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 514FC6EA91;
	Wed,  9 Dec 2020 15:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39EF56EA91
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 15:39:57 +0000 (UTC)
IronPort-SDR: k9YDoYMjEMuZNiiU5Lg6vx+KVAYQx8HrK0R74de7xTz4ePdQGKPsHUYxo0ZkzaImLlS2x3M3iW
 vnLvBzfGNVxA==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="161855490"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="161855490"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 07:39:56 -0800
IronPort-SDR: hYbbZ5dGrNvlb10+3dN1Re60bSNasN2s2/sYwuxddtb7GIX0Oa4jStVbFunRZ50SR6BTNou72u
 mmh0U+oK0KOw==
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="408099326"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 07:39:55 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Dec 2020 17:39:52 +0200
Message-Id: <20201209153952.3397959-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Fix initing the DSI DSC power
 refcount during HW readout
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For an enabled DSC during HW readout the corresponding power reference
is taken along the CRTC power domain references in
get_crtc_power_domains(). Remove the incorrect get ref from the DSI
encoder hook.

Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index a9439b415603..b3533a32f8ba 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1616,10 +1616,6 @@ static void gen11_dsi_get_power_domains(struct intel_encoder *encoder,
 
 	get_dsi_io_power_domains(i915,
 				 enc_to_intel_dsi(encoder));
-
-	if (crtc_state->dsc.compression_enable)
-		intel_display_power_get(i915,
-					intel_dsc_power_domain(crtc_state));
 }
 
 static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
