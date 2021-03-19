Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1761934236F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 18:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E2C86EA60;
	Fri, 19 Mar 2021 17:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CACFF6E0CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 17:36:34 +0000 (UTC)
IronPort-SDR: r1nJPPe02QSjsaeAOv84ow8Va+leJurcxPbAwxlDbgwtOfhqP4zdq036gKJgC8ax9RcJ1lNAFv
 CELmIdgN4+8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="177522284"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="177522284"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:36:33 -0700
IronPort-SDR: 1qEkmKmPMfviIc8NeAbHD37mP5i3pXyXntdCsZOxmfcgP6L3XeB7yoEsy56AHA7rEnD9kOuRj3
 V2tImKbYGCuA==
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="450943584"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:36:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 10:36:02 -0700
Message-Id: <20210319173603.521779-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210319173603.521779-1-lucas.demarchi@intel.com>
References: <20210319173603.521779-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/display: remove FIXME comment
 for intended feature
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

Direction on gen >= 9 was to stop using straps and rely on VBT
indicating if the port is present or not. Remove FIXME comment since
this will never be "fixed".

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c793cbecfb3b..82471961e721 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11683,15 +11683,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		icl_dsi_init(dev_priv);
 	} else if (IS_GEN9_LP(dev_priv)) {
-		/*
-		 * FIXME: Broxton doesn't support port detection via the
-		 * DDI_BUF_CTL_A or SFUSE_STRAP registers, find another way to
-		 * detect the ports.
-		 */
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
-
 		vlv_dsi_init(dev_priv);
 	} else if (HAS_DDI(dev_priv)) {
 		int found;
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
