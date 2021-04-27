Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C4536CF3E
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 01:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657B56EA00;
	Tue, 27 Apr 2021 23:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D16A26EA01
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 23:09:54 +0000 (UTC)
IronPort-SDR: oHqgmQQkqLqshHN0jgAzpaGRgYu9WrUZYtfbvea7OdzgB+cEnb55yHtxGOn22+Nl+ZFWvoXElu
 zzMhpSBsWB5A==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="217324846"
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="217324846"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 16:09:52 -0700
IronPort-SDR: RxLn39VlReIhBZ52OJsw08/O2TkKodXYlGuzXfYIwfFx1+Dsxqcx9d65iZF1Ax54Qj4i/KE0OF
 m7+v5R4JCB2g==
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="465663263"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 16:09:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Apr 2021 16:07:54 -0700
Message-Id: <20210427230756.2847495-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210427230756.2847495-1-lucas.demarchi@intel.com>
References: <20210427230756.2847495-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/display: remove FIXME comment
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Direction on gen >= 9 was to stop using straps and rely on VBT
indicating if the port is present or not. Remove FIXME comment since
this will never be "fixed".

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 705f32b2f832..37fe35f6de2c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10879,15 +10879,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		icl_dsi_init(dev_priv);
 	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
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
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
