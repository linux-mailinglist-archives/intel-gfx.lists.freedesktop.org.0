Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B3E31ADAA
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 20:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C776E87E;
	Sat, 13 Feb 2021 19:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F1896E170
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 19:05:30 +0000 (UTC)
IronPort-SDR: tLMjNcjPbB7zEc9P6vsOLQAuTRvr7ymllCatDpPpmqCUXErK9QfSd8MDLwm35Hv6QA7KUby3tW
 zMZrbh7ujF3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9894"; a="267387443"
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="267387443"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 11:05:30 -0800
IronPort-SDR: 7/sCLeIDkDrdm98hQBMLJJAppWP5165RQAuWv/r39jc3GpS5G4gK56rXuFTvH0KHGdZUUKADtv
 TO0mrrW2EUcA==
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="423228681"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 11:05:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 13 Feb 2021 11:05:10 -0800
Message-Id: <20210213190511.1017088-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210213190511.1017088-1-lucas.demarchi@intel.com>
References: <20210213190511.1017088-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: remove FIXME comment for
 intended feature
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
index 7aaf7a29d493..c1ec03c726c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11915,15 +11915,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
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
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
