Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7E322FB85
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 23:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D716E07B;
	Mon, 27 Jul 2020 21:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from hqnvemgate26.nvidia.com (hqnvemgate26.nvidia.com
 [216.228.121.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E40EA89F45;
 Mon, 27 Jul 2020 20:50:34 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5f1f3e0d0001>; Mon, 27 Jul 2020 13:50:21 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 27 Jul 2020 13:50:34 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 27 Jul 2020 13:50:34 -0700
Received: from lenny.nvidia.com (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 27 Jul
 2020 20:50:29 +0000
From: Daniel Dadap <ddadap@nvidia.com>
To: <dri-devel@lists.freedesktop.org>, <lukas@wunner.de>,
 <intel-gfx@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>
Date: Mon, 27 Jul 2020 15:51:12 -0500
Message-ID: <20200727205112.27698-7-ddadap@nvidia.com>
X-Mailer: git-send-email 2.18.4
In-Reply-To: <20200727205112.27698-1-ddadap@nvidia.com>
References: <ba78cd19-45ad-b17e-5174-256cc11f36c2%40nvidia.com>
 <20200727205112.27698-1-ddadap@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1595883021; bh=F/7YLGa7lOJIOpot14G8UyAHptYWSR4x6Lg82bmZ0i0=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 X-Originating-IP:X-ClientProxiedBy:Content-Type;
 b=LbIor99mef0CsNFbjZIxw7elacyTZ6vLx/IaB/ZJWFzcPxlKtjsWIzLPvkBQxtTij
 CsUIra9eSpJnUNqaQbmlzuQjJqwjSanXgZ/MFDiRmaLfIvMiBhSLM+kw/saHCXqWIc
 lfM9vsryjaSEVrhtfEbvY+5yDNy0IU1KGEXWDBipmD0KRJk3E/fNrEICalhEjsF6IJ
 5aWreiLbJy0+oPt21wNrbFnp3qkM6znsIGcB/OZ52P+mv46gmlDCZopBOARRM/gjAZ
 i+dHp0Q3WFUHbPykl2oCfHsUDP0g7yEAoEEW3emWfei2Pv+sWl058aktjlgnbi3kBj
 6KI2+GO+rj1/w==
X-Mailman-Approved-At: Mon, 27 Jul 2020 21:35:38 +0000
Subject: [Intel-gfx] [PATCH 6/6] i915: bail out of eDP link training while
 mux-switched away
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
Cc: Daniel Dadap <ddadap@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It is not possible to train a Displayport link while the lanes are
physically disconnected by a display mux. In order to prevent problems
associated with attempting to train a disconnected link, abort eDP
link training if the i915 GPU is not an active vga-switcheroo client.
This short circuit is eDP-specific, as normal DP (e.g. for external
displays) should be able to detect that the link is not physically
connected, while eDP is usually assumed to be always connected.

Signed-off-by: Daniel Dadap <ddadap@nvidia.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a7defb37ab00..a1c61db8a228 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -24,6 +24,7 @@
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
+#include "linux/vga_switcheroo.h"
 
 static void
 intel_dp_dump_link_status(const u8 link_status[DP_LINK_STATUS_SIZE])
@@ -371,6 +372,14 @@ void
 intel_dp_start_link_train(struct intel_dp *intel_dp)
 {
 	struct intel_connector *intel_connector = intel_dp->attached_connector;
+	struct device *dev = dp_to_dig_port(intel_dp)->base.base.dev->dev;
+
+	if (intel_dp_is_edp(intel_dp) &&
+	    !vga_switcheroo_is_client_active(to_pci_dev(dev))) {
+		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
+			"eDP link training not allowed when muxed away.");
+		return;
+	}
 
 	if (!intel_dp_link_training_clock_recovery(intel_dp))
 		goto failure_handling;
-- 
2.18.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
