Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E89E123A7B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 00:05:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E4FC6E1B1;
	Tue, 17 Dec 2019 23:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 116636E11E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 23:05:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 15:05:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="298203167"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by orsmga001.jf.intel.com with ESMTP; 17 Dec 2019 15:05:38 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 15:05:29 -0800
Message-Id: <20191217230529.25092-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191217230529.25092-1-lucas.demarchi@intel.com>
References: <20191217230529.25092-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] drm/i915/display: fix phy name
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

Pass the correct variable as argument.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0986ea239561..e4486af5dee2 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3026,7 +3026,7 @@ static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
 			continue;
 
 		DRM_NOTE("PHY %c is disabled/in DSI mode with an ungated DDI clock, gate it\n",
-			 phy_name(port));
+			 phy_name(phy));
 		val |= icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
 		I915_WRITE(ICL_DPCLKA_CFGCR0, val);
 	}
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
