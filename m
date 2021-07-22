Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5854D3D2AE2
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 19:15:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFAE96E929;
	Thu, 22 Jul 2021 17:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE53A6E929
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 17:15:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10053"; a="233518843"
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="233518843"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 10:15:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,261,1620716400"; d="scan'208";a="433202313"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 10:15:39 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Jul 2021 10:15:35 -0700
Message-Id: <20210722171535.3668848-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: split DISPLAY_VER 9 and 10 in
 intel_setup_outputs()
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
Cc: Jani Nikula <jani.nikula@intel.com>, Christoph Hellwig <hch@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 5a9d38b20a5a ("drm/i915/display: hide workaround for broken vbt
in intel_bios.c") moved the workaround for broken or missing VBT to
intel_bios.c. However is_port_valid() only protects the handling of
different skus of the same display version. Since in
intel_setup_outputs() we share the code path with version 9, this would
also create port F for SKL/KBL, which does not exist.

Missing VBT can be reproduced when starting a headless QEMU with no
opregion available.

Avoid the issue by splitting versions 9 and 10 in intel_setup_outputs(),
which also makes it more clear what code path it's taking for each
version.

Fixes: 5a9d38b20a5a ("drm/i915/display: hide workaround for broken vbt in intel_bios.c")
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c274bfb8e549..44cad63e20fb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11371,6 +11371,13 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_E);
 		intel_ddi_init(dev_priv, PORT_F);
 		icl_dsi_init(dev_priv);
+	} else if (DISPLAY_VER(dev_priv) == 10) {
+		intel_ddi_init(dev_priv, PORT_A);
+		intel_ddi_init(dev_priv, PORT_B);
+		intel_ddi_init(dev_priv, PORT_C);
+		intel_ddi_init(dev_priv, PORT_D);
+		intel_ddi_init(dev_priv, PORT_E);
+		intel_ddi_init(dev_priv, PORT_F);
 	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
@@ -11382,7 +11389,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_C);
 		intel_ddi_init(dev_priv, PORT_D);
 		intel_ddi_init(dev_priv, PORT_E);
-		intel_ddi_init(dev_priv, PORT_F);
 	} else if (HAS_DDI(dev_priv)) {
 		u32 found;
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
