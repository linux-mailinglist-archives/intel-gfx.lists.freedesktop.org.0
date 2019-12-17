Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0742123A7A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 00:05:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A472C6E11E;
	Tue, 17 Dec 2019 23:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DFDA89C85
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 23:05:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 15:05:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="298203166"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by orsmga001.jf.intel.com with ESMTP; 17 Dec 2019 15:05:38 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 15:05:28 -0800
Message-Id: <20191217230529.25092-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191217230529.25092-1-lucas.demarchi@intel.com>
References: <20191217230529.25092-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/3] drm/i915/display: use clk_off name to avoid
 double negation
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

Instead of "ungated" use the same name for the variable as the bitfield,
making it clearer what's the intent of the checks.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9d609c9e9ea1..0986ea239561 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3012,12 +3012,10 @@ static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
 	val = I915_READ(ICL_DPCLKA_CFGCR0);
 	for_each_port_masked(port, port_mask) {
 		enum phy phy = intel_port_to_phy(dev_priv, port);
+		bool ddi_clk_off = val & icl_dpclka_cfgcr0_clk_off(dev_priv,
+								   phy);
 
-		bool ddi_clk_ungated = !(val &
-					 icl_dpclka_cfgcr0_clk_off(dev_priv,
-								   phy));
-
-		if (ddi_clk_needed == ddi_clk_ungated)
+		if (ddi_clk_needed == !ddi_clk_off)
 			continue;
 
 		/*
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
